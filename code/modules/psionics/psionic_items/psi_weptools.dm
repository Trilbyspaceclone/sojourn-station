//////////////////////////////
//			Psionic Melee Weapons
//////////////////////////////
/obj/item/tool/sword/cult
	name = "non-euclidean blade"
	desc = "A blade forged from the mind of a psion using an oddity. An odd but deadly sword, yet holding it makes you feel... strange."
	icon = 'icons/obj/psionic/occsword.dmi'
	icon_state = "non-euclidian_blade"

	origin_tech = list()
	matter = list()
	sharp = FALSE
	edge = FALSE
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT | SLOT_BACK
	worksound = WORKSOUND_HARD_SLASH
	force = WEAPON_FORCE_DANGEROUS
	throwforce = WEAPON_FORCE_DANGEROUS
	tool_qualities = list(QUALITY_PULSING = 7, QUALITY_SCREW_DRIVING = 3)


/obj/item/tool/sword/cult/deepmaints
	name = "deepblue blade"
	desc = "What looks like a psionic foraged blade but much more then that, form every angle its dark glaze reflects back light as if the whole thing is as sharp as the edge. The whole thing feels as hot as a soldering iron."
	sharp = TRUE
	edge = TRUE
	force = WEAPON_FORCE_ROBUST
	throwforce = WEAPON_FORCE_ROBUST
	damtype = BURN
	tool_qualities = list(QUALITY_PULSING = 10, QUALITY_SCREW_DRIVING = 5)

/obj/item/tool/hammer/homewrecker/cult
	name = "soulcrusher"
	desc = "An extremely heavy sledgehammer that looks like twisted forged iron still glowing with the remnants of the psionic power that shaped it. The head of it burns with a subtle heat, the core \
	filled with the fires of ambition to create and destroy."
	icon = 'icons/obj/psionic/occhammer.dmi'
	icon_state = "soulcrusher"
	wielded_icon = "soulcrusher_wielded"
	structure_damage_factor = STRUCTURE_DAMAGE_HEAVY
	force_unwielded = WEAPON_FORCE_ROBUST
	slot_flags = SLOT_BELT|SLOT_BACK
	tool_qualities = list(QUALITY_SHOVELING = 1, QUALITY_DIGGING = 1, QUALITY_HAMMERING = 50, QUALITY_WELDING = 21)
	origin_tech = list()
	matter = list()

/obj/item/tool/hammer/homewrecker/cult/deepmaints
	name = "mindcrusher"
	desc = "What looks like a sledgehammer but at the feel of its weight shows that its more of a brander that has a heavy head. This psionic weapon is both of hammering and burning."
	damtype = BURN
	structure_damage_factor = STRUCTURE_DAMAGE_HEAVY
	force_unwielded = WEAPON_FORCE_BRUTAL
	slot_flags = SLOT_BELT|SLOT_BACK
	tool_qualities = list(QUALITY_SHOVELING = 5, QUALITY_DIGGING = 5, QUALITY_HAMMERING = 60, QUALITY_WELDING = 25)

/obj/item/tool/saw/chain/cult
	name = "chainripper"
	desc = "A chainsaw forged from the mind of a psion, the blades glowing with the energy and heat of its psychic power. Though a saw, it cuts cleanly and leaves charring in its wake."
	icon = 'icons/obj/psionic/occchain.dmi'
	icon_state = "chainripper"
	force = WEAPON_FORCE_DANGEROUS
	origin_tech = list()
	matter = list()
	tool_qualities = list(QUALITY_LASER_CUTTING = 42, QUALITY_SAWING = 23, QUALITY_CLAMPING = 6, QUALITY_CAUTERIZING = 8, QUALITY_RETRACTING = 22, QUALITY_BONE_SETTING = 19) //It's a surgical chainsaw
	max_fuel = 123

/obj/item/tool/saw/chain/cult/deepmaints
	name = "mindripper"
	desc = "What looks to be a chainsaw form someone that only has seen the horror movies verson of them. This ones teeth rather then being hard glow with psychic power leaving burns."
	icon = 'icons/obj/psionic/occchain.dmi'
	icon_state = "chainripper"
	force = WEAPON_FORCE_BRUTAL
	damtype = BURN
	tool_qualities = list(QUALITY_LASER_CUTTING = 50, QUALITY_SAWING = 45, QUALITY_CLAMPING = 10, QUALITY_CAUTERIZING = 10, QUALITY_RETRACTING = 25, QUALITY_BONE_SETTING = 20) //It's a surgical chainsaw
	max_fuel = 246

