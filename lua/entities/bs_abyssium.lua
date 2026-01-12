AddCSLuaFile()
ENT.Base = "ent_jack_gmod_ezresource"
ENT.PrintName = "BS Abyssium"
ENT.Category = "JMod - EZ Resources"
ENT.IconOverride = "materials/ez_resource_icons/abyssium.png"
ENT.Spawnable = true
ENT.AdminSpawnable = true
---
ENT.EZsupplies = JMod.EZ_RESOURCE_TYPES.ABYSS
ENT.JModPreferredCarryAngles = Angle(0, 0, 0)
ENT.Model = "models/props_cloak/cave_crystal_02.mdl"
ENT.Material = ""
ENT.Color = Color(255, 255, 255)
ENT.ModelScale = 1
ENT.Mass = 50
ENT.ImpactNoise1 = "Glass.ImpactHard"
ENT.DamageThreshold = 500
ENT.BreakNoise = "Glass.Break"

---
if SERVER then
	function ENT:UseEffect(pos, ent)
	end

elseif CLIENT then
    local drawvec, drawang = Vector(0, -9.5, 0), Angle(90, 0, 90)
	function ENT:Draw()
		self:DrawModel()

		JMod.HoloGraphicDisplay(self, drawvec, drawang, .05, 300, function()
			JMod.StandardResourceDisplay(JMod.EZ_RESOURCE_TYPES.ABYSS, self:GetResource(), nil, 0, 0, 200, false)
		end)
	end

	--language.Add(ENT.ClassName, ENT.PrintName)
end
