--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: zdroid9770; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function FerocitastheDreamEater_OnCombat(Unit, Event)
	Unit:RegisterEvent("FerocitastheDreamEater_Thrash", 5000, 0)
end

function FerocitastheDreamEater_Thrash(Unit, Event) 
	Unit:FullCastSpellOnTarget(3391, Unit:GetMainTank()) 
end

function FerocitastheDreamEater_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function FerocitastheDreamEater_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(7234, 1, "FerocitastheDreamEater_OnCombat")
RegisterUnitEvent(7234, 2, "FerocitastheDreamEater_OnLeaveCombat")
RegisterUnitEvent(7234, 4, "FerocitastheDreamEater_OnDied")