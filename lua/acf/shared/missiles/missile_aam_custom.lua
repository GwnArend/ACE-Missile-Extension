-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("AIM-9B AAM", { --id
	name = "AIM-9B Missile",
        desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/aim9b.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 290,
	modeldiameter = 55,
	caliber = 9,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1953,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/aim9b.mdl",
		rackmdl		= "models/missiles/aim9b.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 10000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 200,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 1			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 30,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 2,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 4
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("AIM-9D AAM", { --id
	name = "AIM-9D Missile",
        desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/aim9d.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 290,
	modeldiameter = 55,
	caliber = 9,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1954,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/aim9d.mdl",
		rackmdl		= "models/missiles/aim9d.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 10000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 200,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 1			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 25,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 2.5,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 3
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("AIM-9E AAM", { --id
	name = "AIM-9E Missile",
        desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/aim9e.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 290,
	modeldiameter = 55,
	caliber = 9,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1953,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/aim9e.mdl",
		rackmdl		= "models/missiles/aim9e.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 10000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 300,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 1			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 20,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 35,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 3,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 3
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("AIM-9J AAM", { --id
	name = "AIM-9J Missile",
        desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/aim9m.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 290,
	modeldiameter = 55,
	caliber = 9,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1972,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/aim9j.mdl",
		rackmdl		= "models/missiles/aim9j.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 10000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 300,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 1			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 35,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 3.2,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 3
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("AIM-9L AAM", { --id
	name = "AIM-9L Missile",
        desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/aim9l.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 290,
	modeldiameter = 55,
	caliber = 8,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1978,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/aim9l.mdl",
		rackmdl		= "models/missiles/aim9l.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 10000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 250,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 1			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 30,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 4,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 3
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("R-60M AAM", { --id
	name = "R-60M Missile",
        desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/r60m.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 220,
	modeldiameter = 42,
	caliber = 8,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1974,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/r60m.mdl",
		rackmdl		= "models/missiles/r60m.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 10000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 250,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 1			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 25,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 40,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 5,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.05,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 6
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("R550 Magic 2 AAM", { --id
	name = "R550 Magic 2 Missile",
        desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/r550magic.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 280,
	modeldiameter = 70,
	caliber = 10,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1999,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/r550magic.mdl",
		rackmdl		= "models/missiles/r550magic.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 10000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 250,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 1			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 25,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 7,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 2
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("R-13M AAM", { --id
	name = "R-13M Missile",
    desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/r13m.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 290,
	modeldiameter = 55,
	caliber = 8,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1955,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/r13m.mdl",
		rackmdl		= "models/missiles/r13m.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 10000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 350,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 1			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 20,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 40,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 3,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 3
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("R-13M1 AAM", { --id
	name = "R-13M1 Missile",
    desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/aim9m.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 290,
	modeldiameter = 55,
	caliber = 8,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1955,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/r13m1.mdl",
		rackmdl		= "models/missiles/r13m1.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 10000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 350,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 1			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 35,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 40,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 4,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 3
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("R-3S AAM", { --id
	name = "R-3S Missile",
        desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/r3s.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 290,
	modeldiameter = 55,
	caliber = 9,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1955,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/r3s.mdl",
		rackmdl		= "models/missiles/r3s.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 15000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 175,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.04,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 40,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 2.5,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 3
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("R-3R AAM", { --id
	name = "R-3R Missile",
        desc = "The gold standard in airborne jousting sticks. Agile and reliable with a rather underwhelming effective range, this homing missile is the weapon of choice for dogfights.\nSeeks 20 degrees, so well suited to dogfights.",
	model = "models/missiles/r3r.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 300,
	modeldiameter = 55,
	caliber = 9,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1955,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/r3r.mdl",
		rackmdl		= "models/missiles/r3r.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 15000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 175,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 14000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.04,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Radar"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 35,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 3,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 1
} )
--AIM-120 Sparrow. A medium-Range AAM missile, perfect for those who really need a decent boom in a single pass. Just remember that this is not an AIM-9 and is better to aim before.
ACF_defineGun("R-27R AAM", { --id
	name = "R-27R Missile",
	desc = "The Vympel R-27 (NATO reporting name AA-10 Alamo) is a family of air-to-air missile developed by the Soviet Union. It remains in service with the Russian Air Force, air forces of the Commonwealth of Independent States and air forces of many other countries as standard medium range air-to-air missile even though they have the more advanced R-77. R-27R is the radar guided version of this missile.",
	model = "models/missiles/r27r.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 420,
	caliber = 12,
	weight = 125,    -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
	year = 1968,
	effect = "Rocket Motor",
	rofmod = 0.1,
    modeldiameter = 85, -- in cm
	prepush = true,
	round = {
		model		= "models/missiles/r27r.mdl",
		rackmdl		= "models/missiles/r27r.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 2,	        -- motor mass - motor casing
		thrust		= 25000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 200,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 10000,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.02,		-- drag coefficient while falling
        dragcoefflight  = 0.06,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Radar"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 7.5,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 20,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 4.0,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 0.2,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 2.5
} )

--AIM-120 Sparrow. A medium-Range AAM missile, perfect for those who really need a decent boom in a single pass. Just remember that this is not an AIM-9 and is better to aim before.
ACF_defineGun("R-27T AAM", { --id
	name = "R-27T Missile",
	desc = "The Vympel R-27 (NATO reporting name AA-10 Alamo) is a family of air-to-air missile developed by the Soviet Union. It remains in service with the Russian Air Force, air forces of the Commonwealth of Independent States and air forces of many other countries as standard medium range air-to-air missile even though they have the more advanced R-77. R-27T is the infrared version of this missile",
	model = "models/missiles/r27t.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 420,
	caliber = 12,
	weight = 125,    -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
	year = 1968,
	effect = "Rocket Motor",
	rofmod = 0.1,
    modeldiameter = 85, -- in cm
	prepush = true,
	round = {
		model		= "models/missiles/r27t.mdl",
		rackmdl		= "models/missiles/r27t.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 2,	        -- motor mass - motor casing
		thrust		= 25000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 200,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 10000,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.02,		-- drag coefficient while falling
        dragcoefflight  = 0.06,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 7.5,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 20,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 4.0,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 0.2,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 2.5
} )

-- The AIM-9 Sidewinder. The perfect choice for dogfights at short range. Although respectable payload, still tiny.
ACF_defineGun("R-73 AAM", { --id
	name = "R-73 Missile",
        desc = "The R-73 (NATO reporting name AA-11 Archer) is a short-range air-to-air missile developed by Vympel NPO that entered service in 1984.",
	model = "models/missiles/r73.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 285,
	modeldiameter = 55,
	caliber = 10,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1984,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/r73.mdl",
		rackmdl		= "models/missiles/r73.mdl",
		maxlength	= 160,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 15000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 175,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 5000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.015,		-- drag coefficient while falling
        dragcoefflight  = 0.04,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true,  ["2xRK"] = true, ["3xRK"] = true, ["1xRK_small"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 25,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 6,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 2
} )

--AIM-120 Sparrow. A medium-Range AAM missile, perfect for those who really need a decent boom in a single pass. Just remember that this is not an AIM-9 and is better to aim before.
ACF_defineGun("R-77 AAM", { --id
	name = "R-77 Missile",
	desc = "The Vympel NPO R-77 missile (NATO reporting name: AA-12 Adder) is a Russian active radar homing beyond-visual-range air-to-air missile. It is also known by its export designation RVV-AE. It is the Russian counterpart to the American AIM-120 AMRAAM missile.",
	model = "models/missiles/r77.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 258,
	caliber = 12,
	weight = 125,    -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
	year = 2002,
	effect = "Rocket Motor",
	rofmod = 0.1,
    modeldiameter = 80, -- in cm
	prepush = true,
	round = {
		model		= "models/missiles/r77.mdl",
		rackmdl		= "models/missiles/r77.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 25000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 185,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 15000,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.02,		-- drag coefficient while falling
        dragcoefflight  = 0.05,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Radar"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 6,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 20,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 2,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 1,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 1
} )

--AIM-120 Sparrow. A medium-Range AAM missile, perfect for those who really need a decent boom in a single pass. Just remember that this is not an AIM-9 and is better to aim before.
ACF_defineGun("R-40 AAM", { --id
	name = "R-40 Missile",
	desc = "The Bisnovat (later Molniya then Vympel) R-40 (NATO reporting name AA-6 'Acrid') is a long-range air-to-air missile developed in the 1960s by the Soviet Union specifically for the MiG-25P interceptor, but can also be carried by the later MiG-31. It is the largest air-to-air missile in the world ever to go into production.",
	model = "models/missiles/r40.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 615,
	caliber = 18,
	weight = 125,    -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
	year = 1960,
	effect = "Rocket Motor",
	rofmod = 0.1,
    modeldiameter = 140, -- in cm
	prepush = true,
	round = {
		model		= "models/missiles/r40.mdl",
		rackmdl		= "models/missiles/r40.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 25000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 1500,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 500,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.001,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 0.2			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Radar"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 25,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 0.1,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 0.6,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 2.5
} )

ACF_defineGun("R-24R AAM", { --id
	name = "R-24R Missile",
	desc = "The Vympel R-24 (NATO reporting name AA-7 Apex) is a medium-range air-to-air missile developed by Vympel in the Soviet Union for fighter aircraft. It is comparable to the American AIM-7 Sparrow, both in terms of overall performance as well as role",
	model = "models/missiles/r24r.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 435,
	caliber = 22.3,
	weight = 125,    -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
	year = 1981,
	effect = "Rocket Motor",
	rofmod = 0.1,
    modeldiameter = 100, -- in cm
	prepush = true,
	round = {
		model		= "models/missiles/r24r.mdl",
		rackmdl		= "models/missiles/r24r.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 2,	        -- motor mass - motor casing
		thrust		= 22000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 300,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 8000,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.02,		-- drag coefficient while falling
        dragcoefflight  = 0.06,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Radar"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 7.5,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 20,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 3.0,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 0.2,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 2.5
} )

ACF_defineGun("R-24T AAM", { --id
	name = "R-24T Missile",
	desc = "The Vympel R-24 (NATO reporting name AA-7 Apex) is a medium-range air-to-air missile developed by Vympel in the Soviet Union for fighter aircraft. It is comparable to the American AIM-7 Sparrow, both in terms of overall performance as well as role",
	model = "models/missiles/r24t.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 435,
	caliber = 22.3,
	weight = 125,    -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
	year = 1981,
	effect = "Rocket Motor",
	rofmod = 0.1,
    modeldiameter = 100, -- in cm
	prepush = true,
	round = {
		model		= "models/missiles/r24t.mdl",
		rackmdl		= "models/missiles/r24t.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 2,	        -- motor mass - motor casing
		thrust		= 22000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 300,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 8000,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.02,		-- drag coefficient while falling
        dragcoefflight  = 0.06,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 7.5,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 20,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 3.0,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 0.2,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 2.5
} )

ACF_defineGun("R-23R AAM", { --id
	name = "R-23R Missile",
	desc = "The Vympel R-23 (NATO reporting name AA-7 Apex) is a medium-range air-to-air missile developed by Vympel in the Soviet Union for fighter aircraft. It is comparable to the American AIM-7 Sparrow, both in terms of overall performance as well as role",
	model = "models/missiles/r23r.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 435,
	caliber = 22.3,
	weight = 125,    -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
	year = 1981,
	effect = "Rocket Motor",
	rofmod = 0.1,
    modeldiameter = 100, -- in cm
	prepush = true,
	round = {
		model		= "models/missiles/r23r.mdl",
		rackmdl		= "models/missiles/r23r.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 2,	        -- motor mass - motor casing
		thrust		= 20000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 350,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 8000,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.02,		-- drag coefficient while falling
        dragcoefflight  = 0.06,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Radar"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 7.5,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 20,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 3.0,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 0.2,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 2.5
} )

ACF_defineGun("R-23T AAM", { --id
	name = "R-23T Missile",
	desc = "The Vympel R-23 (NATO reporting name AA-7 Apex) is a medium-range air-to-air missile developed by Vympel in the Soviet Union for fighter aircraft. It is comparable to the American AIM-7 Sparrow, both in terms of overall performance as well as role",
	model = "models/missiles/r24t.mdl",
	gunclass = "AAM",
    rack = "1xRK",  -- Which rack to spawn this missile on?
	length = 435,
	caliber = 22.3,
	weight = 125,    -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
	year = 1981,
	effect = "Rocket Motor",
	rofmod = 0.1,
    modeldiameter = 100, -- in cm
	prepush = true,
	round = {
		model		= "models/missiles/r23t.mdl",
		rackmdl		= "models/missiles/r23t.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 2,	        -- motor mass - motor casing
		thrust		= 20000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 350,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 8000,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.02,		-- drag coefficient while falling
        dragcoefflight  = 0.06,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 8,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 25,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 3.0,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 0.2,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 2.5
} )

ACF_defineGun("SRAAM", { --id
	name = "SRAAM",
        desc = "The Short Range Air-to-Air Missile, or SRAAM for short, initially known as Taildog, was an experimental British infrared homing air-to-air missile, developed between 1968 and 1980 by Hawker Siddeley Dynamics.",
	model = "models/missiles/sraam_unfolded.mdl",
	gunclass = "AAM",
    rack = "2x SRAAM",  -- Which rack to spawn this missile on?
	length = 290,
	modeldiameter = 16,
	caliber = 16.5,
	weight = 75,    -- Don't scale down the weight though!
	rofmod = 0.5,
	year = 1970,
	effect = "Rocket Motor",
	round = {
		model		= "models/missiles/sraam_unfolded.mdl",
		rackmdl		= "models/missiles/sraam_folded.mdl",
		maxlength	= 275,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 10000,	    -- average thrust - kg*in/s^2		--was 100000
		burnrate	= 700,	        -- cm^3/s at average chamber pressure	--was 650
		starterpct	= 0.1,          -- percentage of the propellant consumed in the starter motor.	--was 0.2
		minspeed	= 5000,		-- minimum speed beyond which the fins work at 100% efficiency  --was 3000
		dragcoef	= 0.02,		-- drag coefficient while falling
        dragcoefflight  = 0.03,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Infrared"},
    fuses       = {"Contact", "Radio"},

    racks           = {                                         -- a whitelist for racks that this missile can load into.
                        ["2x SRAAM"] = true,
                    },    
    seekcone    = 30,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 25
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.		--was 30

    agility     = 10,  -- multiplier for missile turn-rate.      --was 5
	armdelay    = 0.00,     -- minimum fuse arming delay		--was 0.4
	SeekSensitivity = 3
} )

ACF_defineGun("AIM-7F", {                              -- id
    name            = "AIM-7F",
    desc            = "The AIM-7 Sparrow (Air Intercept Missile) is an American, medium-range semi-active radar homing air-to-air missile operated by the United States Air Force, United States Navy, and United States Marine Corps, as well as other various air forces and navies.",
    model           = "models/missiles/aim7f.mdl",
    effect          = "Rocket Motor Missile1",
    gunclass        = "AAM",
    rack            = "1xRK",                               -- Which rack to spawn this missile on?
    length          = 377,
    caliber         = 12,
    weight          = 125,                                  -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
    year            = 1976,
	effect = "Rocket Motor",
    rofmod          = 0.35,
    modeldiameter   = 102,                           -- in cm
    round = {
        model           = "models/missiles/aim7f.mdl",
        rackmdl         = "models/missiles/aim7f.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 20000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 350,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 10000,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.002,		-- drag coefficient while falling
        dragcoefflight  = 0.05,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Radar"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 10,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 25,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 1.5,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 1,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 1
} )


ACF_defineGun("AIM-120B AAM", {                              -- id
    name            = "AIM-120B Missile",
    desc            = "The AIM-120 Advanced Medium-Range Air-to-Air Missile, or AMRAAM, is an American beyond-visual-range air-to-air missile (BVRAAM) capable of all-weather day-and-night operations. It is 7 inches in diameter, and employs active transmit-receive radar guidance instead of semi-active receive-only radar guidance. It is a fire-and-forget weapon, unlike the previous generation Sparrow missiles which needed guidance from the firing aircraft",
    model           = "models/missiles/aim120b.mdl",
    effect          = "Rocket Motor Missile1",
    gunclass        = "AAM",
    rack            = "1xRK",                               -- Which rack to spawn this missile on?
    length          = 364,
    caliber         = 12,
    weight          = 125,                                  -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
    year            = 1991,
	effect = "Rocket Motor",
    rofmod          = 0.35,
    modeldiameter   = 33,                           -- in cm
    round = {
        model           = "models/missiles/aim120b.mdl",
        rackmdl         = "models/missiles/aim120b.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 25000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 185,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 15000,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.02,		-- drag coefficient while falling
        dragcoefflight  = 0.05,                 -- drag coefficient during flight
		finmul		= 0.5			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Radar"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 10,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 25,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 3,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 1,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 1
} )

ACF_defineGun("AIM-54C", {                               -- id
    name            = "AIM-54C Missile",
    desc            = "The AIM-54 Phoenix is an American radar-guided, long-range air-to-air missile (AAM), carried in clusters of up to six missiles on the Grumman F-14 Tomcat, its only operational launch platform",
    model           = "models/missiles/aim54c.mdl",
    effect          = "Rocket Motor Missile1",
    gunclass        = "AAM",
    rack            = "1xRK",                               -- Which rack to spawn this missile on?
    length          = 396,
    caliber         = 22,
    weight          = 463,                                  -- Don't scale down the weight though!
    year            = 1974,
	effect = "Rocket Motor",
    rofmod          = 0.32,
    modeldiameter   = 39,                           -- in cm
    round = {
        model           = "models/missiles/aim54c.mdl",
        rackmdl         = "models/missiles/aim54c.mdl",
		maxlength	= 220,
		casing		= 0.1,	        -- thickness of missile casing, cm
		armour		= 10,			-- effective armour thickness of casing, in mm
		propweight	= 1,	        -- motor mass - motor casing
		thrust		= 25000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate	= 1500,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct	= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed	= 500,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef	= 0.001,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul		= 0.2			-- fin multiplier (mostly used for unpropelled guidance)
	},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Radar"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 25,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 0.1,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 0.6,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 2.5
} )

ACF_defineGun("MATRA SUPER 530F", {                              -- id
    name            = "Matra Super 530F Missile",
    desc            = "The Matra Super 530 is a French short to medium-range air-to-air missile. The Super 530 series is an improved type of the R.530 missile.",
    model           = "models/missiles/matra530f.mdl",
    effect          = "Rocket Motor Missile1",
    gunclass        = "AAM",
    rack            = "1xRK",                               -- Which rack to spawn this missile on?
    length          = 368,
    caliber         = 12,
    weight          = 125,                                  -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
    year            = 1980,
	effect = "Rocket Motor",
    rofmod          = 0.35,
    modeldiameter   = 28,                           -- in cm
    round = {
        model           = "models/missiles/matra530f.mdl",
        rackmdl         = "models/missiles/matra530f.mdl",
        maxlength       = 370,
        casing          = 0.1,                              -- thickness of missile casing, cm
        armour          = 10,                               -- effective armour thickness of casing, in mm
        propweight      = 1,                                -- motor mass - motor casing
        thrust          = 50000,                            -- average thrust - kg*in/s^2       --was 25000
        burnrate        = 700,                              -- cm^3/s at average chamber pressure   --was 450
        starterpct      = 0.02,                             -- percentage of the propellant consumed in the starter motor.
        minspeed        = 23000,                            -- minimum speed beyond which the fins work at 100% efficiency   --was 3000
        dragcoef        = 0.002,                            -- drag coefficient while falling
        dragcoefflight  = 0.05,                             -- drag coefficient during flight
        finmul          = 0.025                             -- fin multiplier (mostly used for unpropelled guidance)
    },

    ent             = "acf_missile_to_rack",                -- A workaround ent which spawns an appropriate rack for the missile.
    guidance        = {"Dumb", "Radar"},
    fuses           = {"Contact", "Radio"},

    racks           = {                                     -- a whitelist for racks that this missile can load into.
                        ["1xRK"] = true, 
                        ["2xRK"] = true
                    },   

    seekcone        = 10,                                   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)    --was 20
    viewcone        = 50,                                   -- getting outside this cone will break the lock.  Divided by 2.    --was 25

    agility         = 3,                                    -- multiplier for missile turn-rate. -- was 2
    armdelay        = 0.00,                                 -- minimum fuse arming delay --was 0.3
    guidelay        = 0.25,                                  -- Required time (in seconds) for missile to start guiding at target once launched
    SeekSensitivity = 2.5
} )

ACF_defineGun("ASRAAM", {                              -- id
    name            = "AIM-132 ASRAAM Missile",
    desc            = "The Advanced Short Range Air-to-Air Missile (ASRAAM), also known by its United States designation AIM-132, is an infrared homing air-to-air missile, produced by MBDA UK, that is designed for close-range combat. It is in service in the Royal Air Force (RAF), replacing the AIM-9 Sidewinder. ASRAAM is designed to allow the pilot to fire and then turn away before the opposing aircraft can close for a shot. It flies at well over Mach 3 to ranges in excess of 25 kilometres",
    model           = "models/missiles/asraam.mdl",
    effect          = "Rocket Motor Missile1",
    gunclass        = "AAM",
    rack            = "1xRK",                               -- Which rack to spawn this missile on?
    length          = 289,
    caliber         = 12,
    weight          = 125,                                  -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
    year            = 1998,
	effect = "Rocket Motor",
    rofmod          = 0.35,
    modeldiameter   = 17,                           -- in cm
    round = {
        model           = "models/missiles/asraam.mdl",
        rackmdl         = "models/missiles/asraam.mdl",
        maxlength       = 370,
        casing          = 0.1,                              -- thickness of missile casing, cm
        armour          = 10,                               -- effective armour thickness of casing, in mm
        propweight      = 1,                                -- motor mass - motor casing
        thrust          = 15000,                            -- average thrust - kg*in/s^2       --was 25000
        burnrate        = 700,                              -- cm^3/s at average chamber pressure   --was 450
        starterpct      = 0.02,                             -- percentage of the propellant consumed in the starter motor.
        minspeed        = 9000,                            -- minimum speed beyond which the fins work at 100% efficiency   --was 3000
        dragcoef        = 0.002,                            -- drag coefficient while falling
        dragcoefflight  = 0.05,                             -- drag coefficient during flight
        finmul          = 0.025                             -- fin multiplier (mostly used for unpropelled guidance)
    },

    ent             = "acf_missile_to_rack",                -- A workaround ent which spawns an appropriate rack for the missile.
    guidance        = {"Dumb", "Infrared"},
    fuses           = {"Contact", "Radio"},

    racks           = {                                     -- a whitelist for racks that this missile can load into.
                        ["1xRK"] = true, 
                        ["2xRK"] = true
                    },   

    seekcone        = 10,                                   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)    --was 20
    viewcone        = 50,                                   -- getting outside this cone will break the lock.  Divided by 2.    --was 25

    agility         = 3,                                    -- multiplier for missile turn-rate. -- was 2
    armdelay        = 0.00,                                 -- minimum fuse arming delay --was 0.3
    guidelay        = 0.25,                                  -- Required time (in seconds) for missile to start guiding at target once launched
    SeekSensitivity = 2.5
} )

ACF_defineGun("Meteor", {                              -- id
    name            = "Meteor Missile",
    desc            = "The Meteor is a European active radar guided beyond-visual-range air-to-air missile (BVRAAM) developed and manufactured by MBDA. It offers a multi-shot capability (multiple launches against multiple targets), and has the ability to engage highly maneuverable targets, such as jets, and small targets such as UAVs and cruise missiles in a heavy electronic countermeasures (ECM) environment with a range far in excess of 100 kilometres",
    model           = "models/missiles/meteor.mdl",
    effect          = "Rocket Motor Missile1",
    gunclass        = "AAM",
    rack            = "1xRK",                               -- Which rack to spawn this missile on?
    length          = 366,
    caliber         = 12,
    weight          = 125,                                  -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
    year            = 2016,
	effect = "Rocket Motor",
    rofmod          = 0.35,
    modeldiameter   = 20,                           -- in cm
    round = {
        model           = "models/missiles/meteor.mdl",
        rackmdl         = "models/missiles/meteor.mdl",
        maxlength       = 370,
        casing          = 0.1,                              -- thickness of missile casing, cm
        armour          = 10,                               -- effective armour thickness of casing, in mm
        propweight      = 1,                                -- motor mass - motor casing
        thrust          = 35000,                            -- average thrust - kg*in/s^2       --was 25000
        burnrate        = 150,                              -- cm^3/s at average chamber pressure   --was 450
        starterpct      = 0.02,                             -- percentage of the propellant consumed in the starter motor.
        minspeed        = 23000,                            -- minimum speed beyond which the fins work at 100% efficiency   --was 3000
        dragcoef        = 0.002,                            -- drag coefficient while falling
        dragcoefflight  = 0.05,                             -- drag coefficient during flight
        finmul          = 0.025                             -- fin multiplier (mostly used for unpropelled guidance)
    },

    ent             = "acf_missile_to_rack",                -- A workaround ent which spawns an appropriate rack for the missile.
    guidance        = {"Dumb", "Radar"},
    fuses           = {"Contact", "Radio"},

    racks           = {                                     -- a whitelist for racks that this missile can load into.
                        ["1xRK"] = true, 
                        ["2xRK"] = true
                    },   

    seekcone        = 10,                                   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)    --was 20
    viewcone        = 50,                                   -- getting outside this cone will break the lock.  Divided by 2.    --was 25

    agility         = 3,                                    -- multiplier for missile turn-rate. -- was 2
    armdelay        = 0.00,                                 -- minimum fuse arming delay --was 0.3
    guidelay        = 0.25,                                  -- Required time (in seconds) for missile to start guiding at target once launched
    SeekSensitivity = 2.5
} )

ACF_defineGun("MICA-EM", {                              -- id
    name            = "MICA-EM Missile",
    desc            = "The Missile d’Interception, de Combat et d’Auto-défense (English: Interception, Combat and Self-protection Missile) or MICA is a French anti-air multi-target, all weather, fire-and-forget short and medium-range missile system manufactured by MBDA France.",
    model           = "models/missiles/mica_em.mdl",
    effect          = "Rocket Motor Missile1",
    gunclass        = "AAM",
    rack            = "1xRK",                               -- Which rack to spawn this missile on?
    length          = 312,
    caliber         = 16,
    weight          = 112,                                  -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
    year            = 1991,
	effect = "Rocket Motor",
    rofmod          = 0.35,
    modeldiameter   = 16,                           -- in cm
    round = {
        model           = "models/missiles/mica_em.mdl",
        rackmdl         = "models/missiles/mica_em.mdl",
        maxlength       = 310,
        casing          = 0.1,                              -- thickness of missile casing, cm
        armour          = 10,                               -- effective armour thickness of casing, in mm
        propweight      = 1,                                -- motor mass - motor casing
        thrust          = 20000,                            -- average thrust - kg*in/s^2       --was 25000
        burnrate        = 325,                              -- cm^3/s at average chamber pressure   --was 450
        starterpct      = 0.02,                             -- percentage of the propellant consumed in the starter motor.
        minspeed        = 15000,                            -- minimum speed beyond which the fins work at 100% efficiency   --was 3000
        dragcoef        = 0.005,                            -- drag coefficient while falling
        dragcoefflight  = 0.05,                             -- drag coefficient during flight
        finmul          = 0.5                             -- fin multiplier (mostly used for unpropelled guidance)
    },

    ent             = "acf_missile_to_rack",                -- A workaround ent which spawns an appropriate rack for the missile.
    guidance        = {"Dumb", "Radar"},
    fuses           = {"Contact", "Radio"},

    racks           = {                                     -- a whitelist for racks that this missile can load into.
                        ["1xRK"] = true, 
                        ["2xRK"] = true
                    },   

    seekcone        = 10,                                   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)    --was 20
    viewcone        = 50,                                   -- getting outside this cone will break the lock.  Divided by 2.    --was 25

    agility         = 4,                                    -- multiplier for missile turn-rate. -- was 2
    armdelay        = 0.00,                                 -- minimum fuse arming delay --was 0.3
    guidelay        = 0.25,                                  -- Required time (in seconds) for missile to start guiding at target once launched
    SeekSensitivity = 2.5
} )

ACF_defineGun("R-33", {                              -- id
    name            = "R-33",
    desc            = "The R-33 (Russian: Вымпел Р-33, NATO reporting name: AA-9 Amos) is a long-range air-to-air missile developed by Vympel. It is the primary armament of the MiG-31 interceptor, intended to attack large high-speed targets such as the SR-71 Blackbird, the B-1 Lancer bomber, and the B-52 Stratofortress.",
    model           = "models/missiles/r33.mdl",
    effect          = "Rocket Motor Missile1",
    gunclass        = "AAM",
    rack            = "1xRK",                               -- Which rack to spawn this missile on?
    length          = 414,
    caliber         = 38,
    weight          = 490,                                  -- Don't scale down the weight though! --was 152, I cut that down to 1/2 an AIM-7s weight
    year            = 1980,
	effect = "Rocket Motor",
    rofmod          = 0.35,
    modeldiameter   = 38,                           -- in cm
    round = {
        model           = "models/missiles/r33.mdl",
        rackmdl         = "models/missiles/r33.mdl",
		maxlength		= 220,
		casing			= 0.1,	        -- thickness of missile casing, cm
		armour			= 10,			-- effective armour thickness of casing, in mm
		propweight		= 1,	        -- motor mass - motor casing
		thrust			= 20000,	    -- average thrust - kg*in/s^2		--was 25000
		burnrate		= 1000,	        -- cm^3/s at average chamber pressure	--was 450
		starterpct		= 0.02,          -- percentage of the propellant consumed in the starter motor.
		minspeed		= 1200,			-- minimum speed beyond which the fins work at 100% efficiency   --was 3000
		dragcoef		= 0.002,		-- drag coefficient while falling
        dragcoefflight  = 0.02,                 -- drag coefficient during flight
		finmul			= 0.2			-- fin multiplier (mostly used for unpropelled guidance)
},

    ent         = "acf_missile_to_rack", -- A workaround ent which spawns an appropriate rack for the missile.
	guidance    = {"Dumb", "Radar"},
    fuses       = {"Contact", "Radio"},

	racks       = {["1xRK"] = true, ["2xRK"] = true},   -- a whitelist for racks that this missile can load into.  can also be a 'function(bulletData, rackEntity) return boolean end'

    seekcone    = 15,   -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.)	--was 20
    viewcone    = 45,   -- getting outside this cone will break the lock.  Divided by 2.	--was 25

    agility     = 0.05,    -- multiplier for missile turn-rate. -- was 2
	armdelay    = 0.6,     -- minimum fuse arming delay --was 0.3
	SeekSensitivity = 2.5
} )