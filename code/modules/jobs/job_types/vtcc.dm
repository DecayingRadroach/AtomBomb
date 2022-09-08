/datum/job/vtcc //do NOT use this for anything, it's just to store faction datums
	selection_color = "#ADD8E6"
	faction = "VTCC"
	exp_type = EXP_TYPE_VTCC
	objectivesList = list("The Overseer recommends the following goal for this week: Work together to maximize profits","The Overseer recommends the following goal for this week: Establish good relations with two or more major factions","The Overseer recommends the following goal for this week: Stay neutral at all costs")

/datum/outfit/job/vtcc/
	name = "VTCCdatums"
	jobtype = /datum/job/vtcc/
	backpack = /obj/item/storage/backpack/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	uniform = /obj/item/clothing/under/f13/vault
	ears = /obj/item/radio/headset/headset_vault/cogcity
	id = /obj/item/card/id
	shoes = /obj/item/clothing/shoes/cowboyboots/black
	l_pocket = /obj/item/storage/bag/money/small/settler

/* Alderman */

/datum/job/vtcc/f13alderman
	title = "Alderman"
	flag = F13ALDERMAN
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Overseer"
	description = "A subordinate of the Overseer, you are the primary face of the town. Handling the day to day dealings of the denizens of our fair city falls to you. Those wasters outside the walls are an unknown factor, so it falls to you to maintain relations with the Wastelands many players. Be wary of the Machine down below, as with the trades and treaties in place. Balance the budget, but don't step on the Merchant's toes. Organise defences, but do not encroach on the Marshal's office. Most of all: don't lose your head."
	req_admin_notify = 1

	outfit = /datum/outfit/job/vtcc/f13alderman
/*
	loadout_options = list(
		/datum/outfit/loadout/treasurer,
		/datum/outfit/loadout/baron,
		/datum/outfit/loadout/eldervaultie
		)
*/
	access = list(ACCESS_VTCC, ACCESS_VTCC_COMMAND, ACCESS_VTCC_SEC, ACCESS_VTCC_BAR, ACCESS_VTCC_ROADIE, ACCESS_VTCC_SHOP, ACCESS_VTCC_SEC, ACCESS_VTCC_RESEARCH)
	minimal_access = list(ACCESS_VTCC, ACCESS_VTCC_COMMAND, ACCESS_VTCC_SEC, ACCESS_VTCC_BAR, ACCESS_VTCC_ROADIE, ACCESS_VTCC_SHOP, ACCESS_VTCC_SEC, ACCESS_VTCC_RESEARCH)

/datum/outfit/job/vtcc/f13alderman/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/vtcc/f13alderman
	name = "Alderman"
	jobtype =		/datum/job/vtcc/f13alderman
	ears = 			/obj/item/radio/headset/headset_vault/cogcity/overseer
	head = 			/obj/item/clothing/head/helmet/f13/brahmincowboyhat
	neck = 			/obj/item/storage/belt/legholster
	suit = 			/obj/item/clothing/suit/armor/light/duster/battlecoat
	id = 			/obj/item/card/id/silver
	r_pocket = 		/obj/item/reagent_containers/hypospray/medipen/stimpak/super
	l_pocket =		/obj/item/storage/bag/money/small/vaultcity
	backpack_contents = list(
		/obj/item/storage/box/citizenship_permits = 1, \
		/obj/item/ammo_box/magazine/m10mm = 3 )

/* Merchant */

/datum/job/vtcc/f13merchant
	title = "Merchant"
	flag = F13MERCHANT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Alderman and the Overseer"
	description = "Trade deals fall upon your shoulders to negotiate with those around the town, so ensure you never give more than you've got. Of course, selling the town is the worst thing you could do, so it should go without saying that you can't do that. Negotiate with the traders of the wastes, extort them for the shirt on their back, or set them up for life, it's up to you to decide. Just don't lose your head."
	req_admin_notify = 1

	outfit = /datum/outfit/job/vtcc/f13merchant
/*
	loadout_options = list(
		/datum/outfit/loadout/blacksmith,
		/datum/outfit/loadout/armsdealer
		)
*/
	access = list(ACCESS_VTCC, ACCESS_VTCC_COMMAND, ACCESS_VTCC_BAR, ACCESS_VTCC_ROADIE, ACCESS_VTCC_SHOP)
	minimal_access = list(ACCESS_VTCC, ACCESS_VTCC_COMMAND, ACCESS_VTCC_BAR, ACCESS_VTCC_ROADIE, ACCESS_VTCC_SHOP)

