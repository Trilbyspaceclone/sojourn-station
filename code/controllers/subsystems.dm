
/datum/controller/subsystem
	// Metadata; you should define these.
	name = "fire coderbus"              //name of the subsystem
	var/init_order = INIT_ORDER_DEFAULT //order of initialization. Higher numbers are initialized first, lower numbers later. Use defines in __DEFINES/subsystems.dm for easy understanding of order.
	var/wait = 20                       //time to wait (in deciseconds) between each call to fire(). Must be a positive integer.
	var/priority = SS_PRIORITY_DEFAULT  //When mutiple subsystems need to run in the same tick, higher priority subsystems will run first and be given a higher share of the tick before MC_TICK_CHECK triggers a sleep

	var/flags = 0                       //see MC.dm in __DEFINES Most flags must be set on world start to take full effect. (You can also restart the mc to force them to process again)

	var/initialized = FALSE	//set to TRUE after it has been initialized, will obviously never be set if the subsystem doesn't initialize

	//set to 0 to prevent fire() calls, mostly for admin use or subsystems that may be resumed later
	//	use the SS_NO_FIRE flag instead for systems that never fire to keep it from even being added to the list
	var/can_fire = TRUE

	// Bookkeeping variables; probably shouldn't mess with these.
	var/last_fire = 0		//last world.time we called fire()
	var/next_fire = 0		//scheduled world.time for next fire()
	var/cost = 0			//average time to execute
	var/tick_usage = 0		//average tick usage
	var/tick_overrun = 0	//average tick overrun
	var/state = SS_IDLE		//tracks the current state of the ss, running, paused, etc.
	var/paused_ticks = 0	//ticks this ss is taking to run right now.
	var/paused_tick_usage	//total tick_usage of all of our runs while pausing this run
	var/ticks = 1			//how many ticks does this ss take to run on avg.
	var/times_fired = 0		//number of times we have called fire()
	var/queued_time = 0		//time we entered the queue, (for timing and priority reasons)
	var/queued_priority 	//we keep a running total to make the math easier, if priority changes mid-fire that would break our running total, so we store it here

	var/runlevels = RUNLEVELS_DEFAULT	//points of the game at which the SS can fire

	var/static/list/failure_strikes //How many times we suspect a subsystem type has crashed the MC, 3 strikes and you're out!

//Do not override
//datum/controller/subsystem/New()
//	return

// Used to initialize the subsystem BEFORE the map has loaded
// Called AFTER Recover if that is called
// Prefer to use Initialize if possible
/datum/controller/subsystem/proc/PreInit()
	return

//This is used so the mc knows when the subsystem sleeps. do not override.
/datum/controller/subsystem/proc/ignite(resumed = 0)
	set waitfor = 0
	. = SS_SLEEPING
	fire(resumed)
	. = state
	switch(state)
		if (SS_SLEEPING)
			state = SS_IDLE
		if (SS_PAUSING)
			var/QT = queued_time
			enqueue()
			state = SS_PAUSED
			queued_time = QT

//previously, this would have been named 'process()' but that name is used everywhere for different things!
//fire() seems more suitable. This is the procedure that gets called every 'wait' deciseconds.
//Sleeping in here prevents future fires until returned.
/datum/controller/subsystem/proc/fire(resumed = 0)
	flags |= SS_NO_FIRE
	throw EXCEPTION("Subsystem [src]([type]) does not fire() but did not set the SS_NO_FIRE flag. Please add the SS_NO_FIRE flag to any subsystem that doesn't fire so it doesn't get added to the processing list and waste cpu.")

/datum/controller/subsystem/Destroy()
	dequeue()
	can_fire = 0
	flags |= SS_NO_FIRE
	Master.subsystems -= src

	return ..()