/obj/item/tool/sword/machete/cult
	name = "scorch sword"
	desc = "A blade quite common in the jungle crafted from the mind of a psion using an oddity. When you hold it, the blade's edge glows with heat."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "psi_machete"
	item_state = "psi_machete"
	origin_tech = list()
	matter = list()
	tool_qualities = list(QUALITY_LASER_CUTTING = 21, QUALITY_CUTTING = 10,  QUALITY_SAWING = 20, QUALITY_CAUTERIZING = 12) //So we can cut down trees

/obj/item/tool/sword/machete/cult/deepmaints
	name = "scorching machete"
	desc = "A long metal machete made of pure black psionic enegery, just looking at it can tell just how hot the blade is."
	damtype = BURN
	force = WEAPON_FORCE_BRUTAL
	tool_qualities = list(QUALITY_LASER_CUTTING = 25, QUALITY_CUTTING = 15,  QUALITY_SAWING = 25, QUALITY_CAUTERIZING = 15) //So we can cut down trees

/obj/item/tool/sword/cleaver/cult
	name = "moon cleaver"
	desc = "A black bladed mockery of the lodge's tools for hunting tengolos and their twisted evolution. This weapon, forged from a psion, hunts what few consider anything but archetypes \
	of primal fears. Fit for the culling of spiders."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "psi_cleaver"
	item_state = "psi_cleaver"
	tool_qualities = list(QUALITY_SAWING = 3, QUALITY_CLAMPING = 6, QUALITY_CAUTERIZING = 8, QUALITY_RETRACTING = 2, QUALITY_BONE_SETTING = 12)
	effective_faction = list("spider") // Which faction the cleaver is effective against.
	origin_tech = list()
	matter = list()

/obj/item/tool/sword/cleaver/cult/deepmaints
	name = "solar eclipse" //Easiest name ever
	desc = "A weapon found in deepmaints but by all metrics is designed against the monsters inside it, dealing much more harm to psion based monsters as if its.\
	Looking at the blades edge its safe to say its dull to skin, but a toxin to the mind..."
	tool_qualities = list(QUALITY_SAWING = 5, QUALITY_CLAMPING = 10, QUALITY_CAUTERIZING = 20, QUALITY_RETRACTING = 10, QUALITY_BONE_SETTING = 15)
	effective_faction = list("psi_monster") // Which faction the cleaver is effective against.
	damtype = TOX

/obj/item/tool/power_fist/cult
	name = "mind rocker"
	desc = "A hydraulic combat gauntlet forged from the mind of a psion. When all else fails, you still have your fists."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "psi_powerfist"
	item_state = "psi_powerfist"
	origin_tech = list()
	matter = list()
	switched_on_qualities = list(QUALITY_HAMMERING = 13, QUALITY_SHOVELING = 13, QUALITY_DIGGING = 13)
	switched_off_qualities = list(QUALITY_HAMMERING = 3, QUALITY_SHOVELING = 3, QUALITY_DIGGING = 3)

/obj/item/tool/power_fist/cult/deepmaints
	name = "mind repeater"
	desc = "Fitting any hand perfectly this gauntlet makes you able to attack twice as fast with the burning dark leathers."
	damtype = BURN
	switched_on_qualities = list(QUALITY_HAMMERING = 15, QUALITY_SHOVELING = 15, QUALITY_DIGGING = 15)
	switched_off_qualities = list(QUALITY_HAMMERING = 5, QUALITY_SHOVELING = 5, QUALITY_DIGGING = 5)

/obj/item/tool/power_fist/cult/deepmaints/attack()
	..()
	usr.setClickCooldown(DEFAULT_QUICK_COOLDOWN)

//////////////////////////////
//			Psionic Firearms
//////////////////////////////
/obj/item/gun/projectile/automatic/sts/rifle/cult
	name = "\"Eclipse\" psi-rifle"
	desc = "An STS conjured from the minds of a psion who shaped an oddity into a weapon. It is nearly identical to a normal STS-30 battle rifle, save for lacking as much penetration or stopping power."
	icon = 'icons/obj/psionic/occgun.dmi'
	icon_state = "eclipse"
	origin_tech = list()
	matter = list()
	price_tag = 0
	damage_multiplier = 0.9
	penetration_multiplier = 0.9
	serial_shown = FALSE

