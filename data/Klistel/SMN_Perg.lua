-- Summoner Gearswap Lua by Pergatory - http://pastebin.com/u/pergatory
-- IdleMode determines the set used after casting. You change it with "/console gs c <IdleMode>"
-- The out-of-the-box modes are:
-- Refresh: Uses the most refresh available.
-- DT: A mix of refresh, PDT, and MDT to help when you can't avoid AOE.
-- PetDT: Sacrifice refresh to reduce avatar's damage taken. WARNING: Selenian Cap drops you below 119, use with caution!
-- DD: When melee mode is on and you're engaged, uses TP gear. Otherwise, avatar melee gear.
-- Favor: Uses Beckoner's Horn and max smn skill to boost the favor effect.
-- Zendik: Favor build with the Zendik Robe added in, for Shiva's Favor in manaburn parties. (Shut up, it sounded like a good idea at the time)
 
-- You can add your own modes in the IdleModes list, just make sure to add corresponding sets as well.
 
-- Additional Bindings:
-- F9 - Toggles between a subset of IdleModes (Refresh > DT > PetDT)
-- Ctrl+F9 - Toggles WeaponLock (When enabled, equips Nirvana and Elan+1, then disables those 2 slots from swapping)
--       NOTE: If you don't already have the Nirvana & Elan+1 equipped, YOU WILL LOSE TP
 
-- Additional Commands:
-- /console gs c AccMode - Toggles high-accuracy sets to be used where appropriate.
-- /console gs c ImpactMode - Toggles between using normal magic BP set for Fenrir's Impact or a custom high-skill set for debuffs.
-- /console gs c ForceIlvl - I have this set up to override a few specific slots where I normally use non-ilvl pieces.
-- /console gs c TH - Treasure Hunter toggle. By default, this is only used for Dia, Dia II, and Diaga.
-- /console gs c LagMode - Used to help BPs land in the right gear in high-lag situations.
--                          Sets a timer to swap gear 0.5s after the BP is used rather than waiting for server response.
 
function file_unload()
    send_command('unbind f9')
    send_command('unbind f11')
    send_command('unbind ^f9')
    send_command('unbind ^f10')
    enable("main","sub","range","ammo","head","neck","ear1","ear2","body","hands","ring1","ring2","back","waist","legs","feet")
end
 
