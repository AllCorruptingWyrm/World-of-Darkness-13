
/datum/job/vamp/bruiser
	title = "Anarch Member"
	department_head = list("Baron")
	faction = "Vampire"
	total_positions = 7
	spawn_positions = 7
	supervisors = "the Baron"
	selection_color = "#434343"

	outfit = /datum/outfit/job/bruiser

	access = list(ACCESS_LAWYER, ACCESS_COURT, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_LAWYER, ACCESS_COURT, ACCESS_SEC_DOORS)
	paycheck = PAYCHECK_EASY
	paycheck_department = ACCOUNT_SRV

	mind_traits = list(TRAIT_DONUT_LOVER)
	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_BRUISER
	known_contacts = list("Baron")
	allowed_bloodlines = list("Daughters of Cacophony", "True Brujah", "Brujah", "Nosferatu", "Gangrel", "Toreador", "Tremere", "Malkavian", "Banu Haqim", "Tzimisce", "Caitiff", "Ventrue", "Lasombra", "Gargoyle", "Kiasyd", "Cappadocian", "Ministry")

	v_duty = "You are a member of the Anarch Free State. You listen to the undisputed Baron of the city and the Emissary as their second in command. You ensure the traditions are maintained - The Anarch way."
	minimal_masquerade = 2
	experience_addition = 15

/datum/outfit/job/bruiser
	name = "Anarch Member"
	jobtype = /datum/job/vamp/bruiser

	id = /obj/item/card/id/anarch
	uniform = /obj/item/clothing/under/vampire/bouncer
	suit = /obj/item/clothing/suit/vampire/jacket
	shoes = /obj/item/clothing/shoes/vampire/jackboots
	r_pocket = /obj/item/vamp/keys/anarch
	l_pocket = /obj/item/vamp/phone/anarch
	r_hand = /obj/item/melee/vampirearms/baseball
	backpack_contents = list(/obj/item/passport=1, /obj/item/cockclock=1, /obj/item/vampire_stake=3, /obj/item/flashlight=1, /obj/item/vamp/keys/hack=1, /obj/item/vamp/creditcard=1)

/datum/outfit/job/bruiser/pre_equip(mob/living/carbon/human/H)
	..()
	H.vampire_faction = "Anarchs"

/obj/effect/landmark/start/bruiser
	name = "Bruiser"
	icon_state = "Bouncer"
