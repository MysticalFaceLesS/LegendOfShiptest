/obj/machinery/vending/security/marine/debug
	all_items_free = TRUE
	req_access = list(ACCESS_SECURITY)
	products = list()
	contraband = list()
	premium = list()
	voucher_items = list()

/obj/machinery/vending/security/marine/debug/solfed/gun
	name = "\improper solfed sol-federation gun vendor"
	desc = "A marine equipment vendor."
	product_ads = "Please insert your marine voucher in the bottom slot."
	icon_state = "solgov-marine"
	icon_deny = "solgov-marine-deny"
	light_mask = "solgov-marine-mask"

	products = list(
		/obj/item/gun_voucher = 10,
		/obj/item/ammo_box/magazine/pistol556mm = 10,
		/obj/item/ammo_box/amagpellet_claris = 10,
		/obj/item/ammo_box/magazine/gauss = 10,
		/obj/item/ammo_box/magazine/modelh = 10,
		/obj/item/ammo_box/magazine/gar = 10,
		)

	voucher_items = list(
		"Pistol - Pistole C" = /obj/item/gun/ballistic/automatic/pistol/solgov,
		"Pistol - Model H" = /obj/item/gun/ballistic/automatic/powered/gauss/modelh,
		"Rifle - Claris" = /obj/item/gun/ballistic/automatic/powered/gauss/claris,
		"Rifle - Prototype Gauss" = /obj/item/gun/ballistic/automatic/powered/gauss,
		"SMG - Solar 'GAR' Carbine" = /obj/item/gun/ballistic/automatic/powered/gauss/gar
	)

/obj/machinery/vending/security/marine/debug/solfed/gun/cm
	name = "\improper solfed colonial-marines gun vendor"
	desc = "A marine equipment vendor."
	product_ads = "Please insert your marine voucher in the bottom slot."
	icon_state = "solgov-marine"
	icon_deny = "solgov-marine-deny"
	light_mask = "solgov-marine-mask"
	products = list(
		/obj/item/gun_voucher = 10,
		/obj/item/ammo_box/magazine/cm357 = 10,
		/obj/item/ammo_box/magazine/m9mm_cm70 = 10,
		/obj/item/ammo_box/magazine/cm5_9mm = 10,
		/obj/item/ammo_box/magazine/p16 = 10,
		/obj/item/ammo_box/magazine/cm15_12g = 10,
		/obj/item/ammo_box/magazine/skm_762_40 = 10,
		/obj/item/ammo_box/magazine/cm40_762_40_box = 6,
		/obj/item/ammo_box/magazine/f4_308 = 10,
		/obj/item/ammo_box/magazine/f90 = 10,
		/obj/item/ammo_box/a858 = 10,
	)

	voucher_items = list(
		"Pistol - Pistole C" = /obj/item/gun/ballistic/automatic/pistol/cm357,
		"Pistol - Model H" = /obj/item/gun/ballistic/automatic/pistol/cm70,
		"Rifle - Claris" = /obj/item/gun/ballistic/automatic/smg/cm5,
		"Rifle - Prototype Gauss" = /obj/item/gun/ballistic/automatic/assault/cm82,
		"Shotgun - CM-15" = /obj/item/gun/ballistic/shotgun/cm15,
		"Assault-Rifle - CM-24" = /obj/item/gun/ballistic/automatic/assault/skm/cm24,
		"HMG - CM-40" = /obj/item/gun/ballistic/automatic/hmg/cm40,
		"Marksman - CM-F4" = /obj/item/gun/ballistic/automatic/marksman/f4,
		"Marksman - CM-F90" = /obj/item/gun/ballistic/automatic/marksman/f90,
		"Marksman - SSG-669C" = /obj/item/gun/ballistic/rifle/solgov,
	)

