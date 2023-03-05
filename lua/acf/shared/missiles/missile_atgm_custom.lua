ACF_defineGun("Spike-LR ASM", { 							--id
	name 			= "Spike-LR Missile",
	desc 			= "Spike is an Israeli fire-and-forget anti-tank guided missile and anti-personnel missile with a tandem-charge HEAT warhead, currently in its fourth generation.[4] It was developed and designed by the Israeli company Rafael Advanced Defense Systems. It is available in man-portable, vehicle-launched, and helicopter-launched variants.",
	model 			= "models/missiles/spikelr.mdl",
	gunclass 		= "ATGM",
    rack 			= "1xRK_small",  					-- Which rack to spawn this missile on?
	length 			= 174,
	caliber	 		= 18,
	weight 			= 200,    							-- Don't scale down the weight though!
    modeldiameter 	= 18, 						-- in cm
	rofmod          = 0.4,
	year 			= 1984,
	round = {
		model			= "models/missiles/spikelr.mdl",
		rackmdl			= "models/missiles/spikelr_closed.mdl",
		maxlength		= 150,
		casing			= 0.2,							-- thickness of missile casing, cm
		armour			= 10,							-- effective armour thickness of casing, in mm
		propweight		= 1,							-- motor mass - motor casing
		thrust			= 2000,						-- average thrust - kg*in/s^2   --was 12000
		burnrate		= 15,							-- cm^3/s at average chamber pressure
		starterpct		= 0.25,							-- percentage of the propellant consumed in the starter motor.   --was 0.25
		minspeed		= 10,							-- minimum speed beyond which the fins work at 100% efficiency
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
  					["2xRK"] = true, 
  					["3xRK"] = true, 
  					["4xRK"] = true,
  					["1xRK_small"] = true,
  					["2x AGM-114"] = true, 
  					["4x AGM-114"] = true
    			},

    seekcone    = 40,
    viewcone    = 80,   								-- getting outside this cone will break the lock.  Divided by 2.
    agility     = 0.3,									-- multiplier for missile turn-rate.
    armdelay    = 5     								-- minimum fuse arming delay
} )

ACF_defineGun("9M113 ATGM", { 									-- id
	name 		= "9M113 Konkurs Missile",
	desc 		= "The 9M113 Konkurs (Russian: 9М113 «Конкурс»; English: Contest; NATO reporting name AT-5 Spandrel) is a Soviet SACLOS wire-guided anti-tank missile.",
	model 		= "models/missiles/9m113.mdl",
	gunclass 	= "ATGM",
    rack 		= "1x 9M113",  								-- Which rack to spawn this missile on?
	length 		= 115,											-- Used for the physics calculations
	caliber 	= 13.5,
	weight 		= 76.4,    										-- Don't scale down the weight though!
	modeldiameter = 14,
	year 		= 1970,
	rofmod 		= 0.55,
	round = {
		model			= "models/missiles/9m113.mdl",
		rackmdl			= "models/missiles/9m113_folded.mdl",
		maxlength		= 105,
		casing			= 0.1,									-- thickness of missile casing, cm
		armour			= 5,									-- effective armour thickness of casing, in mm
		propweight		= 1.2,									-- motor mass - motor casing
		thrust			= 11000,								-- average thrust - kg*in/s^2
		burnrate		= 200,									-- cm^3/s at average chamber pressure
		starterpct		= 0.18,									-- percentage of the propellant consumed in the starter motor.
		minspeed		= 2000,									-- minimum speed beyond which the fins work at 100% efficiency
		dragcoef		= 0.003,								-- drag coefficient while falling
        dragcoefflight  = 0.06,									-- drag coefficient during flight
		finmul			= 0.05,									-- fin multiplier (mostly used for unpropelled guidance)
        penmul      	= math.sqrt(0.774)  					-- HEAT velocity multiplier. Squared relation to penetration (math.sqrt(2) means 2x pen)   --was 0.797
	},

    ent         = "acf_missile_to_rack", 						-- A workaround ent which spawns an appropriate rack for the missile.
    guidance    = {"Dumb", "Wire"},
    fuses       = {"Contact", "Optical"},

    racks       = {												-- a whitelist for racks that this missile can load into.
    				["1x 9M113"] = true, 
    			},    

    agility     = 0.17,     									-- multiplier for missile turn-rate.
    armdelay    = 0.00     										-- minimum fuse arming delay
} )