function get_sets()
    include('Gearsets/'..player.name..'/SMN_Gearsets_Perg.lua')
    send_command('alias afac input /ja Astral Flow <me>;wait 2;input /ja Astral Conduit <me>')
	send_command('alias es input /ja Elemental Siphon <me>')
    send_command('bind f9 gs c ToggleIdle') -- F9 = Cycle through commonly used idle modes
    send_command('bind f11 gs c ForceIlvl') -- Ctrl+F9 = Toggle ForceIlvl
    send_command('bind ^f9 gs c WeaponLock') -- F10 = Toggle Melee Mode
    send_command('bind ^f10 gs c TH') -- Ctrl+F10 = Treasure Hunter toggle
 
    -- Set your merits here. This is used in deciding between Enticer's Pants or Apogee Slacks +1.
    -- To change in-game, "/console gs c MeteorStrike3" will change Meteor Strike to 3/5 merits.
    -- The damage difference is very minor unless you're over 2400 TP.
    -- It's ok to just always use Enticer's Pants and ignore this section.
    MeteorStrike = 5
    HeavenlyStrike = 5
    WindBlade = 0
    Geocrush = 0
    Thunderstorm = 0
    GrandFall = 0
 

    IdleMode = 'Refresh'
    AccMode = false
    RageMode = 'Damage'
    ImpactDebuff = false
    WeaponLock = false
    TreasureHunter = false
    THSpells = S{"Dia","Dia II","Diaga","Bio","Bio II"} -- If you want Treasure Hunter gear to swap for a spell/ability, add it here.
    ForceIlvl = false
    LagMode = false -- Default LagMode. If you have a lot of lag issues, change to "true".
        -- Warning: LagMode can cause problems if you spam BPs during Conduit because it doesn't trust server packets to say whether the BP is readying or not.
    SacTorque = false -- If you have Sacrifice Torque, this will auto-equip it when slept in order to wake up.
    AutoRemedy = false -- Auto Remedy when using an ability while Paralyzed.
    AutoEcho = false -- Auto Echo Drop when using an ability while Silenced.
    TestMode = false
 
    -- Add idle modes here if you need more options for your sets
    IdleModes = {'Refresh','DT','DD','PetDT','PetDD','Favor','Zendik','MEva','Enspell','Kite'}
    
    -- Custom idle modes - If you want toggles that change the normal behavior you can add them here.
    -- For example when I lock Opashoro, I lose the perp down of Nirvana and my sets need to compensate, so I added a custom mode for it.
    -- "/console gs c Custom <mode>" to change mode, and append ".<mode>" to the end of the set name to use it in that mode.
    CustomMode = 'None'
    CustomModes = {'None','Opashoro'}
    Buff_BPs_Duration = S{'Shining Ruby','Aerial Armor','Frost Armor','Rolling Thunder','Crimson Howl','Lightning Armor','Ecliptic Growl','Glittering Ruby','Earthen Ward','Hastega','Noctoshield','Ecliptic Howl','Dream Shroud','Earthen Armor','Fleet Wind','Inferno Howl','Heavenward Howl','Hastega II','Soothing Current','Crystal Blessing','Katabatic Blades'}
    Buff_BPs_Healing = S{'Healing Ruby','Healing Ruby II','Whispering Wind','Spring Water'}
    Buff_BPs_MND = S{"Wind's Blessing"}
    Debuff_BPs = S{'Mewing Lullaby','Eerie Eye','Lunar Cry','Lunar Roar','Nightmare','Pavor Nocturnus','Ultimate Terror','Somnolence','Slowga','Tidal Roar','Diamond Storm','Sleepga','Shock Squall','Bitter Elegy','Lunatic Voice'}
    Debuff_Rage_BPs = S{'Moonlit Charge','Tail Whip'}
 
    Magic_BPs_NoTP = S{'Holy Mist','Nether Blast','Aerial Blast','Searing Light','Diamond Dust','Earthen Fury','Zantetsuken','Tidal Wave','Judgment Bolt','Inferno','Howling Moon','Ruinous Omen','Night Terror','Thunderspark','Tornado II','Sonic Buffet'}
    Magic_BPs_TP = S{'Impact','Conflag Strike','Level ? Holy','Lunar Bay'}
    Merit_BPs = S{'Meteor Strike','Geocrush','Grand Fall','Wind Blade','Heavenly Strike','Thunderstorm'}
    Physical_BPs_TP = S{'Rock Buster','Mountain Buster','Crescent Fang','Spinning Dive','Roundhouse'}
    
    ZodiacElements = S{'Fire','Earth','Water','Wind','Ice','Lightning'}
 
    TownIdle = S{"windurst woods","windurst waters","windurst walls","port windurst","bastok markets","bastok mines","port bastok","southern san d'oria","northern san d'oria","port san d'oria","upper jeuno","lower jeuno","port jeuno","ru'lude gardens","norg","kazham","tavnazian safehold","rabao","selbina","mhaura","aht urhgan whitegate","al zahbi","nashmau","western adoulin","eastern adoulin"}
    --Salvage = S{"Bhaflau Remnants","Zhayolm Remnants","Arrapago Remnants","Silver Sea Remnants"}

end
 
-- ===================================================================================================================
--      Gearswap rules below this point - Modify at your own peril
-- ===================================================================================================================
 
