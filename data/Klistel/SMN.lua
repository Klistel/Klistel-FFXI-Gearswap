-- Feary's SMN LUA
-- Date Created : 1/29/2014
-- Last Update: 8/14/2015
--
--

--includes
	include('include/functions.lua')
	include('include/status.lua')



-- Gear Sets 
function get_sets()
--includes
	--include('include/autoexec.lua')
	include('include/binds.lua')
	-- Get SMN gearsets
	include('Gearsets/'..player.name..'/SMN_Gearsets.lua')

	--shortcuts
    send_command('alias afac input /ja Astral Flow <me>;wait 2;input /ja Astral Conduit <me>')
	send_command('alias es input /ja Elemental Siphon <me>')
	windower.send_command('bind f9 gs c avatar mode')
	windower.send_command('bind f12 gs c weapon lock')
	send_command('bind ^a input /ja "Apogee" <me>')
	send_command('bind @t gs equip sets.TreasureHunter')

	-- set Macro Page to baseline SMN Page
	set_macro_page(2,1)
	
	send_command('wait 2; input /lockstyle off')
	
	-- Variables 
	ShadowType = 'None'
	Mode = 'Idle'
	WeaponLock = 'Unlocked'
	RageMode = 'Damage'  -- modes: Damage | Accuracy
	PDT = 0
	MDT = 0
	TH = false
	
	 -- Wards table for creating custom timers   
    wards = {}
    -- Base duration for ward pacts.
    wards.durations = {
        ['Crimson Howl'] = 60, ['Earthen Armor'] = 60, ['Inferno Howl'] = 60, ['Heavenward Howl'] = 60,
        ['Rolling Thunder'] = 120, ['Fleet Wind'] = 120,
        ['Shining Ruby'] = 180, ['Frost Armor'] = 180, ['Lightning Armor'] = 180, ['Ecliptic Growl'] = 180,
        ['Glittering Ruby'] = 180, ['Hastega'] = 180, ['Noctoshield'] = 180, ['Ecliptic Howl'] = 180,
        ['Dream Shroud'] = 180, ['Aerial Armor']  = 900,
        ['Reraise II'] = 3600
    }
	
	SpiritList = S{"LightSpirit", "DarkSpirit", "FireSpirit", "EarthSpirit", "WaterSpirit", "AirSpirit", "IceSpirit", "ThunderSpirit"}
    AvatarList = S{'Shiva','Ramuh','Garuda','Leviathan','Diabolos','Titan','Fenrir','Ifrit','Carbuncle', 'Cait Sith','Alexander','Odin','Atomos'}

	-- Types of BloodPacts
	-- Skill
		Skill_BloodPact = S{'Perfect Defense', 'Impact'}
	
	-- Physical
		PhysicalRagePacts = S{
		-- T1 BPs
		'Double Slap', 'Camisado', 'Punch', "Barracurda Dive", 'Claw', 'Axe Kick','Welt','Roundhouse',
		-- T2 BPs
		'Predator Claws', 'Eclipse Bite', 'Double Punch', 'Spinning Dive', 'Regal Scratch', 'Rush','Hysteric Assault', "Chaotic Strike",
		-- T3 BPs
		'Regal Gash', 'Volt Strike',
		}
	-- Magical 
	-- MAB
		MagicalBloodPactRage = S{
		-- Astral Flow
        'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Diamond Dust','Judgment Bolt','Searing Light','Howling Moon','Ruinous Omen','Clarsach Call',
        -- T2 Nukes
		'Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II','Sonic Buffet','Tornado II',
        -- T4 Nukes 
		'Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV',
        -- T1 BPs
		'Thunderspark','Burning Strike','Meteorite',
        -- T2 BPs
		'Level ? Holy', 'Nether Blast', 'Flaming Crush', 'Conflag Strike',
		-- T3 BPs
		'Zantetsuken'
		}
	-- Macc
	-- Uses Magic Acc BP Set
		DebuffBloodPact = T{
		-- T1
		 'Mewing Lullaby', 'Sleepga', 'Slowga', 'Tidal Roar', 'Nightmare', 'Ultimate Terror', 'Somnolence', 'Lunar Cry', 'Lunar Roar', 'Moonlit Charge', 'Crescent Fang',
		-- T2
		'Diamond Storm', 'Eerie Eye',
		-- T3
		'Shock Squall','Pavor Nocturnus',
		}
	-- Uses Rage set with Beckoner's spats
	Magical_BPs_affected_by_TP = T{
	'Heavenly Strike', 'Wind Blade', 'Night Terror', 'Thunderstorm', 'Geocrush', 'Meteor Strike', 'Grand Fall', 'Thunderspark', 'Holy Mist', 'Lunar Bay',}
	
	areas.Town.Windurst = S{'Windurst Woods', 'Windurst Walls', 'Windurst Waters', 'Port Windurst'}
	areas.Town.Sandy = S{"Southern San d'Oria", "Northern San d'Oria", "Port San d'Oria"}
	areas.Town.Adoulin = S{'Western Adoulin','Eastern Adoulin'}
