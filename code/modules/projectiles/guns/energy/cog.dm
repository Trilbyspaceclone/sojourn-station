/obj/item/gun/energy/cog
	name = "\"Cog\" lasgun"
	icon = 'icons/obj/guns/energy/cog.dmi'
	icon_state = "cog"
	item_state = null	//so the human update icon uses the icon_state instead.
	item_charge_meter = TRUE
	desc = "A Greyson Positronic design, cheap and widely produced. In the distant past - this was the main weapon of low-rank police forces, billions of copies of this gun were made. They are ubiquitous."
	fire_sound = 'sound/weapons/Laser.ogg'
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_BULKY
	matter = list(MATERIAL_STEEL = 10, MATERIAL_PLASTIC = 15, MATERIAL_GLASS = 5)
	projectile_type = /obj/item/projectile/beam
	fire_delay = 10 //old technology
	charge_cost = 50
	price_tag = 900
	gun_tags = list(GUN_LASER, GUN_ENERGY, GUN_SCOPE)
	init_firemodes = list(
		WEAPON_NORMAL,
		BURST_2_ROUND
	)
	twohanded = TRUE
	serial_type = "GP"
	gun_part_list = list(PART_GP_L = 1)

/obj/item/gun/energy/cog/gear
	name = "\"Gear\" lasgun"
	desc = "A Greyson Positronic design, cheap and widely produced. In the distant past - this was the main weapon of low-rank police forces, billions of copies of this gun were made. They are ubiquitous. \
	This model has been modified by the Marshals to allow for non-lethal electrodes to be discharged as well as lasers, but at the cost of its cell-usage effifency."
	fire_delay = 15
	projectile_type = /obj/item/projectile/beam/stun
	init_firemodes = list(
		list(mode_name="stun", mode_desc="fires a concentrated stun beam", projectile_type=/obj/item/projectile/beam/stun, charge_cost = 50, icon="stun", fire_sound='sound/weapons/Taser3.ogg'),
		list(mode_name="lethal", mode_desc="fires a concentrated laser blast", projectile_type=/obj/item/projectile/beam, charge_cost = 50, icon="kill", fire_sound='sound/weapons/Laser4.ogg')
	)
	serial_type = "GP"
	gun_part_list = list(PART_POLICE_L = 1, PART_GP_L = 1)
