function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
end


function job_setup()

end
function user_setup()
    state.OffenseMode:options('Normal')
    state.HybridMode:options('Normal')
    state.RangedMode:options('Normal')
    state.WeaponskillMode:options('Normal')
    state.IdleMode:options('Normal')
    state.MainHand = M{['description']='NormalWeapons', 'Shining One', 'Naegling'}
    state.WeaponLock = M(false, 'Weapon Lock')

    
    state.abyssea_main_hands = M{
        ['description'] = 'AbysseaWeapons',
        'Bronze Knife',
        'Wax Sword',
        'Rusty Greatsword',
        'Bronze Zaghnal',
        'Harpoon',
        'Feline Hagoita',
        'Ash Staff',
        'Debahocho',
        'Mutsunokami',
    }

    WeaponTable = {}
    WeaponTable["BronzeKnife"] = "Dagger"
    WeaponTable["WaxSword"] = "Sword"
    WeaponTable["RustyGreatsword"] = "Great Sword"
    WeaponTable["BronzeZaghnal"] = "Scythe"
    WeaponTable["Harpoon"] = "Polearm"
    WeaponTable["FelineHagoita"] = "Club"
    WeaponTable["AshStaff"] = "Staff"
    WeaponTable["Debahocho"] = "Katana"
    WeaponTable["Mutsunokami"] = "Great Katana"

    WS = {}
    WS["Dagger"] = {}
    WS["Sword"] = {}
    WS["Great Sword"] = {}
    WS["Scythe"] = {}
    WS["Polearm"] = {}
    WS["Katana"] = {}
    WS["Great Katana"] = {}
    WS["Club"] = {}
    WS["Staff"] = {}

    WS["Dagger"][1] = "Cyclone"
    WS["Dagger"][2] = "Energy Drain"
    WS["Sword"][1] = "Red Lotus Blade"
    WS["Sword"][2] = "Seraph Blade"
    WS["Great Sword"][1] = "Freezebite"
    WS["Scythe"][1] = "Shadow of Death"
    WS["Polearm"][1] = "Raiden Thrust"
    WS["Katana"][1] = "Blade: Ei"
    WS["Great Katana"][1] = "Tachi: Jinpu"
    WS["Great Katana"][2] = "Tachi: Koki"
    WS["Club"][1] = "Seraph Strike"
    WS["Staff"][1] = "Earth Crusher"
    WS["Staff"][2] = "Sunburst"


    state.Abyssea = M{'false', 'true'}
    state.skillNum = 1
    state.currWepSkill = ''
    -- Additional local binds

    send_command('bind ^` input /ja "Provoke" <t>')
    send_command('bind f10 gs c set engaged Hybrid')
    send_command('bind f12 gs c set engaged Normal')
    
    send_command('bind @e gs c cycle MainHand')
    send_command('bind @r gs c cycle Abyssea')
    send_command('bind @d gs c cycleback abyssea_main_hands')
    send_command('bind @f gs c cycle abyssea_main_hands')
    send_command('bind ^w gs c ws')

end


function job_self_command(cmdParams, eventArgs)
    if cmdParams[1] == 'ws' then
       -- windower.add_to_chat(8,'----- Entering Self Command Function -----')
        --windower.add_to_chat(8,'input /weaponskill '..state.currWepSkill..' <t>')
        send_command('input /weaponskill '..state.currWepSkill..' <t>')
        if state.skillNum > 1 then
            state.skillNum = 1
        elseif state.skillNum == 1 and WS[WeaponTable[state.abyssea_main_hands.current]][2] ~= nil then
            state.skillNum = 2
        end
        state.currWepSkill = WS[WeaponTable[state.abyssea_main_hands.current]][state.skillNum]
        windower.add_to_chat(8,'----- Weaponskill set to '..WS[WeaponTable[state.abyssea_main_hands.current]][state.skillNum]..'-----')
    end
end



-- Called when this job file is unloaded (eg: job change)
function user_unload()
    send_command('unbind ^`')
    send_command('unbind @e')
    send_command('unbind @r')
    send_command('unbind @f')
    send_command('unbind f12')
    send_command('unbind f10')
end

-- Define sets and vars used by this job file.
function init_gear_sets()
    include('Gearsets/'..player.name..'/WAR_Gearsets.lua')
end


function check_weaponset()
        if state.Abyssea.current == 'true' then
            equip(sets[state.abyssea_main_hands.current])
            state.skillNum = 1
            state.currWepSkill = WS[WeaponTable[state.abyssea_main_hands.current]][state.skillNum]
            windower.add_to_chat(8,'----- Weaponskill set to '..WS[WeaponTable[state.abyssea_main_hands.current]][state.skillNum]..'-----')
        else
            equip(sets[state.MainHand.current])
        end
end

function job_state_change(stateField, newValue, oldValue)

    check_weaponset()
end