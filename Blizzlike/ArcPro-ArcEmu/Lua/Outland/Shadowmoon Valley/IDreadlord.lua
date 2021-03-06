--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function IDreadlord_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("IDreadlord_PsychicScream", 23000, 0)
	Unit:RegisterEvent("IDreadlord_MindBlast", 7000, 0)
	Unit:RegisterEvent("IDreadlord_Sleep", 50000, 0)
end

function IDreadlord_PsychicScream(Unit,Event)
	Unit:FullCastSpellOnTarget(13704, Unit:GetClosestPlayer())
end

function IDreadlord_MindBlast(Unit,Event)
	Unit:FullCastSpellOnTarget(17287, Unit:GetClosestPlayer())
end

function IDreadlord_Sleep(Unit,Event)
	Unit:FullCastSpellOnTarget(12098, Unit:GetClosestPlayer())
end

function IDreadlord_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function IDreadlord_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(21166, 1, "IDreadlord_OnEnterCombat")
RegisterUnitEvent(21166, 2, "IDreadlord_OnLeaveCombat")
RegisterUnitEvent(21166, 4, "IDreadlord_OnDied")