/datum/outfit/job/vtcc/f13merchant/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TRAPPER, src)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/vtcc/f13merchant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/combat_armor)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/combatrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/sniper)


/datum/outfit/job/vtcc/f13merchant
	name = "Merchant"
	jobtype = 		/datum/job/vtcc/f13merchant
	ears = 			/obj/item/radio/headset/headset_vault/cogcity/merch_lead
	id =            /obj/item/card/id/silver
	l_pocket =		/obj/item/storage/bag/money/small/vaultcity
	r_pocket = 		/obj/item/pda/quartermaster
	shoes = 		/obj/item/clothing/shoes/f13/fancy
	uniform = 		/obj/item/clothing/under/f13/pioneer
	gloves = 		/obj/item/clothing/gloves/f13/leather/fingerless
	backpack_contents = list(
		/obj/item/stack/f13Cash/caps/fivezerozero=1
		)

/* Marshal */

/datum/job/vtcc/f13marshal
	title = "Marshal"
	flag = F13MARSHAL
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Aldermen, Marshals and the Overseer"
	description = "As the head of the security forces, you are the face of justice in the town. Uphold the law, or bend it to suit your needs, you set the precedent for how justice is doled out in the town, so bear that in mind when you sentence that pickpocket to death. Maintain the armoury and keep that watchful eye on the elevator to the Vault below. Whatever you do, don't lose your head."
	req_admin_notify = 1
/*
	outfit = /datum/outfit/job/vtcc/f13marshal
	loadout_options = list(
		/datum/outfit/loadout/secchief,
		/datum/outfit/loadout/peacekeeper,
		/datum/outfit/loadout/fireteamlead
		)
*/
	access = list(ACCESS_VTCC, ACCESS_VTCC_COMMAND, ACCESS_VTCC_SEC, ACCESS_VTCC_BAR, ACCESS_VTCC_SHOP, ACCESS_VTCC_SEC, ACCESS_VTCC_RESEARCH)
	minimal_access = list(ACCESS_VTCC, ACCESS_VTCC_COMMAND, ACCESS_VTCC_SEC, ACCESS_VTCC_BAR, ACCESS_VTCC_SHOP, ACCESS_VTCC_SEC, ACCESS_VTCC_RESEARCH)

/datum/outfit/job/vtcc/f13marshal/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/vtcc/f13marshal
	name = "Marshal"
	jobtype = 		/datum/job/vtcc/f13marshal
	id =            /obj/item/card/id/silver
	ears = 			/obj/item/radio/headset/headset_vault/cogcity/sec_lead
	r_pocket = 		/obj/item/reagent_containers/hypospray/medipen/stimpak/super
	l_pocket =		/obj/item/storage/bag/money/small/vaultcity
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	belt = 			/obj/item/storage/belt/military
	neck = 			/obj/item/storage/belt/shoulderholster
	r_hand =		/obj/item/gun/ballistic/automatic/pistol/n99
	backpack_contents = list(
		/obj/item/restraints/handcuffs=1,
		/obj/item/melee/classic_baton=1,
		/obj/item/kitchen/knife=1,
		/obj/item/pda/warden=1,
		/obj/item/ammo_box/magazine/m10mm=3
		)

/* Detective*/
/datum/job/vtcc/f13det
	title = "Detective"
	flag = F13VTCCDET
	total_positions = 1
	spawn_positions = 2
	supervisors = "the Aldermen and the Marshal."
	description = "Investigating crimes and disappearences in the town, you are the marshal's infromation gathering machine."
	exp_requirements = 1500
	exp_type = EXP_TYPE_VTCCSEC

	outfit = /datum/outfit/job/vtcc/f13det
/*
	loadout_options = list(
		/datum/outfit/loadout/specops,
		/datum/outfit/loadout/espionage,
		/datum/outfit/loadout/enforcer
	)
*/
	access = list(ACCESS_VTCC, ACCESS_VTCC_SEC)
	minimal_access = list(ACCESS_VTCC, ACCESS_VTCC_SEC)

/datum/outfit/job/vtcc/f13provost/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/vtcc/f13det
	name = "Detective"
	jobtype = 		/datum/job/vtcc/f13det
	ears = 			/obj/item/radio/headset/headset_vault/cogcity/sec
	head = 			/obj/item/clothing/head/helmet/f13/rustedcowboyhat
	suit = 			/obj/item/clothing/suit/armor/medium/vest/det_suit
	uniform = 		/obj/item/clothing/under/f13/sheriff
	id =            /obj/item/card/id
	neck = 			/obj/item/storage/belt/shoulderholster
	l_pocket =		/obj/item/storage/bag/money/small/vaultcity
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 1,
		/obj/item/kitchen/knife=1,
		/obj/item/pda/security=1,
		/obj/item/clothing/mask/gas/sechailer=1,
	)