end
-- Called when this job file is unloaded (eg: job change)
function file_unload()
	send_command('unbind ^a')
	clear_binds()
end

function pet_change(pet,gain)
-- Gain a Pet via Summoning
	if gain then
			windower.add_to_chat(8,'----- Avatar set to '..RageMode..' mode! -----')
			if not buffactive['Avatar\'s Favor'] then
				send_command('wait 2;input /ja Avatar\'s Favor <me>')
			end
			if pet.name == "Carbuncle" then
				set_macro_page(2,2)
			elseif pet.name == 'Garuda' then
				set_macro_page(2,7)
			elseif pet.name == 'Titan' then
				set_macro_page(2,6)
			elseif pet.name == 'Fenrir' then 
				set_macro_page(2,3)
			elseif pet.name == 'Diabolos' then 
				set_macro_page(2,5)
			elseif pet.name == 'Shiva' then 
				set_macro_page(2,9)
			elseif pet.name == 'Ramuh' then 
				set_macro_page(2,10)
			elseif pet.name == 'Leviathan' then 
				set_macro_page(2,4)
			elseif pet.name == 'Ifrit' then 
				set_macro_page(2,8)
			elseif pet.name == 'Cait Sith' then
				set_macro_page(7,1)
			elseif pet.name == 'Siren' then
				set_macro_page(7,2)
			else
				set_macro_page(2,1)
			end
		pet_sets()
	else
		set_macro_page(2,1)
		if pet.name == "Alexander" then
			equip(sets.midcast.Pet.BloodPactWard)
		else
			equip(sets.idle)
		end
	end
end
	
function status_change(new,old)
-- Auto set
	if pet.isvalid then
		if pet.status == "Engaged" then
			-- equip pet Engaged
			equip(sets.idle.Avatar)
		else
			pet_sets()
		end
	else
		if new == 'Resting' then
			equip(sets.resting)
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
		--elseif new == 'Engaged' then
		--		equip(sets.idle)
		end
	end
end

function self_command(command)
 
    local commandArgs = command     
    -- This command takes //gs c avatar mode, where mode is what you want, eg, tank, acc, melee, etc
    if #commandArgs:split(' ') >= 2 then
        commandArgs = T(commandArgs:split(' '))
		if commandArgs[1] == 'avatar' and pet.isvalid then
			if commandArgs[2] then
				mode = tostring(commandArgs[2])
				if mode == 'mode' then
					if RageMode == 'Damage' then
					   RageMode = 'Accuracy'
					elseif RageMode == 'Accuracy' then
						RageMode = 'Damage'
					end
				end    
				windower.add_to_chat(8,'----- Avatar set to '..RageMode..' mode! -----')
			end
		elseif commandArgs[1] == 'weapon' then
			if commandArgs[2] then
				mode = tostring(commandArgs[2])
				if mode == 'lock' then
					if WeaponLock == 'Unlocked' then
						disable('main')
						disable('sub')
						WeaponLock = 'Locked'
						windower.add_to_chat(8,'----- Weapon and Sub '..WeaponLock..' -----')
					elseif WeaponLock == 'Locked' then
						enable('main')
						enable('sub')
						WeaponLock = 'Unlocked'
						windower.add_to_chat(8,'----- Weapon and Sub '..WeaponLock..' -----')
					end
				end
			end
		end
	end
end




windower.register_event('zone change',function()
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
  end)


function precast(spell,arg)
	if not midaction() or  not pet_midaction() then
	-- Job Abilities
		if spell.type == 'JobAbility' then
			if sets.precast.JA[spell.name] then
				equip(sets.precast.JA[spell.name])
			end
		elseif spell.type == "BloodPactWard" or spell.type == "BloodPactRage" then
			if spell.name == "Alexander" or spell.name == "Perfect Defense" then
				equip(sets.precast.BloodPact)
			elseif not (buffactive['Astral Conduit'] or buffactive['Apogee']) then
				if sets.precast.BloodPact[spell.name] then
					windower.add_to_chat(121, spell.name .. ' set')
					equip(sets.precast.BloodPact[spell.name])
				else
					equip(sets.precast.BloodPact)
				end
			end
	-- Magic
		elseif spell.type:endswith('Magic') then
			equip(sets.precast.Fastcast)
			if spell.skill == 'Healing Magic' then
				equip(sets.precast.Fastcast,sets.precast.Cure)
			end
		elseif spell.type == 'SummonerPact' then
			equip(sets.precast.Fastcast,sets.summonmagic)
		end		
	end
