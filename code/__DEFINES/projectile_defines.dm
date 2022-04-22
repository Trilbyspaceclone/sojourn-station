//Caliber Defines
#define CAL_PISTOL ".35"
#define CAL_35A ".35 auto"
#define CAL_MAGNUM ".40 magnum"
#define CAL_LRIFLE ".257 carbine"
#define CAL_RIFLE "7.5mm rifle"
#define CAL_HRIFLE ".408 heavy rifle"
#define CAL_ANTIM ".60-06 Anti Material"
#define CAL_BALL "30mm rolled shot"
#define CAL_SHOTGUN "Shotgun Shell"
#define CAL_50	".50 kurtz"
#define CAL_70 ".70"
#define CAL_CAP "plastic cap"
#define CAL_ROCKET "rocket propelled grenade"
#define CAL_DART "chemical dart"
#define CAL_SCI "laser casings"
#define CAL_GRENADE "grenade"
#define CAL_FLARE "flare shell"
#define CAL_CROSSBOW "bolt"

//Gun loading types
#define SINGLE_CASING 	1	//The gun only accepts ammo_casings. ammo_magazines should never have this as their mag_type.
#define SPEEDLOADER 	2	//Transfers casings from the mag to the gun when used.
#define MAGAZINE 		4	//The magazine item itself goes inside the gun

#define MAG_WELL_GENERIC	0	//Guns without special magwells
#define MAG_WELL_L_PISTOL	1	//Pistols
#define MAG_WELL_PISTOL		2
#define MAG_WELL_H_PISTOL	4	//High cap Pistols
#define MAG_WELL_SMG		8	//smgs
#define MAG_WELL_RIFLE		16	//7.5mm mags
#define MAG_WELL_STANMAG	32	//.257 standard
#define MAG_WELL_BOX		64	//Lmgs with box mags
#define MAG_WELL_PAN		128	//Lmgs with pan mags
#define MAG_WELL_DART       256 //Dartgun mag
#define MAG_WELL_HRIFLE		512 //.408 rifle mags
#define MAG_WELL_DRUM		1024 //Drum-fed i.e. shotguns
#define MAG_WELL_PULSE		2048 //Mary sue ammo for the pulse rifle

#define MAG_WELL_LSRIFLE		4096 //Mary sue ammo for the laser AK

#define SLOT_BARREL "barrel"
#define SLOT_GRIP "grip"
#define SLOT_TRIGGER "trigger"
#define SLOT_MUZZLE "muzzle"
#define SLOT_SCOPE "scope"
#define SLOT_UNDERBARREL "underbarrel"
#define SLOT_MECHANICS "mechanics"
#define SLOT_MAGWELL "magwell"


//The gun parts
#define PART_HAND          "horrable handmade gun parts"
#define PART_HAND_L        "horrable handmade laser parts"
#define PART_CIV           "cheap civ grade gun parts"
#define PART_CIV_L         "cheap civ grade laser parts"
#define PART_POLICE        "police grade gun parts"
#define PART_POLICE_L      "police grade laser parts"
#define PART_MILSIM        "highend mili grade gun parts"
#define PART_MILSIM_L      "highend mili grade laser parts"
#define PART_SI            "SI gun parts"
#define PART_SI_L          "SI advanced laser parts"
#define PART_CHURCH        "Absolute gunparts"
#define PART_CHURCH_L      "Absolute laser parts"
#define PART_GUILD         "Artificer Guild gunparts"
#define PART_GUILD_L       "Artificer Guild laser parts"
#define PART_GP            "greyson gunparts"
#define PART_GP_L          "greyson laser parts"
#define PART_EXODUS_L      "advanced gunparts"
#define PART_EXODUS_L      "advanced laser parts"