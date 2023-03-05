
-- The AGM-114, a laser guided missile with high anti-tank effectiveness.
ACF_defineGun("KH-29 ASM", { 							--id
	name 			= "KH-29 Missile",
	desc 			= "The Kh-29 (Russian: Х-29; NATO: AS-14 'Kedge'; GRAU: 9M721) is a Soviet air-to-surface missile with a range of 10–30 km. It has a large warhead of 320 kg, has a choice of laser, infrared, active radar or TV guidance, and is typically carried by tactical aircraft such as the Su-24, Su-30, MiG-29K as well as the Su-25, giving these aircraft an expanded standoff capability.",
	model 			= "models/missiles/kh29.mdl",
	gunclass 		= "ASM",
    rack 			= "2x AGM-114",  					-- Which rack to spawn this missile on?
	length 			= 410,
	caliber	 		= 38,
	weight 			= 140,    							-- Don't scale down the weight though!
    modeldiameter 	= 40, 		-- in cm
	rofmod          = 0.2,
	year 			= 1984,
	round = {
		model			= "models/missiles/kh29.mdl",
		rackmdl			= "models/missiles/kh29.mdl",
		maxlength		= 150,
		casing			= 0.2,							-- thickness of missile casing, cm
		armour			= 10,							-- effective armour thickness of casing, in mm
		propweight		= 1,							-- motor mass - motor casing
		thrust			= 15000,						-- average thrust - kg*in/s^2   --was 12000
		burnrate		= 100,							-- cm^3/s at average chamber pressure
		starterpct		= 0.25,							-- percentage of the propellant consumed in the starter motor.   --was 0.25
		minspeed		= 4000,							-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef		= 0.001,						-- drag coefficient while falling
        dragcoefflight  = 0.05,                 		-- drag coefficient during flight
		finmul			= 0.1,							-- fin multiplier (mostly used for unpropelled guidance)
        penmul      	= math.sqrt(0.7)  			-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
	},

    ent         = "acf_missile_to_rack", 				-- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Laser", "Infrared"},
    fuses       = {"Contact", "Optical"},

    racks       = {										-- a whitelist for racks that this missile can load into.
        			["1xRK"] = true,
    				["2x AGM-114"] = false, 
    				["4x AGM-114"] = false,

    			},

    seekcone    = 10,
    viewcone    = 40,   								-- getting outside this cone will break the lock.  Divided by 2.
    agility     = 0.07,									-- multiplier for missile turn-rate.
    armdelay    = 0.00     								-- minimum fuse arming delay
} )


-- The AGM-114, a laser guided missile with high anti-tank effectiveness.
ACF_defineGun("KH-25 ASM", { 							--id
	name 			= "KH-25 Missile",
	desc 			= "The Kh-25/Kh-25M (Russian: Х-25; NATO: AS-10 'Karen') is a family of Soviet lightweight air-to-ground missiles with a modular range of guidance systems and a range of 10 km.[1] The anti-radar variant (Kh-25MP) is known to NATO as the AS-12 'Kegler' and has a range up to 40 km.[2] Designed by Zvezda-Strela, the Kh-25 is derived from the laser-guided version of the Kh-23 Grom (AS-7 'Kerry'). The Kh-25 remains in widespread use despite the apparent development of a successor, the Kh-38.",
	model 			= "models/missiles/kh25.mdl",
	gunclass 		= "ASM",
    rack 			= "1xRK",  					-- Which rack to spawn this missile on?
	length 			= 415,
	caliber	 		= 27.5,
	weight 			= 320,    							-- Don't scale down the weight though!
    modeldiameter 	= 30, 						-- in cm
	rofmod          = 0.2,
	year 			= 1984,
	round = {
		model			= "models/missiles/kh25.mdl",
		rackmdl			= "models/missiles/kh25.mdl",
		maxlength		= 150,
		casing			= 0.2,							-- thickness of missile casing, cm
		armour			= 10,							-- effective armour thickness of casing, in mm
		propweight		= 1,							-- motor mass - motor casing
		thrust			= 15000,						-- average thrust - kg*in/s^2   --was 12000
		burnrate		= 100,							-- cm^3/s at average chamber pressure
		starterpct		= 0.25,							-- percentage of the propellant consumed in the starter motor.   --was 0.25
		minspeed		= 4000,							-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef		= 0.001,						-- drag coefficient while falling
        dragcoefflight  = 0.05,                 		-- drag coefficient during flight
		finmul			= 0.1,							-- fin multiplier (mostly used for unpropelled guidance)
        penmul      	= math.sqrt(0.6)  			-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
	},

    ent         = "acf_missile_to_rack", 				-- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Laser", "Infrared"},
    fuses       = {"Contact", "Optical"},

    racks       = {										-- a whitelist for racks that this missile can load into.
        			["1xRK"] = true,
    				["2x AGM-114"] = false, 
    				["4x AGM-114"] = false,

    			},

    seekcone    = 10,
    viewcone    = 40,   								-- getting outside this cone will break the lock.  Divided by 2.
    agility     = 0.08,									-- multiplier for missile turn-rate.
    armdelay    = 0.00     								-- minimum fuse arming delay
} )