/obj/item/gun/projectile/automatic/sts/rifle/cult/deepmaints
	name = "\"Aster\" psi-rifle"
	desc = "A rather perfect copy of a STS-30 made form the pure willpower or desperation of surival."
	damage_multiplier = 1
	penetration_multiplier = 1

/obj/item/gun/energy/laser/cult
	name = "\"Moonrise\" psi-laser rifle"
	desc = "Radiant and deadly, a weapon forged from the mind of a psion who shaped an oddity into a weapon. Perhaps the twisted reimagination of the zealotry often attributed to the local cult. \
	Was it a joke, an insult, or a yearning for something lost? Whatever the case, this weapon is slightly less deadly than the one it mocks."
	icon = 'icons/obj/psionic/occvalk.dmi'
	icon_state = "moonrise"
	origin_tech = list()
	matter = list()
	damage_multiplier = 0.9
	penetration_multiplier = 0.9
	price_tag = 0
	serial_shown = FALSE

/obj/item/gun/energy/laser/cult/deepmaints
	name = "\"Moonset\" psi-laser rifle"
	desc = "A perfected copy of the Lightfal laser rifle but seems to only be that as a shell for what ever makes this laser gun fire is pure willpower of the person that foraged it with their mind rather then any compoents inside."
	damage_multiplier = 1
	penetration_multiplier = 1
	projectile_color = "#BF40BF"

/obj/item/gun/energy/plasma/cassad/cult
	name = "\"Black Sun\" psi-plasma rifle"
	desc = "A plasma weapon formed from the mind of a psion who shaped an oddity into a weapon. A psychic copy of the cassad, a widely known weapon for being one of the few examples of plasma tech \
	outside the Soteria or Church. Perhaps its popularity is what imprinted it in the memory of the psion that made it?"
	icon = 'icons/obj/psionic/occcassad.dmi'
	icon_state = "manumission"
	origin_tech = list()
	matter = list()
	price_tag = 0
	charge_cost = 50
	fire_sound = 'sound/weapons/pulse.ogg'
	damage_multiplier = 0.9
	penetration_multiplier = 0.9
	init_firemodes = list(
		list(mode_name="rapid fire", projectile_type=/obj/item/projectile/plasma/light, fire_sound='sound/weapons/Taser.ogg', fire_delay=8, icon="stun", projectile_color = "#8d25cc"),
		list(mode_name="armor penetrating", projectile_type=/obj/item/projectile/plasma, fire_sound='sound/weapons/Laser.ogg', fire_delay=12, icon="kill", projectile_color = "#461266"),
	)
	serial_shown = FALSE

/obj/item/gun/energy/plasma/cassad/cult/deepmaints
	name = "\"Blue Moon\" psi-plasma rifle"
	desc = "A cassad sytle plasma rifle ready to take on any battle, this one crafted out of the mind of a brute has more uniquic ways of holding a cells charge only known to the person that had through of it."
	charge_cost = 25
	damage_multiplier = 1
	penetration_multiplier = 1

/obj/item/gun/energy/gun/martin/cult
	name = "\"Star\" psi-laser pistol"
	desc = "A laser weapon formed from the mind of a psion who shaped an oddity into a weapon. A psionic copy of a martin, an oft overlooked and ignored weapon. Perhaps this is formed from the \
	small thoughts that make all the difference?"
	icon = 'icons/obj/guns/energy/psi_pdw.dmi'
	origin_tech = list()
	matter = list()
	price_tag = 0
	serial_shown = FALSE

/obj/item/gun/energy/gun/martin/cult/deepmaints
	name = "\"Blue Star\" psi-laser pistol"
	desc = "A martin made of the mind of someone wishing to have a real fire arm, weather this was out of depserating or day dreaming is unknown, but it does seem to have failed who ever made it..."
	icon = 'icons/obj/guns/energy/psi_pdw.dmi'
	charge_cost = 25
	damage_multiplier = 1.1
	penetration_multiplier = 1.1