/obj/machinery/vending/security/marine/debug/nanotrasen
	name = "\improper nanotrasen energy gun vendor"
	icon_state = "nt-marine"
	icon_deny = "nt-marine-deny"
	light_mask = "nt-marine-mask"
	icon_vend = "nt-marine-vend"
	products = list(
		/obj/item/gun_voucher/nanotrasen = 10,
		/obj/item/stock_parts/cell/gun/mini = 10,
		/obj/item/stock_parts/cell/gun = 10,
		/obj/item/stock_parts/cell/gun/upgraded = 10,
		/obj/item/stock_parts/cell/gun/sharplite = 10,
		/obj/item/stock_parts/cell/gun/sharplite/plus = 10,
		)

	voucher_items = list(
		"E-Pistol - Disabler" = /obj/item/gun/energy/disabler,
		"E-Pistol - Taser" = /obj/item/gun/energy/e_gun/advtaser,
		"P-Pistol - 'Cryogelida'" = /obj/item/gun/energy/e_gun/plasmapistol_cryo,
		"P-Pistol - 'Pyrogelida'" = /obj/item/gun/energy/e_gun/plasmapistol_fire,
		"SMG - E-TAR" = /obj/item/gun/energy/e_gun/e_old/smg,
		"E-Rifle- E-Gun" = /obj/item/gun/energy/e_gun/e_old,
		"E-Assault-Rifle - 'Hades'" = /obj/item/gun/energy/e_gun/e_old/hades,
		"E-Shotgun - E-SG 500" = /obj/item/gun/energy/e_gun/e_old/iot,
		"Ion-Rifle" = /obj/item/gun/energy/ionrifle,
		"Ion-Carbine" = /obj/item/gun/energy/ionrifle/carbine
	)