/* Deputy */

/datum/job/vtcc/f13deputy
	title = "Deputy"
	flag = F13VTCCDEP
	total_positions = 5
	spawn_positions = 1
	supervisors = "the marshal."
	description = "Day or night, you watch the walls with diligence. The wastes outside are lawless."
	outfit = /datum/outfit/job/vtcc/f13citysecscout
	exp_requirements = 600
	exp_type = EXP_TYPE_VTCC

	loadout_options = list(
		/datum/outfit/loadout/newblood,
		/datum/outfit/loadout/deepend,
		//datum/outfit/loadout/vcfmedic
		)

	access = list(ACCESS_VTCC, ACCESS_VTCC_SEC)
	minimal_access = list(ACCESS_VTCC, ACCESS_VTCC_SEC)

/datum/outfit/job/vtcc/f13citysecscout/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/vtcc/f13deputy
	name = "Deputy"
	jobtype = /datum/job/vtcc/f13deputy
	ears = 			/obj/item/radio/headset/headset_vault/cogcity/sec
	id =            /obj/item/card/id
	l_pocket =		/obj/item/storage/bag/money/small/vaultcity
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 1,
		/obj/item/pda/security=1
		)

/datum/outfit/loadout/newblood
	name = "Shock Cadet"
	backpack_contents = list(
	/obj/item/gun/ballistic/automatic/m1carbine=1,
	)

/datum/outfit/loadout/deepend
	name = "Riot Cadet"
	backpack_contents = list(
	/obj/item/gun/energy/laser/wattz/magneto=1,
	/obj/item/stock_parts/cell/ammo/ec = 3,
	/obj/item/clothing/mask/gas/sechailer=1,
	/obj/item/grenade/smokebomb=1,
	/obj/item/shield/riot/tele=1
	)

/*datum/outfit/loadout/vcfmedic
	name = "Field Medic"
	backpack_contents = list(
	/obj/item/gun/ballistic/automatic/pistol/n99=1,
	/obj/item/ammo_box/magazine/m10mm=2,
	/obj/item/storage/bag/chemistry=1,
	/obj/item/storage/survivalkit_aid=1,
	/obj/item/storage/box/medicine/stimpak5=3,
	/obj/item/defibrillator/compact/loaded=1,
	/obj/item/clothing/glasses/hud/health=1
	)*/

/* Roadie */

/datum/job/vtcc/f13roadie
	title = "Roadie"
	flag = F13ROADIE
	total_positions = 2
	spawn_positions = 1
	supervisors = "the Merchant & the Shopkeeper."
	description = "Operate the shop when the Merchant's asleep or just isn't there, push and pull those crates to and fro like your life depends on it (and when your paycheck is based on performance, well, it certainly does). If there are no crates to pick up, head out into the wastes and start scavenging for anything you could sell at an extortionate price."
	forbids = "Using the stock to go bunker busting. The stock is to be sold, not to be taken and used by personnel."

	outfit = /datum/outfit/job/vtcc/f13roadie
	exp_requirements = 600
	exp_type = EXP_TYPE_VTCC
/*
	loadout_options = list(
		/datum/outfit/loadout/scavver,
		/datum/outfit/loadout/courier,
		/datum/outfit/loadout/caravaner
		)
*/
	access = list(ACCESS_VTCC, ACCESS_VTCC_ROADIE)
	minimal_access = list(ACCESS_VTCC, ACCESS_VTCC_ROADIE)

/datum/outfit/job/vtcc/f13roadie/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TRAPPER, src)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/vtcc/f13roadie
	name = "Roadie"
	jobtype = 	/datum/job/vtcc/f13roadie
	ears = 		/obj/item/radio/headset/headset_vault/cogcity/merch
	uniform = 	/obj/item/clothing/under/f13/shiny

/* Researcher */

