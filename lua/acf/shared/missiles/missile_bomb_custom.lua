
ACF_defineGun("FAB-5000", { 						-- id
	name 			= "FAB-5000",
	desc 			= "Russian funny 5000kg bomb",
	model 			= "models/bombs/fab5000.mdl",
	gunclass 		= "BOMB",
    rack 			= "1xRK",  						-- Which rack to spawn this missile on?
	length 			= 537,
	caliber 		= 75,
	weight 			= 5000,    						-- Don't scale down the weight though! 
	year 			= 1943,
    modeldiameter 	= 109, 					-- in cm
	round = {
		model		= "models/bombs/fab5000.mdl",
		rackmdl		= "models/bombs/fab5000.mdl",
		maxlength	= 375,
		casing		= 0.1,	        				-- thickness of missile casing, cm
		armour		= 25,							-- effective armour thickness of casing, in mm
		propweight	= 0,	        				-- motor mass - motor casing
		thrust		= 1,	    					-- average thrust - kg*in/s^2
		burnrate	= 1,	        				-- cm^3/s at average chamber pressure
		starterpct	= 1,        					-- percentage of the propellant consumed in the starter motor.
		minspeed	= 1,							-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef	= 0.002,						-- drag coefficient of the missile
		finmul		= 0.004,						-- fin multiplier (mostly used for unpropelled guidance)
        penmul      = math.sqrt(0.1)  				-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
	},
   
    ent         = "acf_missile_to_rack", 			-- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb"},
	fuses       = {"Contact"},
 
	racks       = {									-- a whitelist for racks that this missile can load into.
					["1xRK"] = true
				},   				
 
    seekcone    = 40,   							-- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 60,   							-- getting outside this cone will break the lock.  Divided by 2. 
    
    armdelay    = 0.00     							-- minimum fuse arming delay
} )