-- The AGM-114, a laser guided missile with high anti-tank effectiveness.
ACF_defineGun("KH-23 ASM", { 							--id
	name 			= "KH-23 Grom Missile",
	desc 			= "The Zvezda Kh-66 and Kh-23 Grom (Russian: Х-23 Гром 'Thunder'; NATO:AS-7 'Kerry') are a family of early Soviet tactical air-to-surface missiles with a range of 10 km. They were intended for use against small ground or naval targets. The Kh-66 was effectively a heavy-warhead, beam-riding version of the K-8 (AA-3 'Anab') air-to-air missile rushed into service in Vietnam in 1968. The Kh-23 was an improved Kh-66 with command-guidance, similar to the AGM-12 Bullpup.",
	model 			= "models/missiles/kh23.mdl",
	gunclass 		= "ASM",
    rack 			= "1xRK",  					-- Which rack to spawn this missile on?
	length 			= 410,
	caliber	 		= 27.5,
	weight 			= 111,    							-- Don't scale down the weight though!
    modeldiameter 	= 30, 						-- in cm
	rofmod          = 0.2,
	year 			= 1984,
	round = {
		model			= "models/missiles/kh23.mdl",
		rackmdl			= "models/missiles/kh23.mdl",
		maxlength		= 150,
		casing			= 0.2,							-- thickness of missile casing, cm
		armour			= 10,							-- effective armour thickness of casing, in mm
		propweight		= 1,							-- motor mass - motor casing
		thrust			= 15000,						-- average thrust - kg*in/s^2   --was 12000
		burnrate		= 100,							-- cm^3/s at average chamber pressure
		starterpct		= 0.25,							-- percentage of the propellant consumed in the starter motor.   --was 0.25
		minspeed		= 4000,							-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef		= 0.001,						-- drag coefficient while falling
        dragcoefflight  = 0.05,                 		-- drag coefficient during flight
		finmul			= 0.1,							-- fin multiplier (mostly used for unpropelled guidance)
        penmul      	= math.sqrt(0.518)  			-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
	},

    ent         = "acf_missile_to_rack", 				-- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Laser", "Infrared"},
    fuses       = {"Contact", "Optical"},

    racks       = {										-- a whitelist for racks that this missile can load into.
        			["1xRK"] = true,
    				["2x AGM-114"] = false, 
    				["4x AGM-114"] = false,

    			},

    seekcone    = 10,
    viewcone    = 40,   								-- getting outside this cone will break the lock.  Divided by 2.
    agility     = 0.09,									-- multiplier for missile turn-rate.
    armdelay    = 0.00     								-- minimum fuse arming delay
} )


