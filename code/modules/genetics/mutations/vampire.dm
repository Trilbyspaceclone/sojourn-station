//Macro: MUTATION_VAMPIRE
/datum/genetics/mutation/vampire
	name = "Genoferous Hematocryptosis Sickness"
	key = "MUTATION_VAMPIRE"
	desc = "A unique engineered gene sequence that exhibits self-cannibalistic properties and results in complexion loss."
	var/mutation = VAMPIRE
	gain_text = "Your skin quickly loses colour, and your tastes become rather regal rich."
	instability = -10 //It stables your genes!
	var/old_skin
	var/new_skin = "#FFFFFF"
	var/old_faction

/datum/genetics/mutation/vampire/onMobImplant()
	..()
	if(ishuman(container))
		var/mob/living/carbon/human/H = container
		old_skin = H.skin_color
		H.change_skin_color(new_skin)
		H.total_nutriment_req += 1
	container.holder.mutations.Add(mutation)
	if(ismob(container))
		var/mob/M = container
		old_faction = M.faction
		M.faction = "scarybat"

/datum/genetics/mutation/vampire/onMobRemove()
	..()
	if(ishuman(container))
		var/mob/living/carbon/human/H = container
		H.change_skin_color(old_skin)
		H.total_nutriment_req += -1
	if(ismob(container))
		var/mob/M = container
		M.faction = old_faction
	container.holder.mutations.Remove(mutation)