/obj/machinery/vending/security/marine/debug/nanotrasen/rework
	name = "\improper nanotrasen energy REWORKED gun vendor"
	products = list(
		/obj/item/gun_voucher/nanotrasen = 10,
		/obj/item/stock_parts/cell/gun/mini = 10,
		/obj/item/stock_parts/cell/gun = 10,
		/obj/item/stock_parts/cell/gun/upgraded = 10,
		/obj/item/stock_parts/cell/gun/large = 10
		)

	voucher_items = list(
		"E-Pistol - X-26 'Ember" = /obj/item/gun/energy/e_gun/e_old/mini,
		"E-SMG - X-39 'Sunbeam'" = /obj/item/gun/energy/e_gun/e_old/smg/sunbeam,
		"E-HMG - AL-690 'Daybreak" = /obj/item/gun/energy/e_gun/e_old/emg,
		"E-Marksman - L-211 'Parallax'" = /obj/item/gun/energy/e_gun/e_old/dmr,
		"E-Marksman - AL-602 'Phoenix' Energy Cannon" = /obj/item/gun/energy/lasercannon,
		"E-Shotgun - AL-370 'Blaze'" = /obj/item/gun/energy/e_gun/e_old/iot/blaze

/obj/machinery/vending/security/marine/debug/nanotrasen/sharplite
	name = "\improper nanotrasen sharplite gun vendor"
	products = list(
		/obj/item/gun_voucher/nanotrasen = 10,
		/obj/item/stock_parts/cell/gun/sharplite = 10,
		/obj/item/stock_parts/cell/gun/sharplite/plus = 10,
		)

	voucher_items = list(
		"P-SMG - L204 “Resistor”" = /obj/item/gun/energy/sharplite/l201/l204,
		"P-Marksman - AL607 “Sarissa”" = /obj/item/gun/energy/sharplite/al607
	)

/obj/machinery/vending/security/marine/debug/nanotrasen/vi
	name = "\improper nanotrasen VI gun vendor"

	products = list(
		/obj/item/gun_voucher = 10,
		/obj/item/ammo_box/a357 = 10,
		/obj/item/ammo_box/magazine/co9mm = 10,
		/obj/item/ammo_box/magazine/m46_30_podium = 10,
		/obj/item/ammo_box/magazine/m9mm_expedition = 10,
		/obj/item/ammo_box/magazine/wt550m9 = 10,
		/obj/item/ammo_box/magazine/gauss = 10,
	)


	voucher_items = list(
		"Revolver - Unica" = /obj/item/gun/ballistic/revolver/rhino,
		"Pistol - Advantage PS9 \"Challenger\"" = /obj/item/gun/ballistic/automatic/pistol/challenger,
		"Pistol - VI PH46 Podium" = /obj/item/gun/ballistic/automatic/pistol/podium,
		"Pistol - VI PHB Champion" = /obj/item/gun/ballistic/automatic/pistol/champion,
		"SMG - WT-550" = /obj/item/gun/ballistic/automatic/smg/wt550,
		"SMG - VI PD46 Resolution" = /obj/item/gun/ballistic/automatic/smg/resolution,
		"SMG - Saber" = /obj/item/gun/ballistic/automatic/smg/skm_carbine/saber,
		"SMG - Advantage SGL9 \"Expedition\"" = /obj/item/gun/ballistic/automatic/smg/expedition,
		"Shotgun - Combat Shotgun" = /obj/item/gun/ballistic/shotgun/automatic/combat,
		"Shotgun - VI AST12 Negotiator" = /obj/item/gun/ballistic/shotgun/automatic/negotiator,
		"Rifle - Prototype Gauss" = /obj/item/gun/ballistic/automatic/powered/gauss
	)

/obj/machinery/vending/security/marine/debug/syndicate
	name = "\improper syndicate gun vendor"
	icon_state = "syndicate-marine"
	icon_deny = "syndicate-marine-deny"
	light_mask = "syndicate-marine-mask"
	icon_vend = "syndicate-marine-vend"

	products = list(
		/obj/item/gun_voucher = 10,
		/obj/item/ammo_box/a357 = 10,
		/obj/item/ammo_box/magazine/m10mm_ringneck = 10,
		/obj/item/ammo_box/magazine/m57_39_asp = 10,
		/obj/item/ammo_box/magazine/m57_39_sidewinder = 10,
		/obj/item/ammo_box/magazine/m45_cobra = 10,
		/obj/item/ammo_box/magazine/m12g_bulldog = 10,
		/obj/item/ammo_box/magazine/m556_42_hydra/small = 10,
		/obj/item/ammo_box/magazine/m556_42_hydra = 10,
		/obj/item/ammo_box/magazine/m556_42_hydra/extended = 10,
		/obj/item/ammo_box/magazine/boomslang/short = 10
		)

	voucher_items = list(
		"Revolver - R-23 \"Viper\"" = /obj/item/gun/ballistic/revolver/viper,
		"Pistol - PC-76 \"Ringneck\"" = /obj/item/gun/ballistic/automatic/pistol/ringneck,
		"Pistol - BC-81 \"Asp\"" = /obj/item/gun/ballistic/automatic/pistol/asp,
		"SMG - CDW-81 \"Sidewinder\"" = /obj/item/gun/ballistic/automatic/smg/sidewinder,
		"SMG - C-20r \"Cobra\"" = /obj/item/gun/ballistic/automatic/smg/cobra,
		"Shotgun - SG-60r \"Bulldog\"" = /obj/item/gun/ballistic/shotgun/automatic/bulldog,
		"Assault-Rifle - SMR-80 \"Hydra\"" = /obj/item/gun/ballistic/automatic/assault/hydra,
		"HMG - SAW-80 \"Hydra\"" = /obj/item/gun/ballistic/automatic/assault/hydra/lmg,
		"DMR - SBR-80 \"Hydra\"" = /obj/item/gun/ballistic/automatic/assault/hydra/dmr,
		"Marksman - MSR-90 \"Boomslang\"" = /obj/item/gun/ballistic/automatic/marksman/boomslang,
	)