/obj/item/gun/energy/plasma/auretian/cult
	name = "\"Meteoroid\" psi-energy pistol"
	desc = "An energy weapon forged from the mind of a psion who shaped an oddity into a weapon. The iconic auretian is a weapon that the Soteria employs often and frequently among its staff, \
	yet this copy isn't anywhere near what machine lathes can produce. Is it a cheap imitation? A copy of what yearned to be greater? Perhaps it is but flattery."
	icon = 'icons/obj/guns/energy/psi_brigador.dmi'
	icon_state = "brigador"
	origin_tech = list()
	matter = list()
	price_tag = 0
	damage_multiplier = 0.8
	penetration_multiplier = 0.8
	serial_shown = FALSE

/obj/item/gun/energy/plasma/auretian/cult/deepmaints
	name = "\"Tektite\" psi-energy pistol"
	desc = "A engery sytled handgun made with the mind of someone looking to improve just about everything about it. Weather they meant to or not they made a perfect copy of the SI Auretian."
	icon = 'icons/obj/guns/energy/psi_brigador.dmi'
	icon_state = "brigador"
	origin_tech = list()
	matter = list()
	price_tag = 0
	damage_multiplier = 1
	penetration_multiplier = 1
	serial_shown = FALSE

/obj/item/gun/projectile/automatic/greasegun/cult
	name = "\"Super Nova\" psi-submachine gun"
	desc = "A ballistic weapon forged from the mind of a psion who shaped an oddity into a weapon. One wonders how and why this weapon came to be. Perhaps that is the point?"
	icon = 'icons/obj/guns/projectile/greasegun_psi.dmi'
	origin_tech = list()
	matter = list()
	price_tag = 0
	damage_multiplier = 0.9
	penetration_multiplier = 1
	serial_shown = FALSE

/obj/item/gun/projectile/automatic/greasegun/cult/deepmaints
	name = "\"Star Pepper\" psi-submachine gun"
	desc = "A grease gun copy with the mind of spray and pray to hope you kill what ever threat happens to be around you."
	icon = 'icons/obj/guns/projectile/greasegun_psi.dmi'
	damage_multiplier = 1
	penetration_multiplier = 1.2

//////////////////////////////
//			Psionic Tools
//////////////////////////////

/obj/item/tool/multitool/advanced/cult
	name = "synapse reader"
	desc = "A strange device shaped by a psion for an unknown purpose. Curiosity is the core of humanity, to delve into secrets is the desire of many, even if said secrets are better left forgotten."
	icon_state = "psitool"
	tool_qualities = list(QUALITY_PULSING = 42, QUALITY_CAUTERIZING = 22, QUALITY_RETRACTING = 18)
	matter = list()
	origin_tech = list()
	price_tag = 0
	use_power_cost = 0.50
	workspeed = 1.2
	max_upgrades = 4
	suitable_cell = /obj/item/cell/medium

/obj/item/tool/multitool/advanced/cult/deepmaints
	name = "multi-mind"
	desc = "A multitool made up by someone that wanted to link their mind to whatever they were debugging. It works shockingly well even if it cant connect you to the cyberspace."
	icon_state = "psitool"
	tool_qualities = list(QUALITY_PULSING = 45, QUALITY_CAUTERIZING = 30, QUALITY_RETRACTING = 20)
	matter = list()
	origin_tech = list()
	price_tag = 0
	use_power_cost = 0.25
	workspeed = 1.3
	max_upgrades = 4

/obj/item/tool/shovel/power/cult
	name = "pit delver"
	desc = "A tool made from the mind of a psion using an oddity. Do you not fear what lies beneath? Or is what you think you'll gain worth it?"
	icon_state = "psipowershovel"
	item_state = "shovel"
	matter = list()
	origin_tech = list()
	price_tag = 0
	tool_qualities = list(QUALITY_SHOVELING = 53, QUALITY_DIGGING = 42, QUALITY_EXCAVATION = 34, QUALITY_HAMMERING = 6)

/obj/item/tool/shovel/power/cult/deepmaints
	name = "hollow labour"
	desc = "A tool made form lacking thoughts well doing the labourest tasks of digging."
	tool_qualities = list(QUALITY_SHOVELING = 60, QUALITY_DIGGING = 50, QUALITY_EXCAVATION = 70, QUALITY_HAMMERING = 10)

