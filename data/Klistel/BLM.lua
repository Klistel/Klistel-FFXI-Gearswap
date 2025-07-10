--includes
	include('include/functions.lua')
	include('include/status.lua')
	
	function get_sets()
--includes
	--include('include/autoexec.lua')
	include('include/binds.lua')
	-- Get BLM gearsets
	include('Gearsets/'..player.name..'/BLM_Gearsets.lua')
	
	-- Variables 
	ShadowType = 'None'
	mode = "damage"
	PDT = 0
	MDT = 0
	
		
	areas.Town.Windurst = S{'Windurst Woods', 'Windurst Walls', 'Windurst Waters', 'Port Windurst'}
	areas.Town.Sandy = S{'Southern San d\'Oria', 'Northern San d\'Oria', 'Port San d\'Oria'}
	areas.Town.Adoulin = S{'Western Adoulin','Eastern Adoulin'}
	
	end
	
	

-- equip our Nuke set, either high damage or accuracy
-- depending on our mode. We toggle the mode variable
-- using the self_command() function laster in this file.
-- if we're casting a spell that matches the day or weather
-- we also will put on the Hachirin-no-Obi.
function equip_nuke(spell)
    if spell.element == world.day_element then
        windower.add_to_chat(8,'[Nuke - ' .. mode .. ' on matching day]')
        equip(sets[mode],{waist="Hachirin-no-Obi",legs="Src. Tonban +1"})
    elseif spell.element == world.weather_element then
        windower.add_to_chat(8,'[Nuke - ' .. mode .. ' with matching weather]')
        equip(sets[mode],{waist="Hachirin-no-Obi"})
    else
         windower.add_to_chat(8,'[Nuke - ' .. mode .. ']')
        equip(sets[mode])
    end
 end
 
 -- equip our Dark Magic set
 function equip_dark()
     windower.add_to_chat(8,'[Dark]')
    equip(sets.dark)
end

-- equip our Enfeebling Magic set
function equip_enfeebling()
    windower.add_to_chat(8,'[Enfeebling]')
    equip(sets.enfeebling)
end

-- equip our Enhancing Magic set
function equip_enhancing(spell)
    windower.add_to_chat(8,'[Enhancing]')
    if spell.name == 'Stoneskin' then
        equip(sets.enhancing,{neck="Stone Gorget"})
    else
         equip(sets.enhancing)
    end
 end
 
 -- equip our Healing Magic set
 function equip_heal()
     windower.add_to_chat(8,'[Healing]')
    equip(sets.heal)
end

-- equip our yellow (low HP) set for a split second,
-- then return to our idle set.  This will force our
-- HP to yellow to proc the Sorcerer's Ring latent.
function equip_yellow()
    windower.add_to_chat(8,'[Yellow]')
    equip(sets.yellow)
    send_command('wait .1;gs equip idle')
end

-- equip our resting hMP set
function equip_rest()
    windower.add_to_chat(8,'[Resting]')
    equip(sets.resting)
end


--[[ ******************************************************
 Casting functions - these functions run automatically when
 we cast a spell, use a job ability, rest for MP, and so on
****************************************************** --]]
 
 -- the precast function runs automatically BEFORE we
 -- begin casting a spell or job ability.  For our BLM,
 -- we want to equip fast cast gear prior to casting.
 function precast(spell)
     if spell.type:contains('Magic') then
        equip(sets.fc)
    end
 end
 
 -- now that we've already gained the benefit of fast cast,
 -- the midcast function swaps in a new set of gear during
 -- the cast, which will make the spell effect more potent.
 function midcast(spell)
     if spell.skill == 'Healing Magic' then
        equip_heal()
    elseif spell.skill == 'Enfeebling Magic' then
        equip_enfeebling()
    elseif spell.skill == 'Enhancing Magic' then
        equip_enhancing(spell)
    elseif spell.skill == 'Elemental Magic' then
        equip_nuke(spell)
    elseif spell.skill == 'Dark Magic' then
        equip_dark()
    end
 end
 
 -- we're done with our spell or job ability, so the aftercast
 -- function makes sure we return to our idle gear to benefit
 -- from auto-refresh and -PDT while we stand around.
 function aftercast(spell)
     equip(sets.idle)
end

-- the status_change function runs automatically whenever we
-- engage, disengage, kneel, or stand.  As a BLM we use this
-- to equip our +hMP gear when we /heal, and return to our
-- idle gear when we stand up.
	function status_change(new,old)
-- Auto set

	if new == 'Resting' then
			equip_rest()
		elseif new == 'Idle' then
			if areas.Town.Windurst:contains(world.zone) then
				windower.add_to_chat(121, "Windurst Town Gear")
				equip(sets.idle,sets.idle.Windurst)
			elseif areas.Town.Sandy:contains(world.zone) then
				windower.add_to_chat(121, "Sandy Town Gear")
				equip(sets.idle,sets.idle.Sandy)
			elseif areas.Town.Adoulin:contains(world.zone) then
				windower.add_to_chat(121, "Adoulin Town Gear")
				equip(sets.idle,sets.idle.Adoulin)	
			else
				equip(sets.idle)
			end
		end
	
end
 
 -- the self_command function can be called from
 -- a Yush or in-game macro.  We use it for two
 -- purposes.  One, to equip our low-HP gear in
 -- order to proc the Sorcerer's Ring.  Two, to
 -- toggle between damage and accuracy nuking.
 --
 -- with Yush, something like this:
 -- ['Alt+3'] = 'input //gs c Y'
 --
 -- with in-game macros, like this:
 -- /console gs c Y
 --
 function self_command(m)
     if m == "Y" then
        equip_yellow()
    elseif m == "M+" then
        if mode == "damage" then
            mode = "accuracy"
        else
             mode = "damage"
        end
         windower.add_to_chat(8,'[Magic mode: ' .. mode .. ']')
    end
 end