function pretarget(spell,action)
    if not buffactive['Muddle'] then
        -- Auto Remedy --
        if AutoRemedy and (spell.action_type == 'Magic' or spell.type == 'JobAbility') then
            if buffactive['Paralysis'] or (buffactive['Silence'] and not AutoEcho) then
                cancel_spell()
                send_command('input /item "Remedy" <me>')
            end
        end
        -- Auto Echo Drop --
        if AutoEcho and spell.action_type == 'Magic' and buffactive['Silence'] then
            cancel_spell()
            send_command('input /item "Echo Drops" <me>')
        end
    end
end
 
function precast(spell)
    if (pet.isvalid and pet_midaction() and not spell.type=="SummonerPact") or spell.type=="Item" then
        -- Do not swap if pet is mid-action. I added the type=SummonerPact check because sometimes when the avatar
        -- dies mid-BP, pet.isvalid and pet_midaction() continue to return true for a brief time.
        return
    end
    -- Spell fast cast
    if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    elseif spell.action_type=="Magic" then
        if spell.name=="Stoneskin" then
            equip(sets.precast.FC,{waist="Siegel Sash"})
        else
            equip(sets.precast.FC)
        end
    end
end
 
function midcast(spell)
    if (pet.isvalid and pet_midaction()) or spell.type=="Item" then
        return
    end
    -- BP Timer gear needs to swap here
    if (spell.type=="BloodPactWard" or spell.type=="BloodPactRage") then
        if not buffactive["Astral Conduit"] then
            equipSet = sets.midcast.BP
            if equipSet[spell.name] then
                equipSet = equipSet[spell.name]
            end
            equip(equipSet)
        end
        -- If lag compensation mode is on, set up a timer to equip the BP gear.
        if LagMode then
            send_command('wait 0.5;gs c EquipBP '..spell.name)
        end
    -- Spell Midcast & Potency Stuff
    elseif sets.midcast[spell.english] then
        equip(sets.midcast[spell.english])
    elseif spell.name=="Elemental Siphon" then
        if pet.element==world.day_element and ZodiacElements:contains(pet.element) then
            if pet.element==world.weather_element then
                equip(sets.midcast.SiphonWeatherZodiac)
            else
                equip(sets.midcast.SiphonZodiac)
            end
        else
            if pet.element==world.weather_element then
                equip(sets.midcast.SiphonWeather)
            else
                equip(sets.midcast.Siphon)
            end
        end
    elseif spell.type=="SummonerPact" then
        equip(sets.midcast.Summon)
    elseif string.find(spell.name,"Cure") or string.find(spell.name,"Curaga") then
        equip(sets.midcast.Cure)
    elseif string.find(spell.name,"Protect") or string.find(spell.name,"Shell") then
        equip(sets.midcast.Enhancing,{ring2="Sheltered Ring"})
    elseif spell.skill=="Enfeebling Magic" then
        equip(sets.midcast.Enfeeble)
    elseif spell.skill=="Enhancing Magic" then
        equip(sets.midcast.Enhancing)
    elseif spell.skill=="Elemental Magic" then
        equip(sets.midcast.Nuke)
    elseif spell.action_type=="Magic" then
        equip(sets.midcast.EnmityRecast)
    elseif spell.type=="WeaponSkill" then
        equip(sets.Weaponskill)
    else
        idle()
    end
    -- Treasure Hunter
    if TreasureHunter and THSpells:contains(spell.name) then
        equip(sets.TH)
    end
    -- Auto-cancel existing buffs
    if spell.name=="Stoneskin" and buffactive["Stoneskin"] then
        windower.send_command('cancel 37;')
    elseif spell.name=="Sneak" and buffactive["Sneak"] and spell.target.type=="SELF" then
        windower.send_command('cancel 71;')
    elseif spell.name=="Utsusemi: Ichi" and buffactive["Copy Image"] then
        windower.send_command('wait 1;cancel 66;')
    end
end
 
function aftercast(spell)
    if pet_midaction() or spell.type=="Item" then
        return
    end
    if not string.find(spell.type,"BloodPact") then
        idle()
    end