ACF_defineGun("OFAB-250", { --id
	name = "OFAB-250",
	desc = "Soviet High-Explosive/Fragmentation bomb",
	model = "models/bombs/ofab250.mdl",
	gunclass = "BOMB",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 155,
	caliber = 12.5,
	weight = 340,    -- Don't scale down the weight though!
	year = 1950,
    modeldiameter = 35, -- in cm
	round = {
		model		= "models/bombs/ofab250.mdl",
		rackmdl		= "models/bombs/ofab250.mdl",
		maxlength	= 400, --was 115, wtf!
		casing		= 0.15,	        -- thickness of missile casing, cm
		armour		= 12.5,			-- effective armour thickness of casing, in mm
		propweight	= 0,	        -- motor mass - motor casing
		thrust		= 1,	    	-- average thrust - kg*in/s^2
		burnrate	= 1,	        -- cm^3/s at average chamber pressure
		starterpct	= 1,        -- percentage of the propellant consumed in the starter motor.
		minspeed	= 1,			-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef	= 0.002,		-- drag coefficient of the missile
		finmul		= 0.005,			-- fin multiplier (mostly used for unpropelled guidance)
        penmul      = math.sqrt(0.05)  	-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
	},
   
    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb"},
    fuses       = {"Contact", "Optical", "Cluster"},
 
	racks       = {["1xRK"] = true,  ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

 
    seekcone    = 40,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 60,   -- getting outside this cone will break the lock.  Divided by 2. 
    
    agility     = 1,     -- multiplier for missile turn-rate.
    armdelay    = 0.00     -- minimum fuse arming delay
} )

ACF_defineGun("Mk.83", {                        -- id
    name            = "454kg MK.83",
    desc            = "The Mark 83 is part of the Mark 80 series of low-drag general-purpose bombs in United States service.",
    model           = "models/bombs/mk83.mdl",
    gunclass        = "BOMB",
    rack            = "1xRK",                       -- Which rack to spawn this missile on?
    length          = 226,
    caliber         = 18,
    weight          = 454,                          -- Don't scale down the weight though!
    year            = 1950,
    modeldiameter   = 26,                   -- in cm
    round = {
        model       = "models/bombs/mk83.mdl",
        rackmdl     = "models/bombs/mk83.mdl",
        maxlength   = 200,
        casing      = 0.2,                          -- thickness of missile casing, cm
        armour      = 25,                           -- effective armour thickness of casing, in mm
        propweight  = 0,                            -- motor mass - motor casing
        thrust      = 1,                            -- average thrust - kg*in/s^2
        burnrate    = 1,                            -- cm^3/s at average chamber pressure
        starterpct  = 1,                            -- percentage of the propellant consumed in the starter motor.
        minspeed    = 1,                            -- minimum speed beyond which the fins work at 100% efficiency
        dragcoef    = 0.003,                        -- drag coefficient of the missile
        finmul      = 0.004,                        -- fin multiplier (mostly used for unpropelled guidance)
        penmul      = math.sqrt(0.05)               -- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
    },
   
    ent         = "acf_missile_to_rack",            -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb"},
    fuses       = {"Contact", "Optical",},

    racks       = {                                 -- a whitelist for racks that this missile can load into.
                    ["1xRK"] = true,  
                    ["2xRK"] = true
                },   
 
    seekcone    = 40,                               -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 60,                               -- getting outside this cone will break the lock.  Divided by 2. 
    
    armdelay    = 0.00                              -- minimum fuse arming delay
} )

ACF_defineGun("FAB-500M-62", {                        -- id
    name            = "500kg FAB-500M-62",
    desc            = "The FAB-500M-62 is a soviet general-purpose bomb.",
    model           = "models/bombs/fab500m62.mdl",
    gunclass        = "BOMB",
    rack            = "1xRK",                       -- Which rack to spawn this missile on?
    length          = 194,
    caliber         = 30,
    weight          = 500,                          -- Don't scale down the weight though!
    year            = 1950,
    modeldiameter   = 29,                   -- in cm
    round = {
        model       = "models/bombs/fab500m62.mdl",
        rackmdl     = "models/bombs/fab500m62.mdl",
        maxlength   = 200,
        casing      = 0.2,                          -- thickness of missile casing, cm
        armour      = 25,                           -- effective armour thickness of casing, in mm
        propweight  = 0,                            -- motor mass - motor casing
        thrust      = 1,                            -- average thrust - kg*in/s^2
        burnrate    = 1,                            -- cm^3/s at average chamber pressure
        starterpct  = 1,                            -- percentage of the propellant consumed in the starter motor.
        minspeed    = 1,                            -- minimum speed beyond which the fins work at 100% efficiency
        dragcoef    = 0.003,                        -- drag coefficient of the missile
        finmul      = 0.004,                        -- fin multiplier (mostly used for unpropelled guidance)
        penmul      = math.sqrt(0.05)               -- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
    },
   
    ent         = "acf_missile_to_rack",            -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb"},
    fuses       = {"Contact", "Optical",},

    racks       = {                                 -- a whitelist for racks that this missile can load into.
                    ["1xRK"] = true,  
                    ["2xRK"] = true
                },   
 
    seekcone    = 40,                               -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 60,                               -- getting outside this cone will break the lock.  Divided by 2. 
    
    armdelay    = 0.00                              -- minimum fuse arming delay
} )

ACF_defineGun("CBU-87", {                        -- id
    name            = "430kg CBU-87",
    desc            = "The CBU-87 is a 431kg cluster bomb used by the United States Air Force. CBU stands for Cluster Bomb Unit.",
    model           = "models/bombs/cbu87_unfolded.mdl",
    gunclass        = "BOMB",
    rack            = "1xRK",                       -- Which rack to spawn this missile on?
    length          = 175,
    caliber         = 18,
    weight          = 430,                          -- Don't scale down the weight though!
    year            = 1986,
    modeldiameter   = 30,                   -- in cm
    round = {
        model       = "models/bombs/cbu87_unfolded.mdl",
        rackmdl     = "models/bombs/cbu87_folded.mdl",
        maxlength   = 200,
        casing      = 0.2,                          -- thickness of missile casing, cm
        armour      = 25,                           -- effective armour thickness of casing, in mm
        propweight  = 0,                            -- motor mass - motor casing
        thrust      = 1,                            -- average thrust - kg*in/s^2
        burnrate    = 1,                            -- cm^3/s at average chamber pressure
        starterpct  = 1,                            -- percentage of the propellant consumed in the starter motor.
        minspeed    = 1,                            -- minimum speed beyond which the fins work at 100% efficiency
        dragcoef    = 0.003,                        -- drag coefficient of the missile
        finmul      = 0.004,                        -- fin multiplier (mostly used for unpropelled guidance)
        penmul      = math.sqrt(0.05)               -- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
    },
   
    ent         = "acf_missile_to_rack",            -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb"},
    fuses       = {"Contact", "Optical", "Cluster"},

    racks       = {                                 -- a whitelist for racks that this missile can load into.
                    ["1xRK"] = true,  
                    ["2xRK"] = true
                },   
 
    seekcone    = 40,                               -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 60,                               -- getting outside this cone will break the lock.  Divided by 2. 
    
    armdelay    = 0.00                              -- minimum fuse arming delay
} )

ACF_defineGun("RBK-500", {                        -- id
    name            = "500kg RBK-500",
    desc            = "The RBK-500 is a 500kg russian cluster bomb used by the Russian Air Force. That's it.",
    model           = "models/bombs/rbk500.mdl",
    gunclass        = "BOMB",
    rack            = "1xRK",                       -- Which rack to spawn this missile on?
    length          = 252,
    caliber         = 18,
    weight          = 500,                          -- Don't scale down the weight though!
    year            = 1990,
    modeldiameter   = 45,                   -- in cm
    round = {
        model       = "models/bombs/rbk500.mdl",
        rackmdl     = "models/bombs/rbk500.mdl",
        maxlength   = 200,
        casing      = 0.2,                          -- thickness of missile casing, cm
        armour      = 25,                           -- effective armour thickness of casing, in mm
        propweight  = 0,                            -- motor mass - motor casing
        thrust      = 1,                            -- average thrust - kg*in/s^2
        burnrate    = 1,                            -- cm^3/s at average chamber pressure
        starterpct  = 1,                            -- percentage of the propellant consumed in the starter motor.
        minspeed    = 1,                            -- minimum speed beyond which the fins work at 100% efficiency
        dragcoef    = 0.003,                        -- drag coefficient of the missile
        finmul      = 0.004,                        -- fin multiplier (mostly used for unpropelled guidance)
        penmul      = math.sqrt(0.05)               -- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
    },
   
    ent         = "acf_missile_to_rack",            -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb"},
    fuses       = {"Contact", "Optical", "Cluster"},

    racks       = {                                 -- a whitelist for racks that this missile can load into.
                    ["1xRK"] = true,  
                    ["2xRK"] = true
                },   
 
    seekcone    = 40,                               -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 60,                               -- getting outside this cone will break the lock.  Divided by 2. 
    
    armdelay    = 0.00                              -- minimum fuse arming delay
} )