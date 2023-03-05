local ClassName = "Proximity"

ACF = ACF or {}
ACF.Fuse = ACF.Fuse or {}

local this = ACF.Fuse[ClassName] or inherit.NewSubOf(ACF.Fuse.Contact)
ACF.Fuse[ClassName] = this

---

this.Name = ClassName

-- The entity to measure distance to.
Target = nil

-- the fuse may trigger at some point under this range - unless it's travelling so fast that it steps right on through.
this.Distance = 2000

this.desc = "This fuse tracks the guidance module's target and detonates when the distance becomes low enough.\nDistance in inches."

-- Configuration information for things like acfmenu.
this.Configurable = table.Copy(this:super().Configurable)

local configs = this.Configurable
configs[#configs + 1] = 
{
    Name = "Distance",          -- name of the variable to change
    DisplayName = "Distance",   -- name displayed to the user
    CommandName = "Ds",         -- shorthand name used in console commands
    
    Type = "number",            -- lua type of the configurable variable
    Min = 100,                    -- number specific: minimum value
    Max = 10000                 -- number specific: maximum value
    
    -- in future if needed: min/max getter function based on munition type.  useful for modifying radar cones?
}

function this:GetDetonate(missile, guidance)
	
    if not self:IsArmed() then return false end
    
	local TargetList = ents.FindInSphere((missile.CurPos + missile.LastVel), 2000)

	for x,entity in pairs(TargetList) do
		if not IsValid(entity) then return false end
		local TargetPos = entity:GetPos()
		if self == entity then return false end
		if TargetPos:Distance((missile.CurPos + missile.LastVel)) < 100 then return false end
		if (missile.CurPos + missile.LastVel):DistToSqr(TargetPos) < (self.Distance ^ 2) then return true end
	end

    
end

function this:GetDisplayConfig()
	return 
	{
		["Primer"] = math.Round(self.Primer, 1) .. " s",
		["Distance"] = math.Round(self.Distance / 39.37, 1) .. " m"
	}
end