end
 
function pet_change(pet,gain)
    -- Gain a Pet via Summoning
        if gain then
                -- windower.add_to_chat(8,'----- Avatar set to '..RageMode..' mode! -----')
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
            end
        end
-- End macro set / lockstyle section
end
 
function status_change(new,old)
    if not midaction() and not pet_midaction() then
        idle()
    end
end
 
function buff_change(name,gain)
    if name=="quickening" and not pet_midaction() then
        idle()
    end
    if SacTorque and name=="sleep" and gain and pet.isvalid then
        equip({neck="Sacrifice Torque"})
        disable("neck")
        if buffactive["Stoneskin"] then
            windower.send_command('cancel 37;')
        end
    end
    if SacTorque and name=="sleep" and not gain then
        enable("neck")
    end
end
 
function pet_midcast(spell)
    if not LagMode then
        equipBPGear(spell.name)
    end
end
 
function pet_aftercast(spell)
    idle()
end
 
function equipBPGear(spell)
    if spell=="Shock Squall" then
        return -- Don't bother for Shock Squall, it already went off by the time we get here
    end
    if spell=="Perfect Defense" then
        equip(sets.pet_midcast.SummoningMagic)
    elseif Debuff_BPs:contains(spell) then
        equip(sets.pet_midcast.MagicAcc_BP)
    elseif Buff_BPs_Healing:contains(spell) then
        equip(sets.pet_midcast.Buff_Healing)
    elseif Buff_BPs_Duration:contains(spell) then
        equip(sets.pet_midcast.Buff)
    elseif Buff_BPs_MND:contains(spell) then
        equip(sets.pet_midcast.Buff_MND)
    elseif spell=="Flaming Crush" then
        if AccMode then
            equip(sets.pet_midcast.FlamingCrush_Acc)
        else
            equip(sets.pet_midcast.FlamingCrush)
        end
    elseif ImpactDebuff and (spell=="Impact" or spell=="Conflag Strike") then
        equip(sets.pet_midcast.Impact)
    elseif Magic_BPs_NoTP:contains(spell) then
        if AccMode then
            equip(sets.pet_midcast.Magic_BP_NoTP_Acc)
        else
            equip(sets.pet_midcast.Magic_BP_NoTP)
        end
    elseif Magic_BPs_TP:contains(spell) or string.find(spell," II") or string.find(spell," IV") then
        if AccMode then
            equip(sets.pet_midcast.Magic_BP_TP_Acc)
        else
            equip(sets.pet_midcast.Magic_BP_TP)
        end
    elseif Merit_BPs:contains(spell) then
        if AccMode then
            equip(sets.pet_midcast.Magic_BP_TP_Acc)
        elseif spell=="Meteor Strike" and MeteorStrike>4 then
            equip(sets.pet_midcast.Magic_BP_NoTP)
        elseif spell=="Geocrush" and Geocrush>4 then
            equip(sets.pet_midcast.Magic_BP_NoTP)
        elseif spell=="Grand Fall" and GrandFall>4 then
            equip(sets.pet_midcast.Magic_BP_NoTP)
        elseif spell=="Wind Blade" and WindBlade>4 then
            equip(sets.pet_midcast.Magic_BP_NoTP)
        elseif spell=="Heavenly Strike" and HeavenlyStrike>4 then
            equip(sets.pet_midcast.Magic_BP_NoTP)
        elseif spell=="Thunderstorm" and Thunderstorm>4 then
            equip(sets.pet_midcast.Magic_BP_NoTP)
        else
            equip(sets.pet_midcast.Magic_BP_TP)
        end
    elseif Debuff_Rage_BPs:contains(spell) then
        equip(sets.pet_midcast.Debuff_Rage)
    else
        if AccMode then
            equip(sets.pet_midcast.Physical_BP_Acc)
        elseif Physical_BPs_TP:contains(spell) then
            equip(sets.pet_midcast.Physical_BP_TP)
        elseif buffactive["Aftermath: Lv.3"] and not CustomMode=="Opashoro" then
            equip(sets.pet_midcast.Physical_BP_AM3)
        else
            equip(sets.pet_midcast.Physical_BP)
        end
    end
    if TestMode then
        equip(sets.Test)
    end
    -- Custom Timers
    if spell=="Mewing Lullaby" and string.find(world.area,"Walk of Echoes %[P") then
        send_command('timers create "Mewing Resist: can go @ 30s" 60 down') -- In Gaol, underperforms if used every 20s. 60s is full potency.
        -- Tip: I found it was best to go after 30 seconds. It doesn't fully drain them but you can't afford to wait the full 60.
        -- Use the time between this to use BP:Rages for additional damage! They feed no TP, as long as your avatar doesn't attack.
    end