/datum/job/vtcc/f13researcher
	title = "Researcher"
	flag = F13RESEARCHER
	total_positions = 2
	spawn_positions = 1
	supervisors = "the Alderman, Chief of Development and the Overseer"
	description = "Doctor, Scientist, Roboticist, each of you under the Vault's employ stands under the title of Researcher. The Vault's servers are regularly wiped by some glitch in the system, and it's down to the Scientists to restore these data files. To be a Roboticist is to uphold a tradition in the Vault that bears itself a marred reputation, so don't lose your head. The Medical Professionals, even those who handle quarantined patients, are the clinical cornerstone of the town, so long as the price is right."

	outfit = /datum/outfit/job/vtcc/f13researcher
	exp_requirements = 3000
	exp_type = EXP_TYPE_VTCC

	loadout_options = list(
		/datum/outfit/loadout/medprof,
		/datum/outfit/loadout/robotocist,
		)

	access = list(ACCESS_VTCC, ACCESS_VTCC_RESEARCH, ACCESS_ROBOTICS)
	minimal_access = list(ACCESS_VTCC, ACCESS_VTCC_RESEARCH, ACCESS_ROBOTICS)

/datum/outfit/job/vtcc/f13researcher/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/vtcc/f13researcher
	name = "Researcher"
	jobtype = /datum/job/vtcc/f13researcher

	ears = /obj/item/radio/headset/headset_vault/cogcity/sci
	id =            /obj/item/card/id
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket =		/obj/item/storage/bag/money/small/vaultcity
	suit = /obj/item/clothing/suit/toggle/labcoat
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/needler=1,,
		/obj/item/pda=1
		)

/datum/outfit/loadout/medprof
	name = "Medical Professional"
	backpack_contents = list(
	/obj/item/clothing/suit/hooded/parka/medical=1,
	/obj/item/storage/firstaid/brute=1,
	)

/datum/outfit/loadout/robotocist
	name = "Roboticist"
	backpack_contents = list(
	/obj/item/clothing/glasses/hud/diagnostic=1,
	/obj/item/clothing/under/f13/roboticistalt=1
	)

/* Innkeeper */

/datum/job/vtcc/f13innkeeper
	title = "Innkeeper"
	flag = F13INNKEEPER
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Merchant."
	description = "Yours is a simple life, pouring pints and renting rooms out for the masses. Those hungry mouths are buying food somewhere, and it's your job to fill them with whatever food you can prepare. It's a simple life, but a rewarding one. Ownership means you have the legal rulings over your area of operations, what has been told by you for the visitors. What goes within the walls of the bar is subject to your rulings, so long as it coincides with laws and rulings made by officials and the Security forces."

	outfit = /datum/outfit/job/vtcc/f13innkeeper
	loadout_options = list(
		/datum/outfit/loadout/receptionist,
		/datum/outfit/loadout/bartender,
		//datum/outfit/loadout/chef
		)

	access = list(ACCESS_VTCC, ACCESS_VTCC_BAR)
	minimal_access = list(ACCESS_VTCC, ACCESS_VTCC_BAR)

/datum/outfit/job/vtcc/f13innkeeper/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/vtcc/f13innkeeper
	name = "Bartender"
	jobtype = /datum/job/vtcc/f13innkeeper
	ears = /obj/item/radio/headset/headset_vault/cogcity/merch
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	r_pocket = /obj/item/pda/bar
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/bean=1,
		/obj/item/gun/ballistic/revolver/widowmaker=1,
		)

/datum/outfit/loadout/receptionist
	name = "Receptionist"
	backpack_contents = list(
	/obj/item/clipboard=1,
	/obj/item/paper_bin=1,
	/obj/item/clothing/under/suit/white_on_white/skirt=1,
	/obj/item/clothing/under/suit/white_on_white=1,
	/obj/item/clothing/shoes/f13/fancy=1
	)

/datum/outfit/loadout/bartender
	name = "Bartender"
	backpack_contents = list(
	/obj/item/clothing/under/f13/bartenderalt=1,
	/obj/item/ammo_box/shotgun/bean=1,
	/obj/item/gun/ballistic/revolver/widowmaker=1,
	/obj/item/storage/box/drinkingglasses=1
	)

/datum/outfit/loadout/chef
	name = "Chef"
	backpack_contents = list(
	/obj/item/storage/box/ingredients/fiesta=2,
	/obj/item/storage/box/ingredients/italian=2,
	/obj/item/storage/box/ingredients/american=2,
	/obj/item/clothing/neck/apron/chef=1,
	/obj/item/clothing/under/f13/westender=1,
	/obj/item/clothing/head/flatcap=1
	)

/* Inner Wall Citizen */