end

function pet_midcast(spell)
	-- Blood Pacts
	if spell.name == 'Shock Squall' then
		return
	end
	if Skill_BloodPact:contains(spell.name) then
		windower.add_to_chat(121,'SMN Skill BP Set')
		equip(sets.midcast.SummoningSkill)
	elseif PhysicalRagePacts:contains(spell.name) then
		if RageMode == 'Damage' then
			windower.add_to_chat(121,'Physical Rage Damage Set')
			equip(sets.midcast.Pet.PhysicalBloodPactRage)
		elseif RageMode == 'Accuracy' then
			windower.add_to_chat(121,'Physical Rage Accuracy Set')
			equip(sets.midcast.Pet.PhysicalBloodPactRage.Acc)
		end
	elseif spell.name:contains('Flaming Crush') then
		if RageMode == 'Damage' then
			windower.add_to_chat(121,'Flaming Crush Damage Set')
			equip(sets.midcast.Pet.FlamingCrush)
		elseif RageMode == 'Accuracy' then
			windower.add_to_chat(121,'Physical Rage Accuracy Set')
			equip(sets.midcast.Pet.FlamingCrush.Acc)
		end
	elseif MagicalBloodPactRage:contains(spell.name) then
		if RageMode == 'Damage' then
			windower.add_to_chat(121,'Magic Rage Damage Set')
			equip(sets.midcast.Pet.MagicalBloodPactRage)
		elseif RageMode == 'Accuracy' then
			windower.add_to_chat(121,'Magic Rage Accuracy Set')
			equip(sets.midcast.Pet.MagicalBloodPactRage.Acc)
		end
	elseif DebuffBloodPact:contains(spell.name) then
		windower.add_to_chat(121,'Debuff Pact Accuracy Set')
		equip(sets.midcast.Pet.DebuffBloodPactWard)
	elseif Magical_BPs_affected_by_TP:contains(spell.name) then
		if RageMode == 'Damage' then
			windower.add_to_chat(121,'Merit BP Rage Damage Set')
			equip(sets.midcast.Pet.MagicalBloodPactRage.Sp)
		elseif RageMode == 'Accuracy' then
			windower.add_to_chat(121,'Merit BP Rage Accuracy Set')
			equip(sets.midcast.Pet.MagicalBloodPactRage.Acc)
		end
	else
		if spell.type == "BloodPactWard" then
			windower.add_to_chat(121,'Defaulted Ward Set')
			equip(sets.midcast.BloodPactWard)
		elseif spell.type == "BloodPactRage" then
			windower.add_to_chat(121,'Defaulted Rage Set')
			equip(sets.midcast.Pet.BloodPactRage)
			end
		end
end

function midcast(spell,arg)
	if not midaction() or not pet_midaction() or spell.interrupted then
	-- Healing Magic
		if spell.skill == 'Healing Magic' then
			-- Cure Curaga Cura
			if spell.english:startswith('Cure') then
				equip(sets.midcast.Cure)
			elseif spell.english:startswith("Curaga") then
				equip(sets.midcast.Cure)
			elseif spell.english:startswith('Cura') then
				equip(sets.midcast.Cure)
			end	
		end
	end
end 