end
 
-- This command is called whenever you input "gs c <command>"
function self_command(command)
    if string.sub(command,1,7)=="EquipBP" then
        equipBPGear(string.sub(command,9,string.len(command)))
        return
    end
 
    is_valid = command:lower()=="idle"
 
    for _, v in ipairs(IdleModes) do
        if command:lower()==v:lower() then
            IdleMode = v
            send_command('console_echo "Idle Mode: ['..IdleMode..']"')
            is_valid = true
        end
    end
    if not is_valid then
        if string.sub(command,1,6):lower()=="custom" then
            for _, v in ipairs(CustomModes) do
                if string.sub(command,8,string.len(command)):lower()==v:lower() then
                    CustomMode = v
                    send_command('console_echo "Custom Mode: ['..CustomMode..']"')
                    is_valid = true
                end
            end
        elseif command:lower()=="accmode" then
            AccMode = AccMode==false
            is_valid = true
            send_command('console_echo "AccMode: '..tostring(AccMode)..'"')
        elseif command:lower()=="impactmode" then
            ImpactDebuff = ImpactDebuff==false
            is_valid = true
            send_command('console_echo "Impact Debuff: '..tostring(ImpactDebuff)..'"')
        elseif command:lower()=="forceilvl" then
            ForceIlvl = ForceIlvl==false
            is_valid = true
            send_command('console_echo "Force iLVL: '..tostring(ForceIlvl)..'"')
        elseif command:lower()=="lagmode" then
            LagMode = LagMode==false
            is_valid = true
            send_command('console_echo "Lag Compensation Mode: '..tostring(LagMode)..'"')
        elseif command:lower()=="th" then
            TreasureHunter = TreasureHunter==false
            is_valid = true
            send_command('console_echo "Treasure Hunter Mode: '..tostring(TreasureHunter)..'"')
        elseif command:lower()=="test" then
            TestMode = TestMode==false
            is_valid = true
            send_command('console_echo "Test Mode: '..tostring(TestMode)..'"')
        elseif command:lower()=="weaponlock" then
            if WeaponLock then
                enable("main","sub")
                WeaponLock = false
            else
                equip({main="Nirvana",sub="Elan Strap +1"})
                disable("main","sub")
                WeaponLock = true
            end
            is_valid = true
            send_command('console_echo "Weapon Lock: '..tostring(WeaponLock)..'"')
        elseif command=="ToggleIdle" then
            is_valid = true
            -- If you want to change the sets cycled with F9, this is where you do it
            if IdleMode=="Refresh" then
                IdleMode = "DT"
            elseif IdleMode=="DT" then
                IdleMode = "PetDT"
            elseif IdleMode=="PetDT" then
                IdleMode = "DD"
            else
                IdleMode = "Refresh"
            end
            send_command('console_echo "Idle Mode: ['..IdleMode..']"')
        elseif command:lower()=="lowhp" then
            -- Use for "Cure 500 HP" objectives in Omen
            equip({head="Apogee Crown +1",body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},legs="Apogee Slacks +1",feet="Apogee Pumps +1",back="Campestres's Cape"})
            return
        elseif string.sub(command:lower(),1,12)=="meteorstrike" then
            MeteorStrike = string.sub(command,13,13)
            send_command('console_echo "Meteor Strike: '..MeteorStrike..'/5"')
            is_valid = true
        elseif string.sub(command:lower(),1,8)=="geocrush" then
            Geocrush = string.sub(command,9,9)
            send_command('console_echo "Geocrush: '..Geocrush..'/5"')
            is_valid = true
        elseif string.sub(command:lower(),1,9)=="grandfall" then
            GrandFall = string.sub(command,10,10)
            send_command('console_echo "Grand Fall: '..GrandFall..'/5"')
            is_valid = true
        elseif string.sub(command:lower(),1,9)=="windblade" then
            WindBlade = +string.sub(command,10,10)
            send_command('console_echo "Wind Blade: '..WindBlade..'/5"')
            is_valid = true
        elseif string.sub(command:lower(),1,14)=="heavenlystrike" then
            HeavenlyStrike = string.sub(command,15,15)
            send_command('console_echo "Heavenly Strike: '..HeavenlyStrike..'/5"')
            is_valid = true
        elseif string.sub(command:lower(),1,12)=="thunderstorm" then
            Thunderstorm = string.sub(command,13,13)
            send_command('console_echo "Thunderstorm: '..Thunderstorm..'/5"')
            is_valid = true
        elseif command:lower()=="opa" then
            if CustomMode=='Opashoro' then
                enable("main","sub")
                WeaponLock = false
                CustomMode = 'None'
            else
                enable("main","sub")
                equip({main="Opashoro",sub="Elan Strap +1"})
                disable("main","sub")
                WeaponLock = true
                CustomMode = 'Opashoro'
            end
            send_command('console_echo "Opashoro Mode: '..tostring(WeaponLock)..'"')
            is_valid = true
        end
    end
 
    if is_valid then
        if not midaction() and not pet_midaction() then
            idle()
        end
    else
        sanitized = command:gsub("\"", "")
        send_command('console_echo "Invalid self_command: '..sanitized..'"') -- Note: If you use Gearinfo, comment out this line
    end
