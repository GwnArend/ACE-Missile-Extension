ACF_DefineRack("1x 9M113", {
    name = "9M113 Single Tube",
    desc = "A single 9M113 Konkurs round.",
    model = "models/missiles/9M113_launcher.mdl",
    gunclass = "POD",
    weight = 10,
    year = 1970,
    magsize = 1,
    armour  = 18,
    caliber = 13.5,

    whitelistonly   = true,
    protectmissile  = true,
    hidemissile     = false,
    
    mountpoints = 
    {
        ["missile1"] = { ["pos"] = Vector(17,0,0), ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)} -- 15.759,0,0
    }
} )

ACF_DefineRack("1x VT-1", {
    name = "VT-1 Single Tube",
    desc = "A single VT-1 Konkurs round.",
    model = "models/missiles/vt1_launcher.mdl",
    gunclass = "POD",
    weight = 10,
    year = 1970,
    magsize = 1,
    armour  = 18,
    caliber = 16.3,

    whitelistonly   = true,
    protectmissile  = true,
    hidemissile     = false,
    
    mountpoints = 
    {
        ["missile1"] = { ["pos"] = Vector(0,0,0), ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)}
    }
} )

ACF_DefineRack("6x 9K121", {
    name = "9K121 Vikhr Rack",
    desc = "The 9K121 Vikhr rack designed to carry 6 9K121 missiles.",
    model       = "models/missiles/9k121_rack.mdl",
    gunclass = "RK",
    weight = 100,
    year = 1984,
    magsize = 6,
    armour  = 20,
    caliber = 13,

    mountpoints =
    {
        ["missile1"] = { ["pos"] = Vector(-9.582,6.612,5.098),  ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)},
        ["missile2"] = { ["pos"] = Vector(-9.582,-6.653,5.098),   ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)},
        ["missile3"] = { ["pos"] = Vector(-9.582,-9.539,-6.896),    ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)},
        ["missile4"] = { ["pos"] = Vector(-9.582,-3.19,-6.896),     ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)},
        ["missile5"] = { ["pos"] = Vector(-9.582,3.227,-6.896),     ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)},
        ["missile6"] = { ["pos"] = Vector(-9.582,9.531,-6.896),     ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)},
    }
} )

ACF_DefineRack("1x 9M331", {
    name = "1x 9M331",
    desc = "Launch piston thing for a single 9M331 TOR missile.",
    model       = "models/missiles/9m331_launcher_v4.mdl",
    gunclass = "RK",
    weight = 100,
    year = 1991,
    magsize = 1,
    armour  = 20,
    caliber = 23,

    mountpoints =
    {
        ["missile1"] = { ["pos"] = Vector(-8.3,0,-6.2),  ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)}, 
		
    }
} )

ACF_DefineRack("2x SRAAM", {
    name = "SRAAM Launcher",
    desc = "A Launcher made for 2 SRAAM missiles",
    model       = "models/missiles/sraam_rack.mdl",
    gunclass = "RK",
    weight = 100,
    year = 1970,
    magsize = 2,
    armour  = 20,
    caliber = 16.5,

    mountpoints =
    {
        ["missile1"] = { ["pos"] = Vector(0,5,0),  ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)},
        ["missile2"] = { ["pos"] = Vector(0,-5,0),   ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)},
    }
} )

ACF_DefineRack("1x 9M311-1M", {
    name = "Single 9M311 Launch Tube",
    desc = "A single 9M311-1M round.",
    model = "models/missiles/9m311_tube.mdl",
    gunclass = "POD",
    weight = 10,
    year = 1982,
    magsize = 1,
    armour  = 18,
    caliber = 12,

    whitelistonly   = true,
    protectmissile  = true,
    hidemissile     = false,
    
    mountpoints = 
    {
        ["missile1"] = { ["pos"] = Vector(0,0,0), ["offset"] = Vector(0,0,0), ["scaledir"] = Vector(0,0,0)}
    }
} )