function pet_aftercast(spell)
	        -- Add to Chat rules for buffs with variable values.
	if (spell.english=="Ecliptic Howl") then
		if (world.moon_pct>89) then
				add_to_chat(104,"[Ecliptic Howl] Accuracy 25 - Evasion 1")
		elseif (world.moon_pct>74) then
				add_to_chat(104,"[Ecliptic Howl] Accuracy 21 - Evasion 5")
		elseif (world.moon_pct>59) then
				add_to_chat(104,"[Ecliptic Howl] Accuracy 17 - Evasion 9")
		elseif (world.moon_pct>39) then
				add_to_chat(104,"[Ecliptic Howl] Accuracy 13 - Evasion 13")
		elseif (world.moon_pct>24) then
				add_to_chat(104,"[Ecliptic Howl] Accuracy 9 - Evasion 17")
		elseif (world.moon_pct>9) then
				add_to_chat(104,"[Ecliptic Howl] Accuracy 5 - Evasion 21")
		else
				add_to_chat(104,"[Ecliptic Howl] Accuracy 1 - Evasion 25")
		end
	elseif (spell.english=="Ecliptic Growl") then
		if (world.moon_pct>89) then
				add_to_chat(104,"[Ecliptic Growl] STR/DEX/VIT 7 - INT/MND/CHR/AGI 1")
		elseif (world.moon_pct>74) then
				add_to_chat(104,"[Ecliptic Growl] STR/DEX/VIT 6 - INT/MND/CHR/AGI 2")
		elseif (world.moon_pct>59) then
				add_to_chat(104,"[Ecliptic Growl] STR/DEX/VIT 5 - INT/MND/CHR/AGI 3")
		elseif (world.moon_pct>39) then
				add_to_chat(104,"[Ecliptic Growl] STR/DEX/VIT 4 - INT/MND/CHR/AGI 4")
		elseif (world.moon_pct>24) then
				add_to_chat(104,"[Ecliptic Growl] STR/DEX/VIT 3 - INT/MND/CHR/AGI 5")
		elseif (world.moon_pct>9) then
				add_to_chat(104,"[Ecliptic Growl] STR/DEX/VIT 2 - INT/MND/CHR/AGI 6")
		else
				add_to_chat(104,"[Ecliptic Growl] STR/DEX/VIT 1 - INT/MND/CHR/AGI 7")
		end
	elseif (spell.english=="Lunar Cry") then
		if (world.moon_pct>89) then
				add_to_chat(104,"[Lunar Cry] Enemy Acc Down 31 - Enemy Eva Down 1")
		elseif (world.moon_pct>74) then
				add_to_chat(104,"[Lunar Cry] Enemy Acc Down 26 - Enemy Eva Down 6")
		elseif (world.moon_pct>59) then
				add_to_chat(104,"[Lunar Cry] Enemy Acc Down 21 - Enemy Eva Down 11")
		elseif (world.moon_pct>39) then
				add_to_chat(104,"[Lunar Cry] Enemy Acc Down 16 - Enemy Eva Down 16")
		elseif (world.moon_pct>24) then
				add_to_chat(104,"[Lunar Cry] Enemy Acc Down 11 - Enemy Eva Down 21")
		elseif (world.moon_pct>9) then
				add_to_chat(104,"[Lunar Cry] Enemy Acc Down 6 - Enemy Eva Down 26")
		else
				add_to_chat(104,"[Lunar Cry] Enemy Acc Down 1 - Enemy Eva Down 31")
		end
	elseif (spell.english=="Heavenward Howl") then
		if (world.moon_pct>89) then
				add_to_chat(104,"[Heavenward Howl] Moon Phase Full moon - Endrain 15%")
		elseif (world.moon_pct>73) then
				add_to_chat(104,"[Heavenward Howl] Moon phase 74~90% {Endrain 12%")
		elseif (world.moon_pct>56) then
				add_to_chat(104,"[Heavenward Howl] Moon phase 57~73% {Endrain 8%}")
		elseif (world.moon_pct>39) then
				add_to_chat(104,"[Heavenward Howl] Moon phase 40~56% {First Quarter Moon - Endrain 5% | Last Quarter - moon Enaspir 1%}" )
		elseif (world.moon_pct>24) then
				add_to_chat(104,"[Heavenward Howl] Moon phase 25~39% {Enaspir 2%}")
		elseif (world.moon_pct>9) then
				add_to_chat(104,"[Heavenward Howl] Moon phase 10~24% {Enaspir 4%}")
		else
				add_to_chat(104,"[Heavenward Howl] Moon Phase New Moon - Enaspir 5%")
		end     
	elseif (spell.english=="Dream Shroud") then
		if (world.time >= 0 and world.time < 1*60) then
				add_to_chat(104,"[Dream Shroud] MAB 13 - MDB 1")
		elseif (world.time >= 1*60 and world.time < 2*60) or (world.time >= 23*60 and world.time <= 23*60+59) then
				add_to_chat(104,"[Dream Shroud] MAB 12 - MDB 2")
		elseif (world.time >= 2*60 and world.time < 3*60) or (world.time >= 22*60 and world.time < 23*60) then
				add_to_chat(104,"[Dream Shroud] MAB 11 - MDB 3")
		elseif (world.time >= 3*60 and world.time < 4*60) or (world.time >= 21*60 and world.time < 22*60) then
				add_to_chat(104,"[Dream Shroud] MAB 10 - MDB 4")
		elseif (world.time >= 4*60 and world.time < 5*60) or (world.time >= 20*60 and world.time < 21*60) then
				add_to_chat(104,"[Dream Shroud] MAB 9 - MDB 5")
		elseif (world.time >= 5*60 and world.time < 6*60) or (world.time >= 19*60 and world.time < 20*60) then
				add_to_chat(104,"[Dream Shroud] MAB 8 - MDB 6")
		elseif (world.time >= 6*60 and world.time < 7*60) or (world.time >= 18*60 and world.time < 19*60) then
				add_to_chat(104,"[Dream Shroud] MAB 7 - MDB 7")
		elseif (world.time >= 7*60 and world.time < 8*60) or (world.time >= 17*60 and world.time < 18*60) then
				add_to_chat(104,"[Dream Shroud] MAB 6 - MDB 8")
		elseif (world.time >= 8*60 and world.time < 9*60) or (world.time >= 16*60 and world.time < 17*60) then
				add_to_chat(104,"[Dream Shroud] MAB 5 - MDB 9")
		elseif (world.time >= 9*60 and world.time < 10*60) or (world.time >= 15*60 and world.time < 16*60) then
				add_to_chat(104,"[Dream Shroud] MAB 4 - MDB 10")
		elseif (world.time >= 10*60 and world.time < 11*60) or (world.time >= 14*60 and world.time < 15*60) then
				add_to_chat(104,"[Dream Shroud] MAB 3 - MDB 11")
		elseif (world.time >= 11*60 and world.time < 12*60) or (world.time >= 13*60 and world.time < 14*60) then
				add_to_chat(104,"[Dream Shroud] MAB 2 - MDB 12")
		else
				add_to_chat(104,"[Dream Shroud] MAB 1 - MDB 13")
		end
	end 
	pet_sets()