end
 
-- This function is for returning to aftercast gear after an action/event.
function idle()
    equipSet = sets.aftercast
    if TownIdle:contains(world.area:lower()) then
        equipSet = sets.aftercast.Town
    end
    if equipSet[IdleMode] then
        equipSet = equipSet[IdleMode]
    end
    if pet.isvalid then
        if equipSet[pet.name] then
            equipSet = equipSet[pet.name]
        elseif string.find(pet.name,'Spirit') and equipSet["Spirit"] then
            equipSet = equipSet["Spirit"]
        elseif equipSet["Avatar"] then
            equipSet = equipSet["Avatar"]
        end
    end
    if equipSet[player.status] then
        equipSet = equipSet[player.status]
    end
    if player.mpp < 50 and equipSet["LowMP"] then
        equipSet = equipSet["LowMP"]
    end
    if ForceIlvl and equipSet["ForceIlvl"] then
        equipSet = equipSet["ForceIlvl"]
    end
    if equipSet[CustomMode] then
        equipSet = equipSet[CustomMode]
    end
    equip(equipSet)
 
    if (buffactive['Quickening'] or buffactive['Sneak'] or buffactive['Invisible']) and IdleMode~='DT' then
        --if not ForceIlvl then
            equip(sets.Movement)
        --end
    end
    -- Balrahn's Ring
    --if Salvage:contains(world.area) then
    --  equip({ring2="Balrahn's Ring"})
    --end
    -- Maquette Ring
    --if world.area=='Maquette Abdhaljs-Legion' and not IdleMode=='DT' then
    --  equip({ring2="Maquette Ring"})
    --end
end