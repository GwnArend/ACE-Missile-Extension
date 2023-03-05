--define the class
ACF_defineGunClass("GBU", {
    type            = "missile",  -- i know i know
	spread          = 1,
	name            = "[GBU] - Guided Bomb Unit",
	desc            = ACFTranslation.MissileClasses[6],
	muzzleflash     = "40mm_muzzleflash_noscale",
	rofmod          = 0.1,
	year = 1980,
	sound           = "WT/Misc/bomb_drop.wav",
	soundDistance   = " ",
	soundNormal     = " ",
	nothrust		= true,
    
	reloadmul       = 2,

	ammoBlacklist   = {"AP", "APHE", "FL"} 			-- Including FL would mean changing the way round classes work.
} )


ACF_defineGun("GBU-24 910kg", { 						-- id
	name 			= "910kg GBU-24 Paveway III",
	desc 			= "GBU-24 Paveway III or simply GBU-24 is a family of laser-guided bombs, a sub-group of the larger Raytheon Paveway III family of weapons.",
	model 			= "models/bombs/gbu/gbu24_unfolded.mdl",
	gunclass 		= "GBU",
    rack 			= "1xRK",  						-- Which rack to spawn this missile on?
	length 			= 440,
	caliber 		= 17.0,
	weight 			= 910,    						-- Don't scale down the weight though!
	year 			= 1983,
	rofmod			= 1.5,
    modeldiameter 	= 46, 					-- in cm
	round = {
		model		= "models/bombs/gbu/gbu24_unfolded.mdl",
		rackmdl		= "models/bombs/gbu/gbu24_folded.mdl",
		maxlength	= 500,
		casing		= 0.5,	        				-- thickness of missile casing, cm
		armour		= 14,							-- effective armour thickness of casing, in mm
		propweight	= 0,	        				-- motor mass - motor casing
		thrust		= 1,	    					-- average thrust - kg*in/s^2
		burnrate	= 1,	        				-- cm^3/s at average chamber pressure
		starterpct	= 0.005,        				-- percentage of the propellant consumed in the starter motor.
		minspeed	= 1,							-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef	= 0.002,						-- drag coefficient of the missile
		finmul		= 0.02,							-- fin multiplier (mostly used for unpropelled guidance)
        penmul      = math.sqrt(0.04)  				-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
	},
   
    ent         = "acf_missile_to_rack", 			-- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Laser"},
    fuses       = {"Contact", "Timed", "Optical", "Cluster"},
 
	racks       = {									-- a whitelist for racks that this missile can load into.
					["1xRK"] = true,  
				},   
 
    seekcone    = 60,   							-- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 80,   							-- getting outside this cone will break the lock.  Divided by 2. 
    
    agility     = 1,     							-- multiplier for missile turn-rate.
    armdelay    = 0.00     							-- minimum fuse arming delay
} )

ACF_defineGun("KAB-500L", { 						-- id
	name 			= "525kg KAB-500L",
	desc 			= "GBU-24 Paveway III or simply GBU-24 is a family of laser-guided bombs, a sub-group of the larger Raytheon Paveway III family of weapons.",
	model 			= "models/bombs/gbu/kab500.mdl",
	gunclass 		= "GBU",
    rack 			= "1xRK",  						-- Which rack to spawn this missile on?
	length 			= 195,
	caliber 		= 17.0,
	weight 			= 525,    						-- Don't scale down the weight though!
	year 			= 1983,
	rofmod			= 1.5,
    modeldiameter 	= 30, 					-- in cm
	round = {
		model		= "models/bombs/gbu/kab500.mdl",
		rackmdl		= "models/bombs/gbu/kab500.mdl",
		maxlength	= 500,
		casing		= 0.5,	        				-- thickness of missile casing, cm
		armour		= 14,							-- effective armour thickness of casing, in mm
		propweight	= 0,	        				-- motor mass - motor casing
		thrust		= 1,	    					-- average thrust - kg*in/s^2
		burnrate	= 1,	        				-- cm^3/s at average chamber pressure
		starterpct	= 0.005,        				-- percentage of the propellant consumed in the starter motor.
		minspeed	= 1,							-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef	= 0.002,						-- drag coefficient of the missile
		finmul		= 0.02,							-- fin multiplier (mostly used for unpropelled guidance)
        penmul      = math.sqrt(0.04)  				-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
	},
   
    ent         = "acf_missile_to_rack", 			-- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Laser"},
    fuses       = {"Contact", "Timed", "Optical", "Cluster"},
 
	racks       = {									-- a whitelist for racks that this missile can load into.
					["1xRK"] = true,  
				},   
 
    seekcone    = 60,   							-- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 80,   							-- getting outside this cone will break the lock.  Divided by 2. 
    
    agility     = 1,     							-- multiplier for missile turn-rate.
    armdelay    = 0.00     							-- minimum fuse arming delay
} )
