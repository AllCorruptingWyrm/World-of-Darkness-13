/datum/job/vamp/harpy
	title = "Harpy"
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD
	department_head = list("Prince")
	head_announce = list(RADIO_CHANNEL_SUPPLY, RADIO_CHANNEL_SERVICE)
	faction = "Vampire"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the prince"
	selection_color = "#bd3327"
	req_admin_notify = 1
	minimal_player_age = 10
	exp_requirements = 180
	exp_type = EXP_TYPE_CREW
	exp_type_department = EXP_TYPE_NEUTRALS

	outfit = /datum/outfit/job/harpy

	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_COURT, ACCESS_WEAPONS,
						ACCESS_MEDICAL, ACCESS_PSYCHOLOGY, ACCESS_ENGINE, ACCESS_CHANGE_IDS, ACCESS_AI_UPLOAD, ACCESS_EVA, ACCESS_HEADS,
						ACCESS_ALL_PERSONAL_LOCKERS, ACCESS_MAINT_TUNNELS, ACCESS_BAR, ACCESS_JANITOR, ACCESS_CONSTRUCTION, ACCESS_MORGUE,
						ACCESS_CREMATORIUM, ACCESS_KITCHEN, ACCESS_CARGO, ACCESS_MAILSORTING, ACCESS_QM, ACCESS_HYDROPONICS, ACCESS_LAWYER,
						ACCESS_THEATRE, ACCESS_CHAPEL_OFFICE, ACCESS_LIBRARY, ACCESS_RESEARCH, ACCESS_MINING, ACCESS_VAULT, ACCESS_MINING_STATION,
						ACCESS_MECH_MINING, ACCESS_MECH_ENGINE, ACCESS_MECH_SCIENCE, ACCESS_MECH_SECURITY, ACCESS_MECH_MEDICAL,
						ACCESS_HOP, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_GATEWAY, ACCESS_MINERAL_STOREROOM, ACCESS_AUX_BASE, ACCESS_TELEPORTER)
	minimal_access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_COURT, ACCESS_WEAPONS,
						ACCESS_MEDICAL, ACCESS_PSYCHOLOGY, ACCESS_ENGINE, ACCESS_CHANGE_IDS, ACCESS_AI_UPLOAD, ACCESS_EVA, ACCESS_HEADS,
						ACCESS_ALL_PERSONAL_LOCKERS, ACCESS_MAINT_TUNNELS, ACCESS_BAR, ACCESS_JANITOR, ACCESS_CONSTRUCTION, ACCESS_MORGUE,
						ACCESS_CREMATORIUM, ACCESS_KITCHEN, ACCESS_CARGO, ACCESS_MAILSORTING, ACCESS_QM, ACCESS_HYDROPONICS, ACCESS_LAWYER,
						ACCESS_MECH_MINING, ACCESS_MECH_ENGINE, ACCESS_MECH_SCIENCE, ACCESS_MECH_SECURITY, ACCESS_MECH_MEDICAL,
						ACCESS_THEATRE, ACCESS_CHAPEL_OFFICE, ACCESS_LIBRARY, ACCESS_RESEARCH, ACCESS_MINING, ACCESS_VAULT, ACCESS_MINING_STATION,
						ACCESS_HOP, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_GATEWAY, ACCESS_MINERAL_STOREROOM, ACCESS_AUX_BASE, ACCESS_TELEPORTER)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SRV
	bounty_types = CIV_JOB_RANDOM

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_HARPY

//	minimal_generation = 12	//Uncomment when players get exp enough
	minimal_masquerade = 5

	my_contact_is_important = TRUE
	known_contacts = list("Prince","Sheriff","Tremere Regent","Dealer","Reeve","Emissary","Baron","Primogens")

	v_duty = "You are an expert on the nightlife of Cainite society. Acting as the chief advisor on all things related to boons and diplomacy, the Prince defers quite the amount of judgement to you. Don't squander it."
	experience_addition = 15
	allowed_bloodlines = list("Daughters of Cacophony", "True Brujah", "Brujah", "Tremere", "Ventrue", "Nosferatu", "Gangrel", "Toreador", "Malkavian", "Banu Haqim", "Giovanni", "Ministry", "Lasombra", "Gargoyle", "Kiasyd")

/datum/outfit/job/harpy
	name = "Harpy"
	jobtype = /datum/job/vamp/harpy

	ears = /obj/item/p25radio
	id = /obj/item/card/id/clerk
	uniform = /obj/item/clothing/under/vampire/clerk
	shoes = /obj/item/clothing/shoes/vampire/brown
//	head = /obj/item/clothing/head/hopcap
	l_pocket = /obj/item/vamp/phone/harpy
	r_pocket = /obj/item/vamp/keys/clerk
	backpack_contents = list(/obj/item/passport=1, /obj/item/phone_book=1, /obj/item/radio=1, /obj/item/cockclock=1, /obj/item/flashlight=1, /obj/item/vamp/creditcard/seneschal=1)

/datum/outfit/job/harpy/pre_equip(mob/living/carbon/human/H)
	..()
	H.vampire_faction = "Camarilla"
	if(H.gender == FEMALE)
		uniform = /obj/item/clothing/under/vampire/clerk/female
		shoes = /obj/item/clothing/shoes/vampire/heels

/obj/effect/landmark/start/harpy
	name = "Harpy"
	icon_state = "Clerk"