/obj/item/tool/screwdriver/combi_driver/cult
	name = "rotary spanner"
	desc = "A tool crafted from the thoughts of a psion after shaping an oddity. A mind is an adapative thing, so why wouldn't it make an adaptive tool?"
	icon_state = "psi_driver"
	matter = list()
	origin_tech = list()
	price_tag = 0
	tool_qualities = list(QUALITY_SCREW_DRIVING = 42, QUALITY_BOLT_TURNING = 42, QUALITY_DRILLING = 36, QUALITY_RETRACTING = 22)

/obj/item/tool/screwdriver/combi_driver/cult/deepmaints
	name = "mind-driver"
	desc = "A crafted screwdriver and wrench combo made form thoughts of one that could make you able to turn even the most rusted and stripped screw or the most rounded bolt"
	icon_state = "psi_driver"
	tool_qualities = list(QUALITY_SCREW_DRIVING = 70, QUALITY_BOLT_TURNING = 70, QUALITY_DRILLING = 60, QUALITY_RETRACTING = 25)

/obj/item/tool/weldingtool/advanced/cult
	name = "thought scorcher"
	desc = "A tool crafted from the thoughts of a psion after shaping an oddity. What is our ire, if not the embers of our thoughts left to burn?"
	icon_state = "psi_welder"
	item_state = "psi_welder"
	glow_color = COLOR_PURPLE
	switched_on_qualities = list(QUALITY_WELDING = 42, QUALITY_CAUTERIZING = 24, QUALITY_WIRE_CUTTING = 12, QUALITY_PULSING = 7, QUALITY_SCREW_DRIVING = 3)
	max_fuel = 29
	matter = list()
	origin_tech = list()
	price_tag = 0

/obj/item/tool/weldingtool/advanced/cult/deepmaints
	name = "mind candle"
	desc = "A welder that has exspanded tanks for deep thinking, and fuel. Its stable light and flickering flame makes it easy to forget just how hot this thing is. Staring into the flame for some reason well it welds is calming."
	switched_on_qualities = list(QUALITY_WELDING = 45, QUALITY_CAUTERIZING = 25, QUALITY_WIRE_CUTTING = 15, QUALITY_PULSING = 10, QUALITY_SCREW_DRIVING = 5)
	max_fuel = 80
	sparks_on_use = FALSE
	eye_hazard = FALSE

/obj/item/tool/shovel/combat/cult
	name = "cognitive pry-cutter"
	desc = "A tool forged from the mind of a psion using an oddity. We use tools. We cut. We dig. We pry. What is it we hope to find?"
	icon_state = "crovel"
	matter = list()
	origin_tech = list()
	price_tag = 0
	tool_qualities = list(QUALITY_SHOVELING = 37, QUALITY_DIGGING = 40, QUALITY_PRYING = 37, QUALITY_HAMMERING = 13, QUALITY_CUTTING = 7, QUALITY_SAWING = 3)
	workspeed = 1.15

/obj/item/tool/shovel/combat/cult/deepmaints
	name = "mental digger"
	desc = "A shovel, a crowbar and a saw. Ready to cut into anyones mind eather mentaly or physically."
	icon_state = "crovel"
	tool_qualities = list(QUALITY_SHOVELING = 40, QUALITY_DIGGING = 50, QUALITY_PRYING = 40, QUALITY_HAMMERING = 15, QUALITY_CUTTING = 15, QUALITY_SAWING = 15)
	workspeed = 1.35

/obj/item/tool/wrench/big_wrench/cult
	name = "twist cutter"
	desc = "A tool crafted from the mind of a psion using an oddity. Cut things loose, bolt them together, will it make a difference?"
	icon_state = "psi_wrench"
	tool_qualities = list(QUALITY_BOLT_TURNING = 42, QUALITY_HAMMERING = 37, QUALITY_WIRE_CUTTING = 34)
	matter = list()
	origin_tech = list()
	price_tag = 0

/obj/item/tool/wrench/big_wrench/cult/deepmaints
	name = "thought spanner"
	desc = "A large wrench with sharp teeth for cutting wires and bolting large plates together. Its weight is of someone trying to get a project done in time."
	tool_qualities = list(QUALITY_BOLT_TURNING = 60, QUALITY_HAMMERING = 60, QUALITY_WIRE_CUTTING = 20)

