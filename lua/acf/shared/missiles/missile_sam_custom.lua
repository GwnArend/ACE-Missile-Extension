ACF_defineGun("VT1", {                                        -- id
    name        = "VT-1 Missile",
    desc        = "The VT1 is a surface-to-air missile designed to intercept UAVs, Helicopters and Aircraft at short to medium ranges.",
    model       = "models/missiles/vt1.mdl",
    effect      = "Rocket Motor",
    gunclass    = "SAM",
    rack        = "1x VT-1",                                   -- Which rack to spawn this missile on?
    length      = 232,                                          -- Used for the physics calculations
    modeldiameter= 18,                           -- in cm
    caliber     = 16.3,
    weight      = 71,                                           -- Don't scale down the weight though!
    year        = 1970,
    rofmod      = 0.3,
    round = {
        model           = "models/missiles/vt1.mdl",
        rackmdl         = "models/missiles/vt1_folded.mdl",
        maxlength       = 140,
        casing          = 0.1,                                  -- thickness of missile casing, cm
        armour          = 5,                                    -- effective armour thickness of casing, in mm
        propweight      = 0.8,                                  -- motor mass - motor casing
        thrust          = 10000,                                -- average thrust - kg*in/s^2
        burnrate        = 200,                                  -- cm^3/s at average chamber pressure
        starterpct      = 0.2,                                  -- percentage of the propellant consumed in the starter motor.
        minspeed        = 50,                                   -- minimum speed beyond which the fins work at 100% efficiency
        dragcoef        = 0.001,                                -- drag coefficient while falling
        dragcoefflight  = 0.02,                                -- drag coefficient during flight
        finmul          = 0.01,                                 -- fin multiplier (mostly used for unpropelled guidance)
        penmul          = math.sqrt(8.8)                        -- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
    },

    ent             = "acf_missile_to_rack",                    -- A workaround ent which spawns an appropriate rack for the missile.
    guidance        = {"Dumb", "Laser"},
    fuses           = {"Contact", "Proximity"},

    racks           = {                                         -- a whitelist for racks that this missile can load into.
                        ["1x VT-1"] = true,
                    },    

    seekcone        = 10,                                       -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.) 
    viewcone        = 20,                                       -- getting outside this cone will break the lock.  Divided by 2.    
    
    agility         = 1,                                        -- multiplier for missile turn-rate.
    armdelay        = 0.00,                                     -- minimum fuse arming delay
    SeekSensitivity = 2
} )


ACF_defineGun("9M331 TOR", {                                        -- id
    name        = "9M331 TOR Missile",
    desc        = "The 9M331 is a short range surface-to-air missile designed to engage manned aircraft, UAVs, and missiles flying at a maximum speed in excess of Mach 2. It is employed by the Russian Tor-M1 mobile air defense system and features semi-active radar guidance system.",
    model       = "models/missiles/9m331_unfolded.mdl",
    effect      = "Rocket Motor",
    gunclass    = "SAM",
    rack        = "1xRK",                                   -- Which rack to spawn this missile on?
    length      = 297,                                          -- Used for the physics calculations
	modeldiameter = 25,
    caliber     = 23,
    weight      = 165,                                           -- Don't scale down the weight though!
    year        = 1991,
    rofmod      = 0.3,
    round = {
        model           = "models/missiles/9m331_unfolded.mdl",
        rackmdl         = "models/missiles/9m331_folded.mdl",
        maxlength       = 140,
        casing          = 0.1,                                  -- thickness of missile casing, cm
        armour          = 5,                                    -- effective armour thickness of casing, in mm
        propweight      = 0.8,                                  -- motor mass - motor casing
        thrust          = 10000,                                -- average thrust - kg*in/s^2
        burnrate        = 200,                                  -- cm^3/s at average chamber pressure
        starterpct      = 0.2,                                  -- percentage of the propellant consumed in the starter motor.
        minspeed        = 50,                                   -- minimum speed beyond which the fins work at 100% efficiency
        dragcoef        = 0.001,                                -- drag coefficient while falling
        dragcoefflight  = 0.02,                                -- drag coefficient during flight
        finmul          = 0.01,                                 -- fin multiplier (mostly used for unpropelled guidance)
        penmul          = math.sqrt(8.8)                        -- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
    },

    ent             = "acf_missile_to_rack",                    -- A workaround ent which spawns an appropriate rack for the missile.
    guidance        = {"Dumb", "Radar"},
    fuses           = {"Contact", "Proximity"},

    racks           = {                                         -- a whitelist for racks that this missile can load into.
                        ["1xRK"] = true,
                    },    

    seekcone        = 10,                                       -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.) 
    viewcone        = 20,                                       -- getting outside this cone will break the lock.  Divided by 2.    
    
    agility         = 1,                                        -- multiplier for missile turn-rate.
    armdelay        = 0.00,                                     -- minimum fuse arming delay
    SeekSensitivity = 2
} )

ACF_defineGun("9M311-1M", {                                        -- id
    name        = "9M311-1M Tunguska Missile",
    desc        = "The 9M311 missile is a hypersonic Anti Air missile that while is not agile enough to hit maneuvering planes, excels against helicopters.",
    model       = "models/missiles/9m311_unfolded.mdl",
    effect      = "Rocket Motor",
    gunclass    = "SAM",
    rack        = "1x 9M311-1M",                                   -- Which rack to spawn this missile on?
    length      = 253,                                          -- Used for the physics calculations
	modeldiameter = 16,
    caliber     = 12,
    weight      = 71,                                           -- Don't scale down the weight though!
    year        = 1982,
    rofmod      = 0.3,
    round = {
        model           = "models/missiles/9m311_unfolded.mdl",
        rackmdl         = "models/missiles/9m311_folded.mdl",
        maxlength       = 140,
        casing          = 0.1,                                  -- thickness of missile casing, cm
        armour          = 5,                                    -- effective armour thickness of casing, in mm
        propweight      = 0.8,                                  -- motor mass - motor casing
        thrust          = 17000,                                -- average thrust - kg*in/s^2
        burnrate        = 800,                                  -- cm^3/s at average chamber pressure
        starterpct      = 0.2,                                  -- percentage of the propellant consumed in the starter motor.
        minspeed        = 50,                                   -- minimum speed beyond which the fins work at 100% efficiency
        dragcoef        = 0.001,                                -- drag coefficient while falling
        dragcoefflight  = 0.003,                                -- drag coefficient during flight
        finmul          = 0.01,                                 -- fin multiplier (mostly used for unpropelled guidance)
        penmul          = math.sqrt(8.8)                        -- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)
    },

    ent             = "acf_missile_to_rack",                    -- A workaround ent which spawns an appropriate rack for the missile.
    guidance        = {"Dumb", "Laser", "Radar"},
    fuses           = {"Contact", "Optical"},

    racks           = {                                         -- a whitelist for racks that this missile can load into.
                        ["1x 9M311-1M"] = true
                    },    

    seekcone        = 10,                                       -- getting inside this cone will get you locked.  Divided by 2 ('seekcone = 40' means 80 degrees total.) 
    viewcone        = 20,                                       -- getting outside this cone will break the lock.  Divided by 2.    
    
    agility         = 1,                                        -- multiplier for missile turn-rate.
    armdelay        = 0.00,                                     -- minimum fuse arming delay
    SeekSensitivity = 2
} )