-- The AGM-114, a laser guided missile with high anti-tank effectiveness.
ACF_defineGun("9K121 ASM", { 							--id
	name 			= "9K121 Vikhr Missile",
	desc 			= "The 9K121 Vikhr (Russian: Вихрь, English: Whirlwind; NATO reporting name: AT-16 Scallion) is a Russian laser beam riding anti-tank missile. 9K121 is the GRAU designation for the missile system. The missile can be launched from warships, Ka-50 and Ka-52 helicopters, and Su-25T aircraft. It was first shown publicly at the 1992 Farnborough Airshow.",
	model 			= "models/missiles/9k121.mdl",
	gunclass 		= "ASM",
    rack 			= "6x 9K121",  					-- Which rack to spawn this missile on?
	length 			= 290,
	caliber	 		= 13,
	weight 			= 111,    							-- Don't scale down the weight though!
    modeldiameter 	= 15, 						-- in cm
	rofmod          = 0.2,
	year 			= 1984,
	round = {
		model			= "models/missiles/9k121.mdl",
		rackmdl			= "models/missiles/9k121_folded.mdl",
		maxlength		= 150,
		casing			= 0.2,							-- thickness of missile casing, cm
		armour			= 10,							-- effective armour thickness of casing, in mm
		propweight		= 1,							-- motor mass - motor casing
		thrust			= 15000,						-- average thrust - kg*in/s^2   --was 12000
		burnrate		= 100,							-- cm^3/s at average chamber pressure
		starterpct		= 0.25,							-- percentage of the propellant consumed in the starter motor.   --was 0.25
		minspeed		= 4000,							-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef		= 0.001,						-- drag coefficient while falling
        dragcoefflight  = 0.05,                 		-- drag coefficient during flight
		finmul			= 0.1,							-- fin multiplier (mostly used for unpropelled guidance)
        penmul      	= math.sqrt(0.639)  			-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
	},

    ent         = "acf_missile_to_rack", 				-- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Laser"},
    fuses       = {"Contact", "Optical"},

    racks       = {										-- a whitelist for racks that this missile can load into.
        			["6x 9K121"] = true,
    			},

    seekcone    = 10,
    viewcone    = 40,   								-- getting outside this cone will break the lock.  Divided by 2.
    agility     = 0.09,									-- multiplier for missile turn-rate.
    armdelay    = 0.00     								-- minimum fuse arming delay
} )

ACF_defineGun("AGM-65D", { --id
	name = "AGM-65D Maverick Missile",
	desc = "The AGM-65 Maverick is an air-to-ground missile (AGM) designed for close air support. It is the most widely produced precision-guided missile in the Western world,[4] and is effective against a wide range of tactical targets, including armor, air defenses, ships, ground transportation and fuel storage facilities.",
	model = "models/missiles/agm65d.mdl",
	gunclass = "ASM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 254,
	caliber = 22,
	weight = 300,    -- Don't scale down the weight though!
	year = 1974,
	modeldiameter = 30, -- in cm
	rofmod          = 0.3,
	round = {
		model		= "models/missiles/agm65d.mdl",
		rackmdl		= "models/missiles/agm65d.mdl",
		maxlength	= 220,
		casing		= 0.2,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 5,	        -- motor mass - motor casing
		thrust		= 18000,	    -- average thrust - kg*in/s^2		--was 10000
		burnrate	= 200,	        -- cm^3/s at average chamber pressure	--was 800
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 1000,			-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef	= 0.01,		-- drag coefficient while falling
                dragcoefflight  = 0.1,                 -- drag coefficient during flight
		finmul		= 0.05			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb" , "Infrared"},
    fuses       = {"Contact", "Optical"},

	racks       = {["1xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 10,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 60,   -- getting outside this cone will break the lock.  Divided by 2.

    agility     = 0.15,    -- multiplier for missile turn-rate.
	armdelay    = 0.00,     -- minimum fuse arming delay --was 0.3
	penmul      = math.sqrt(0.53)  	-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
} )

ACF_defineGun("KEPD 350", { --id
	name = "Taurus KEPD 350 Missile",
	desc = "a Swedish-German air-launched cruise missile, manufactured by Taurus Systems and used by Germany, Spain, and South Korea. Taurus Systems GmbH is a partnership between MBDA Deutschland GmbH (formerly LFK) and Saab Bofors Dynamics.",
	model = "models/missiles/taurus_unfolded.mdl",
	gunclass = "ASM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 500,
	caliber = 22,
	weight = 300,    -- Don't scale down the weight though!
	year = 2005,
	modeldiameter = 100, -- in cm
	rofmod          = 0.3,
	round = {
		model		= "models/missiles/taurus_unfolded.mdl",
		rackmdl		= "models/missiles/taurus_folded.mdl",
		maxlength	= 220,
		casing		= 0.2,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 5,	        -- motor mass - motor casing
		thrust		= 18000,	    -- average thrust - kg*in/s^2		--was 10000
		burnrate	= 200,	        -- cm^3/s at average chamber pressure	--was 800
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 1000,			-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef	= 0.01,		-- drag coefficient while falling
                dragcoefflight  = 0.1,                 -- drag coefficient during flight
		finmul		= 0.05			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb" , "Radar", "Laser"},
    fuses       = {"Contact", "Optical"},

	racks       = {["1xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 10,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 60,   -- getting outside this cone will break the lock.  Divided by 2.

    agility     = 0.15,    -- multiplier for missile turn-rate.
	armdelay    = 0.00,     -- minimum fuse arming delay --was 0.3
	penmul      = math.sqrt(0.53)  	-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
} )
