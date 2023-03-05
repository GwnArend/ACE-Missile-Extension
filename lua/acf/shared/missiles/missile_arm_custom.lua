--define the class
ACF_defineGunClass("ARM", {
    type            = "missile",
    spread          = 1,
    name            = "[ARM] - Anti-Radiation Missile",
    desc            = ACFTranslation.MissileClasses[1],
    muzzleflash     = "40mm_muzzleflash_noscale",
    rofmod          = 1,
    sound           = "acf_extra/airfx/rocket_fire2.wav",
    soundDistance   = " ",
    soundNormal     = " ",
    effect          = "Rocket Motor Missile1",
    year = 1953,
    reloadmul       = 8,

    ammoBlacklist   = {"AP", "APHE", "FL", "HEAT","THEAT"} -- Including FL would mean changing the way round classes work.
} )
ACF_defineGun("AGM-88", { --id
	name = "AGM-88 HARM Missile",
	desc = "The AGM-88 HARM (High-speed Anti-Radiation Missile) is a tactical, air-to-surface anti-radiation missile designed to home in on electronic transmissions coming from surface-to-air radar systems. It was originally developed by Texas Instruments as a replacement for the AGM-45 Shrike and AGM-78 Standard ARM system.",
	model = "models/missiles/agm-88.mdl",
	gunclass = "ARM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 415,
	caliber = 22,
	weight = 300,    -- Don't scale down the weight though!
	year = 1985,
	modeldiameter = 26, -- in cm
	rofmod          = 0.3,
	round = {
		model		= "models/missiles/agm-88.mdl",
		rackmdl		= "models/missiles/agm-88.mdl",
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
	guidance    = {"Dumb" , "Radar"},
    fuses       = {"Contact", "Optical"},

	racks       = {["1xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 10,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 60,   -- getting outside this cone will break the lock.  Divided by 2.

    agility     = 0.15,    -- multiplier for missile turn-rate.
	armdelay    = 0.00,     -- minimum fuse arming delay --was 0.3
	penmul      = math.sqrt(0.53)  	-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
} )

ACF_defineGun("JASSM", { --id
	name = "AGM-158 JASSM",
	desc = "The AGM-158 JASSM (Joint Air-to-Surface Standoff Missile) is a low observable standoff air-launched cruise missile developed by Lockheed Martin for the United States Armed Forces. It is a large, stealthy long-range weapon with a 450-kilogram (1,000 lb) armor piercing warhead..",
	model = "models/missiles/jassm.mdl",
	gunclass = "ARM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 405,
	caliber = 22,
	weight = 300,    -- Don't scale down the weight though!
	year = 2009,
	modeldiameter = 60, -- in cm
	rofmod          = 0.3,
	round = {
		model		= "models/missiles/jassm.mdl",
		rackmdl		= "models/missiles/jassm.mdl",
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

ACF_defineGun("Kh-31", { --id
	name = "Kh-31 Missile",
	desc = "The Kh-31 (Russian: Х-31; AS-17 'Krypton')[7] is a Russian air-to-surface missile carried by aircraft such as the MiG-29 or Su-27. It is capable of Mach 3.5 and was the first supersonic anti-ship missile that could be launched by tactical aircraft.",
	model = "models/missiles/kh31.mdl",
	gunclass = "ARM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 473,
	caliber = 22,
	weight = 300,    -- Don't scale down the weight though!
	year = 1988,
	modeldiameter = 35, -- in cm
	rofmod          = 0.3,
	round = {
		model		= "models/missiles/kh31.mdl",
		rackmdl		= "models/missiles/kh31.mdl",
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
	guidance    = {"Dumb" , "Radar"},
    fuses       = {"Contact", "Optical"},

	racks       = {["1xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 10,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)
    viewcone    = 60,   -- getting outside this cone will break the lock.  Divided by 2.

    agility     = 0.15,    -- multiplier for missile turn-rate.
	armdelay    = 0.00,     -- minimum fuse arming delay --was 0.3
	penmul      = math.sqrt(0.53)  	-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
} )