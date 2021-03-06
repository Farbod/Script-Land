--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: zdroid9770; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function JugkarGrimrod_OnCombat(Unit, Event)
	Unit:RegisterEvent("JugkarGrimrod_CurseofWeakness", 5000, 1)
	Unit:RegisterEvent("JugkarGrimrod_Immolate", 6000, 1)
	Unit:RegisterEvent("JugkarGrimrod_ShadowBolt", 8000, 0)
end

function JugkarGrimrod_CurseofWeakness(Unit, Event) 
	Unit:FullCastSpellOnTarget(12741, 	Unit:GetMainTank()) 
end

function JugkarGrimrod_Immolate(Unit, Event) 
	Unit:FullCastSpellOnTarget(20787, 	Unit:GetMainTank()) 
end

function JugkarGrimrod_ShadowBolt(Unit, Event) 
	Unit:FullCastSpellOnTarget(12471, 	Unit:GetMainTank()) 
end

function JugkarGrimrod_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function JugkarGrimrod_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

function JugkarGrimrod_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5771, 1, "JugkarGrimrod_OnCombat")
RegisterUnitEvent(5771, 2, "JugkarGrimrod_OnLeaveCombat")
RegisterUnitEvent(5771, 3, "JugkarGrimrod_OnKilledTarget")
RegisterUnitEvent(5771, 4, "JugkarGrimrod_OnDied")