//Queue it to run.
/datum/controller/subsystem/proc/enqueue()
	var/SS_priority = priority
	var/SS_flags = flags
	var/datum/controller/subsystem/queue_node
	var/queue_node_priority
	var/queue_node_flags

	var/i

	for(i = 1; i <= Master.queue.len; i++)
		queue_node = Master.queue[i]
		queue_node_priority = queue_node.queued_priority
		queue_node_flags = queue_node.flags

		if (queue_node_flags & SS_TICKER)
			if (!(SS_flags & SS_TICKER))
				continue
			if (queue_node_priority < SS_priority)
				break

		else if (queue_node_flags & SS_BACKGROUND)
			if (!(SS_flags & SS_BACKGROUND))
				break
			if (queue_node_priority < SS_priority)
				break

		else
			if (SS_flags & SS_BACKGROUND)
				continue
			if (SS_flags & SS_TICKER)
				break
			if (queue_node_priority < SS_priority)
				break

	queued_time = world.time
	queued_priority = SS_priority
	state = SS_QUEUED
	if (SS_flags & SS_BACKGROUND) //update our running total
		Master.queue_priority_count_bg += SS_priority
	else
		Master.queue_priority_count += SS_priority

	Master.queue.Insert(i, src)


/datum/controller/subsystem/proc/dequeue()
	Master.queue.Remove(src)
	queued_time = 0
	if (state == SS_QUEUED)
		state = SS_IDLE


/datum/controller/subsystem/proc/pause()
	. = 1
	switch(state)
		if(SS_RUNNING)
			state = SS_PAUSED
		if(SS_SLEEPING)
			state = SS_PAUSING


//used to initialize the subsystem AFTER the map has loaded
/datum/controller/subsystem/Initialize(start_timeofday)
	initialized = TRUE
	var/time = (REALTIMEOFDAY - start_timeofday) / 10
	var/msg = "Initialized [name] subsystem within [time] second[time == 1 ? "" : "s"]!"
	to_chat(world, "<span class='boldannounce'>[msg]</span>")
	log_world(msg)
	return time

//hook for printing stats to the "MC" statuspanel for admins to see performance and related stats etc.
/datum/controller/subsystem/stat_entry(msg)
	if(!statclick)
		statclick = new/obj/effect/statclick/debug(null, "Initializing...", src)



	if(can_fire && !(SS_NO_FIRE in flags))
		msg = "[round(cost,1)]ms|[round(tick_usage,1)]%([round(tick_overrun,1)]%)|[round(ticks,0.1)]\t[msg]"
	else
		msg = "OFFLINE\t[msg]"

	var/title = name
	if (can_fire)
		title = "\[[state_letter()]][title]"

	stat(title, statclick.update(msg))

/datum/controller/subsystem/proc/state_letter()
	switch (state)
		if (SS_RUNNING)
			. = "R"
		if (SS_QUEUED)
			. = "Q"
		if (SS_PAUSED, SS_PAUSING)
			. = "P"
		if (SS_SLEEPING)
			. = "S"
		if (SS_IDLE)
			. = "  "

//could be used to postpone a costly subsystem for (default one) var/cycles, cycles
//for instance, during cpu intensive operations like explosions
/datum/controller/subsystem/proc/postpone(cycles = 1)
	if(next_fire - world.time < wait)
		next_fire += (wait*cycles)

//usually called via datum/controller/subsystem/New() when replacing a subsystem (i.e. due to a recurring crash)
//should attempt to salvage what it can from the old instance of subsystem
/datum/controller/subsystem/Recover()

/*
/decl/vv_set_handler/subsystem_handler
	handled_type = /datum/controller/subsystem
	handled_vars = list("can_fire")
	predicates = list(/proc/is_num_predicate)

/decl/vv_set_handler/subsystem_handler/handle_set_var(var/datum/controller/subsystem/SS, variable, var_value, client)
	var_value = !!var_value
	if (var_value)
		SS.next_fire = world.time + SS.wait
	SS.can_fire = var_value
*/

// Suspends this subsystem from being queued for running.  If already in the queue, sleeps until idle. Returns FALSE if the subsystem was already suspended.
/datum/controller/subsystem/proc/suspend()
	. = (can_fire > 0) // Return true if we were previously runnable, false if previously suspended.
	can_fire = FALSE
	// Safely sleep in a loop until the subsystem is idle, (or its been un-suspended somehow)
	while(can_fire <= 0 && state != SS_IDLE)
		stoplag() // Safely sleep in a loop until

// Wakes a suspended subsystem.
/datum/controller/subsystem/proc/wake()
	can_fire = TRUE