end

function aftercast(spell,arg)
	if not midaction() or not pet_midaction() or spell.interrupted then
		if spell.type == "BloodPactRage" or spell.type == "BloodPactWard" then
			if buffactive['Astral Conduit'] and player.mp  < 180 then
				send_command('input /ja "Convert" <me>')
			end				
			return
		end
	-- Autoset
		if pet.isvalid then
				pet_sets()
		else
			equip(sets.idle)
		end
	end
end

-- Handles Pets Gearsets
function pet_sets()
	if pet.isvalid then
		if S{'Garuda'}:contains (pet.name) then
			if pet.element == world.day_element then
					equip(sets.idle.Avatar,sets.perp.Day,sets.perp.Garuda)
			elseif pet.element == world.weather_element then
						equip(sets.idle.Avatar,sets.perp.Weather,sets.perp.Garuda)
			else
				equip(sets.idle.Avatar,sets.perp.Garuda)
			end
		elseif S{'Carbuncle'}:contains (pet.name) then
			if pet.element == world.day_element then
					equip(sets.idle.Avatar,sets.perp.Carbuncle,sets.perp.Day)
			elseif pet.element == world.weather_element then
						equip(sets.idle.Avatar,sets.perp.Carbuncle,sets.perp.Weather)
			else
				equip(sets.idle.Avatar,sets.perp.Carbuncle)
			end
		elseif S{'Cait Sith'}:contains (pet.name) then
			if pet.element == world.day_element then
					equip(sets.idle.Avatar,sets.perp.Cait,sets.perp.Day)
			elseif pet.element == world.weather_element then
						equip(sets.idle.Avatar,sets.perp.Cait,sets.perp.Weather)
			else
				equip(sets.idle.Avatar,sets.perp.Cait)
			end
		else
			if pet.element == world.day_element then
					equip(sets.idle.Avatar,sets.perp.Day)
			elseif pet.element == world.weather_element then
						equip(sets.idle.Avatar,sets.perp.Weather)
			else
				equip(sets.idle.Avatar)
			end
		end
		if buffactive['Quickening'] then
			equip(sets.fastfeet)
		end
	end
end




-- Cast the appopriate storm for the currently summoned avatar, if possible.
function handle_petweather()
    if player.sub_job ~= 'SCH' then
        add_to_chat(122, "You can not cast storm spells")
        return
    end
        
    if not pet.isvalid then
        add_to_chat(122, "You do not have an active avatar.")
        return
    end
    
    local element = pet.element
    if element == 'Thunder' then
        element = 'Lightning'
    end
    
    if S{'Light','Dark','Lightning'}:contains(element) then
        add_to_chat(122, 'You do not have access to '..elements.storm_of[element]..'.')
        return
    end 
    
    local storm = elements.storm_of[element]
    
    if storm then
        send_command('@input /ma "'..elements.storm_of[element]..'" <me>')
    else
        add_to_chat(123, 'Error: Unknown element ('..tostring(element)..')')
    end
end