/datum/job/vtcc/f13citizen
	title = "Citizen"
	flag = F13CITIZEN
	total_positions = 14
	spawn_positions = 3
	supervisors = "the Alderman."
	description = "You may lead any one of many different lifestyles, each one vastly different to the last. As such, you're on the payroll of anyone who hires you. Or, you're striking out on your own in our corral, making a name for yourself and your business within our walls. Perhaps you're a refugee from some faraway location, on the run from a threat unknown, or a settler from some far off town, setting out for a fresh start."
/*
	outfit = /datum/outfit/job/vtcc/f13innerwall
	loadout_options = list(
		/datum/outfit/loadout/oldsport,
		/datum/outfit/loadout/classy,
		/datum/outfit/loadout/dancer,
		//datum/outfit/loadout/fancygal,
		//datum/outfit/loadout/seamstress,
		/datum/outfit/loadout/tailor,
		/datum/outfit/loadout/secretary,
		//datum/outfit/loadout/cleaner,
		/datum/outfit/loadout/detective,
		//datum/outfit/loadout/dj
		)
*/
	access = list(ACCESS_VTCC)
	minimal_access = list(ACCESS_VTCC)

/datum/outfit/job/vtcc/f13innerwall/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/vtcc/f13citizen
	name = "Citizen"
	jobtype = /datum/job/vtcc/f13citizen
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/vaultcity
	backpack_contents = list(
		/obj/item/pda=1
		)
/*
/datum/outfit/loadout/oldsport
	name = "Old Sport"
	backpack_contents = list(
	/obj/item/gun/ballistic/rifle/remington=1,
	/obj/item/ammo_box/a308box=1,
	/obj/item/kitchen/knife/combat=1,
	/obj/item/clothing/under/f13/gentlesuit=1,
	/obj/item/clothing/shoes/f13/fancy=1,
	/obj/item/clothing/head/f13/trilby=1
	)

/datum/outfit/loadout/classy
	name = "Classy"
	backpack_contents = list(
	/obj/item/clothing/under/f13/spring=1,
	/obj/item/clothing/under/dress/skirt/swept=1,
	/obj/item/stack/f13Cash/caps = 100,
	/obj/item/clothing/shoes/laceup=1,
	/obj/item/gun/ballistic/revolver/police=1
	)

/datum/outfit/loadout/dancer
	name = "Dancer"
	backpack_contents = list(
	/obj/item/stack/f13Cash/caps = 20,
	/obj/item/clothing/under/singery=1,
	/obj/item/clothing/shoes/singery=1,
	/obj/item/gun/ballistic/revolver/colt6520=1
	)

/*/datum/outfit/loadout/fancygal
	name = "Fancy Gal"
	backpack_contents = list(
	/obj/item/clothing/under/dress/skirt/swept,
	/obj/item/clothing/shoes/laceup,
	/obj/item/stack/f13Cash/caps = 100
	)

/datum/outfit/loadout/seamstress
	name = "Seamstress"
	backpack_contents = list(
	/obj/item/stack/sheet/cloth = 10,
	/obj/item/clothing/shoes/sneakers/red,
	/obj/item/clothing/under/dress/westernbustle,
	/obj/item/stack/f13Cash/caps = 100
	)*/

/datum/outfit/loadout/tailor
	name = "Tailor"
	backpack_contents = list(
	/obj/item/stack/sheet/cloth = 10,
	/obj/item/clothing/shoes/sneakers/black=1,
	/obj/item/clothing/under/suit/burgundy=1,
	/obj/item/clothing/shoes/sneakers/red=1,
	/obj/item/clothing/under/dress/westernbustle=1,
	/obj/item/stack/f13Cash/caps = 100
	)

/datum/outfit/loadout/secretary
	name = "Secretary"
	backpack_contents = list(
	/obj/item/clipboard=1,
	/obj/item/paper_bin=1,
	/obj/item/pda=1,
	/obj/item/clothing/under/suit/black=1,
	/obj/item/clothing/shoes/f13/fancy=1
	)

/datum/outfit/loadout/cleaner
	name = "Cleaner"
	backpack_contents = list(
	/obj/item/clothing/shoes/galoshes,
	/obj/item/clothing/gloves/f13/leather,
	/obj/item/mop,
	/obj/item/reagent_containers/glass/bucket,
	/obj/item/stack/f13Cash/caps = 200
	)

/datum/outfit/loadout/dj
	name = "Professional Disc Jockey"
	backpack_contents = list(
	/obj/item/taperecorder,
	/obj/item/tape = 3,
	/obj/item/megaphone
	)
	*/