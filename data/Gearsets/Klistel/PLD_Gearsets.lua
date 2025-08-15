function user_job_setup()

    -- Options: Override default values	
    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Tank', 'DDTank', 'Normal')
    state.WeaponskillMode:options('Match', 'Normal', 'Acc')
    state.CastingMode:options('Normal', 'SIRD')
    state.Passive:options('None', 'AbsorbMP')
    state.PhysicalDefenseMode:options('PDT_HP', 'PDT', 'PDT_Reraise')
    state.MagicalDefenseMode:options('MDT_HP', 'MDT', 'MDT_Reraise')
    state.ResistDefenseMode:options('MEVA_HP', 'MEVA')
    state.IdleMode:options('Tank', 'Kiting', 'PDT', 'Block', 'MDT')
    state.Weapons:options('None', 'SakpataAegis', 'SakpataDuban',
                          'NaeglingBlurred', 'ClubDuban', 'MalignanceAegis', 'ExcalAegis', 'ExcalDuban')

    state.ExtraDefenseMode = M {
        ['description'] = 'Extra Defense Mode',
        'None',
        'Twilight'
    }

    -- Place for your settings and custom functions that are meant to affect all of your jobs and characters.
    latency = .25
    -- If this is set to true it will prevent you from casting shadows when you have more up than that spell would generate.
    conserveshadows = false
    -- Display related settings.

    lockstyleset = 3
    --style_lock = true

    -- Options for automation.
    state.ReEquip = M(true, 'ReEquip Mode') -- Set this to false if you don't want to equip your current Weapon set when you aren't wearing any weapons.
    state.AutoArts = M(true, 'AutoArts') -- Set this to false if you don't want to automatically try to keep up Solace/Arts.
    state.AutoLockstyle = M(true, 'AutoLockstyle Mode') -- Set this to false if you don't want gearswap to automatically lockstyle on load and weapon change.
    state.CancelStoneskin = M(true, 'Cancel Stone Skin') -- Set this to false if you don't want to automatically cancel stoneskin when you're slept.
    state.AutoEmblem = M(true, 'Auto Emblem')
    state.AutoCover = M(false, 'Auto Cover')
    state.AutoMajesty = M(true, 'Auto Majesty')

    --[[Binds you may want to change.
	Bind special characters.
	@ = Windows Key
	% = Works only when text bar not up.
	$ = Works only when text bar is up.
	^ = Control Key
	! = Alt Key
	~ = Shift Key
	# = Apps Key
]]
    send_command('bind !f8 gs c toggle AutoDefenseMode') -- Turns auto-defense mode off and on.
    send_command('bind f9 gs c cycle OffenseMode') -- Changes offense settings such as accuracy.
    send_command('bind ^f9 gs c cycle HybridMode') -- Changes defense settings for melee such as PDT.
    send_command('bind @f9 gs c cycle RangedMode') -- Changes ranged offense settings such as accuracy.
    send_command('bind !f9 gs c cycle WeaponskillMode') -- Changes weaponskill offense settings such as accuracy.
    send_command('bind f10 gs c set DefenseMode Physical') -- Turns your physical defense set on.
    send_command('bind ^f10 gs c cycle PhysicalDefenseMode') -- Changes your physical defense set.
    send_command('bind !f10 gs c toggle Kiting') -- Keeps your kiting gear on..
    send_command('bind f11 gs c set DefenseMode Magical') -- Turns your magical defense set on.
    send_command('bind ^f11 gs c cycle MagicalDefenseMode') -- Changes your magical defense set.
    send_command('bind @f11 gs c cycle CastingMode') -- Changes your castingmode options such as magic accuracy.
    send_command('bind !f11 gs c cycle ExtraMeleeMode') -- Adds another set layered on top of your engaged set.
    send_command('bind ^f12 gs c cycle ResistDefenseMode') -- Changes your resist defense set.
    send_command('bind f12 gs c set DefenseMode Resist') -- Turns your resist defense set on.
    send_command('bind @f12 gs c cycle IdleMode') -- Changes your idle mode options such as refresh.
    send_command('bind !f12 gs c reset DefenseMode') -- Turns your defensive mode off.
    send_command('bind ^@!f12 gs reload') -- Reloads gearswap.

    -- Additional local binds
    send_command('bind !` gs c SubJobEnmity')
    send_command('bind !f11 gs c cycle ExtraDefenseMode')
    send_command('bind @` gs c cycle RuneElement')
    send_command('bind ^pause gs c toggle AutoRuneMode')
    send_command('bind ^q gs c set IdleMode Kiting')
    send_command('bind !q gs c set IdleMode PDT')
    send_command('bind @f8 gs c toggle AutoTankMode')
    send_command('bind @f5 gs c toggle AutoBuffMode')
    send_command('bind @f10 gs c toggle TankAutoDefense')
    send_command('bind ^@!` gs c cycle SkillchainMode')

    send_command('bind @t gs c cycle treasuremode')
    send_command('bind @d gs c cycleback Weapons')
    send_command('bind @f gs c cycle Weapons')

    send_command('bind ^c input /ma "Crusade" <me>')
    send_command('bind !c input /ja "Cover" <stpc>')
    send_command('bind !a input /ma "Cure IV" <stpc>')
    send_command('bind ^a input /ma "Phalanx" <me>')
    send_command('bind ^numpad0 input /ja "Shield Bash" <t>')
    send_command('bind ^numpad. input /ja "Sentinel" <me>')
    send_command('bind !numpad. input /ja "Rampart" <me>')
    send_command('bind ^numpad+ input /ja "Chivalry" <me>')
    send_command('bind ^numpadenter input /ja "Palisade" <me>')
    send_command('bind !numpadenter input /ja "Fealty" <me>')
    send_command('bind ^numlock input /ma "Flash" <stnpc>')
    send_command('bind !numpad7 input /ma "Banishga" <stnpc>')

    if player.sub_job == 'WAR' then
        send_command('bind ^numpad/ input /ja "Berserk" <me>')
        send_command('bind !numpad* input /ja "Warcry" <me>')
        send_command('bind ^numpad* input /ja "Provoke" <t>')
        send_command('bind ^numpad- input /ja "Aggressor" <me>')
        send_command('bind !numpad/ input /ja "Defender" <me>')
    elseif player.sub_job == 'NIN' then
        send_command('bind ^numpad/ input /ma "Utsusemi: Ni" <me>')
        send_command('bind ^numpad* input /ma "Utsusemi: Ichi" <me>')
    elseif player.sub_job == 'DNC' then
        send_command('bind ^numpad/ input /ja "Haste Samba" <me>')
        send_command('bind ^numpad* input /ja "Box Step" <t>')
        send_command('bind ^numpad- input /ja "Spectral Jig" <me>')
    elseif player.sub_job == 'BLU' then
        send_command('bind ^numpad/ input /ma "Cocoon" <me>')
        send_command('bind !numpad* input /ma "Blank Gaze "<t>')
        send_command('bind ^numpad* input /ma "Stinking Gas" <t>')
        send_command('bind ^numpad- input /ma "Geist Wall" <t>')
        send_command('bind !numpad/ input /ma "Sheep Song" <t>')
    end

    send_command('bind ^numpad7 input /ws "Savage Blade" <t>')
    send_command('bind ^numpad8 input /ws "Atonement" <t>')
    send_command('bind ^numpad9 input /ws "Knights of Round" <t>')
    send_command('bind ^numpad4 input /ws "Sanguine Blade" <t>')
    send_command('bind ^numpad5 input /ws "Seraph Blade" <t>')
    send_command('bind ^numpad1 input /ws "Black Halo" <t>')

    select_default_macro_book()
    update_defense_mode()
end

function init_gear_sets()

    include('Gearsets/' .. player.name .. '/Globals-AugGear.lua')
    ------------------------------------------------------------------------------------------------
    ---------------------------------------- JSE ---------------------------------------------------
    ------------------------------------------------------------------------------------------------

    gear.AF_Head = {name = "Reverence Coronet +1", priority = 41}
    gear.AF_Body = {name = "Reverence Surcoat +2", priority = 244}
    gear.AF_Hands = {name = "Reverence Gauntlets +1", priority = 69}
    gear.AF_Legs = {name = "Reverence Breeches +1", priority = 102}
    gear.AF_Feet = {name = "Reverence Leggings +3", priority = 72}

    gear.Relic_Head = {name = "Caballarius Coronet +1", priority = 96}
    gear.Relic_Body = {name = "Caballarius Surcoat +1", priority = 118}
    gear.Relic_Hands = {name = "Caballarius Gauntlets +3", priority = 104}
    gear.Relic_Legs = {name = "Caballarius Breeches +1", priority = 52}
    gear.Relic_Feet = {name = "Caballarius Leggings +1", priority = 43}

    gear.Empy_Head = {name = "Chevalier's Armet +3", priority = 135}
    gear.Empy_Body = {name = "Chevalier's Cuirass +2", priority = 141}
    gear.Empy_Hands = {name = "Chevalier's Gauntlets +2", priority = 54}
    gear.Empy_Legs = {name = "Chevalier's Cuisses +3", priority = 117}
    gear.Empy_Feet = {name = "Chevalier's Sabatons +3", priority = 42}

    gear.JSE_Neck = "Knight's Bead Necklace +2"

    --------------------------------------
    -- Precast sets
    --------------------------------------

    sets.Enmity = {
        --main = {name = "Sakpata's Sword", priority = 100},
        --sub = {name = "Duban", priority = 0},
        ammo = {name = "Paeapua", priority = 0},
        head = {name = "Loess Barbuta +1", priority = 105},
        neck = {name = "Moonlight Necklace", priority = 0},
        ear1 = {name = "Friomisi Earring", priority = 0},
        ear2 = {name = "Trux Earring", priority = 0},
        body = gear.Souveran_C_Body,
        hands = {name = "Macabre Gaunt. +1", priority = 29},
        ring1 = {name = "Apeile Ring +1", priority = 0},
        ring2 = {name = "Apeile Ring", priority = 0},
        back = gear.PLD_Enmity_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = gear.Souveran_C_Legs,
        feet = gear.Eschite_A_Feet
    }

    sets.Enmity.SIRD = {
        --main = {name = "Sakpata's Sword", priority = 100},
        --sub = {name = "Sacro Bulwark", priority = 0},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Loess Barbuta +1", priority = 105},
        neck = {name = "Moonlight Necklace", priority = 0},
        ear1 = {name = "Trux Earring", priority = 0},
        ear2 = {name = "Magnetic Earring", priority = 0},
        body = gear.Souveran_C_Body,
        hands = {name = "Macabre Gaunt. +1", priority = 29},
        ring1 = {name = "Apeile Ring +1", priority = 0},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_Enmity_Cape,
        waist = {name = "Rumination Sash", priority = 0},
        legs = {name = "Founder's Hose", priority = 54},
        feet = {name = "Odyssean Greaves", priority = 20}
    }

    sets.Enmity.DT = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Souveran_C_Head,
        neck = {name = "Unmoving Collar +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    -- Precast sets to enhance JAs
    sets.precast.JA['Invincible'] = set_combine(sets.Enmity,
                                                {legs = gear.Relic_Legs})
    sets.precast.JA['Holy Circle'] = set_combine(sets.Enmity,
                                                 {feet = gear.AF_Feet})
    sets.precast.JA['Sentinel'] = set_combine(sets.Enmity,
                                              {feet = gear.Relic_Feet})
    sets.precast.JA['Rampart'] = set_combine(sets.Enmity, {}) -- head="Valor Coronet" (Also Vit?)
    sets.precast.JA['Fealty'] = set_combine(sets.Enmity,
                                            {body = gear.Relic_Body})
    sets.precast.JA['Divine Emblem'] = set_combine(sets.Enmity,
                                                   {feet = gear.Empy_Feet})
    sets.precast.JA['Cover'] =
        set_combine(sets.Enmity, {body = gear.Relic_Body}) -- head="Rev. Coronet +1",

    sets.precast.JA['Invincible'].DT = set_combine(sets.Enmity.DT,
                                                   {legs = gear.Relic_Legs})
    sets.precast.JA['Holy Circle'].DT = set_combine(sets.Enmity.DT,
                                                    {feet = gear.AF_Legs})
    sets.precast.JA['Sentinel'].DT = set_combine(sets.Enmity.DT,
                                                 {feet = gear.Relic_Feet})
    sets.precast.JA['Rampart'].DT = set_combine(sets.Enmity.DT, {}) -- head="Valor Coronet" (Also Vit?)
    sets.precast.JA['Fealty'].DT = set_combine(sets.Enmity.DT,
                                               {body = gear.Relic_Body})
    sets.precast.JA['Divine Emblem'].DT =
        set_combine(sets.Enmity.DT, {feet = gear.Empy_Feet})
    sets.precast.JA['Cover'].DT = set_combine(sets.Enmity.DT,
                                              {body = gear.Relic_Body}) -- head="Rev. Coronet +1",

    -- add mnd for Chivalry
    sets.precast.JA['Chivalry'] = {
        ammo = {name = "Paeapua", priority = 0},
        head = {name = "Nyame Helm", priority = 91},
        neck = {name = "Unmoving Collar +1", priority = 0},
        ear1 = {name = "Nourish. Earring", priority = 0},
        ear2 = {name = "Nourish. Earring +1", priority = 0},
        body = gear.AF_Body,
        hands = gear.Relic_Hands,
        ring1 = {name = "Stikini Ring +1", priority = 0},
        ring2 = {name = "Rufescent Ring", priority = 0},
        back = gear.PLD_Enmity_Cape,
        waist = {name = "Luminary Sash", priority = 0},
        legs = {name = "Nyame Flanchard", priority = 114},
        feet = gear.Carmine_D_Feet
    }

    sets.precast.JA['Chivalry'].DT = {
        ammo = {name = "Paeapua", priority = 0},
        head = {name = "Nyame Helm", priority = 91},
        neck = {name = "Unmoving Collar +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = gear.AF_Body,
        hands = gear.Relic_Hands,
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Luminary Sash", priority = 0},
        legs = {name = "Nyame Flanchard", priority = 114},
        feet = gear.Carmine_D_Feet
    }

    sets.precast.JA['Shield Bash'] = set_combine(sets.Enmity,
                                                 {hands = gear.Relic_Hands})
    sets.precast.JA['Provoke'] = set_combine(sets.Enmity, {})
    sets.precast.JA['Warcry'] = set_combine(sets.Enmity, {})
    sets.precast.JA['Palisade'] = set_combine(sets.Enmity, {})
    sets.precast.JA['Intervene'] = set_combine(sets.Enmity, {})
    sets.precast.JA['Defender'] = set_combine(sets.Enmity, {})
    sets.precast.JA['Berserk'] = set_combine(sets.Enmity, {})
    sets.precast.JA['Aggressor'] = set_combine(sets.Enmity, {})

    sets.precast.JA['Shield Bash'].DT = set_combine(sets.Enmity.DT,
                                                    {hands = gear.Relic_Hands})
    sets.precast.JA['Provoke'].DT = set_combine(sets.Enmity.DT, {})
    sets.precast.JA['Warcry'].DT = set_combine(sets.Enmity.DT, {})
    sets.precast.JA['Palisade'].DT = set_combine(sets.Enmity.DT, {})
    sets.precast.JA['Intervene'].DT = set_combine(sets.Enmity.DT, {})
    sets.precast.JA['Defender'].DT = set_combine(sets.Enmity.DT, {})
    sets.precast.JA['Berserk'].DT = set_combine(sets.Enmity.DT, {})
    sets.precast.JA['Aggressor'].DT = set_combine(sets.Enmity.DT, {})

    -- Waltz set (chr and vit)
    sets.precast.Waltz = {
        ammo = {name = "Aurgelmir Orb +1", priority = 0},
        head = {name = "Nyame Helm", priority = 91},
        neck = {name = "Unmoving Collar +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = gear.AF_Body,
        hands = {name = "Regal Gauntlets", priority = 205},
        ring1 = {name = "Asklepian Ring", priority = 0},
        ring2 = {name = "Valseur's Ring", priority = 0},
        back = gear.PLD_DT_Cape,
        waist = {name = "Chaac Belt", priority = 0},
        legs = {name = "Nyame Flanchard", priority = 114},
        feet = {name = "Nyame Sollerets", priority = 68}
    }

    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}

    sets.precast.JA['Animated Flourish'] = set_combine(sets.Enmity, {})

    -- Fast cast sets for spells

    sets.precast.FC = {
        --main = {name = "Sakpata's Sword", priority = 100},
        --sub = {name = "Chanter's Shield", priority = 22},
        ammo = {name = "Sapience Orb", priority = 0},
        -- ammo = "Impatiens",
        head = gear.Carmine_D_Head,
        neck = {name = "Baetyl Pendant", priority = 0},
        ear1 = {name = "Enchntr. Earring +1", priority = 0},
        ear2 = {name = "Loquac. Earring", priority = 0},
        body = gear.AF_Body,
        hands = {name = "Leyline Gloves", priority = 25},
        ring1 = {name = "Weatherspoon Ring", priority = 0},
        ring2 = {name = "Kishar Ring", priority = 0},
        back = gear.PLD_FC_Cape,
        --waist = {name = "Creed Baudrier", priority = 40},
        waist = {name = "Platinum Moogle Belt", priority = 300},
        legs = {name = "Enif Cosciales", priority = 40},
        -- feet = {name = "Odyssean Greaves", priority = 20}
        feet = gear.Empy_Feet
    }

    sets.precast.FC.DT = {
        --main = {name = "Sakpata's Sword", priority = 100},
        ammo = {name = "Sapience Orb", priority = 0},
        -- ammo = "Impatiens",
        head = gear.Souveran_C_Head,
        neck = {name = "Baetyl Pendant", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.precast.FC['Enhancing Magic'] =
        set_combine(sets.precast.FC, {waist = {name = "Siegel Sash", priority = 0}})
    sets.precast.FC['Enhancing Magic'].DT =
        set_combine(sets.precast.FC.DT, {waist = {name = "Siegel Sash", priority = 0}})

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {
        neck = {name = "Diemer Gorget", priority = 0},
        ear1 = {name = "Nourish. Earring", priority = 0},
        ear2 = {name = "Nourish. Earring +1", priority = 0},
        --body = {name = "Jumalik Mail", priority = 116}
    })

    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        ammo = {name = "Aurgelmir Orb +1", priority = 0},
        head = {name = "Flam. Zucchetto +2", priority = 80},
        neck = {name = "Fotia Gorget", priority = 0},
        ear1 = {name = "Cessance Earring", priority = 0},
        ear2 = {name = "Brutal Earring", priority = 0},
        body = {name = "Nyame Mail", priority = 136},
        hands = {name = "Nyame Gauntlets", priority = 91},
        ring1 = {name = "Epaminondas's Ring", priority = 0},
        ring2 = {name = "Cornelia's Ring", priority = 0},
        back = gear.PLD_WSD_Cape,
        waist = {name = "Fotia Belt", priority = 0},
        legs = {name = "Sulev. Cuisses +2", priority = 50},
        feet = {name = "Sulev. Leggings +2", priority = 20}
    }

    sets.precast.WS.DT = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Souveran_C_Head,
        neck = {name = "Loricate Torque +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.precast.WS.Acc = {
        ammo = {name = "Hasty Pinion +1", priority = 0},
        head = {name = "Ynglinga Sallet", priority = 43},
        neck = {name = "Combatant's Torque", priority = 0},
        ear1 = {name = "Mache Earring +1", priority = 0},
        ear2 = {name = "Telos Earring", priority = 0},
        body = gear.Valo_WSD_body,
        hands = {name = "Sakpata's Gauntlets", priority = 91},
        ring1 = {name = "Ramuh Ring +1", priority = 0},
        ring2 = {name = "Ramuh Ring +1", priority = 0},
        --back = "Ground. Mantle +1",
        waist = {name = "Olseni Belt", priority = 0},
        legs = gear.Carmine_D_Legs,
        feet = {name = "Sulev. Leggings +2", priority = 20}
    }

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, {
        neck = {name = "Fotia Gorget", priority = 0},
        ear1 = {name = "Brutal Earring", priority = 0},
        ear2 = {name = "Moonshade Earring", priority = 0}
    })
    sets.precast.WS['Requiescat'].Acc = set_combine(sets.precast.WS.Acc, {
        neck = {name = "Fotia Gorget", priority = 0},
        ear1 = {name = "Mache Earring +1", priority = 0},
        ear2 = {name = "Moonshade Earring", priority = 0}
    })

    sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {
        neck = {name = "Fotia Gorget", priority = 0},
        ear1 = {name = "Brutal Earring", priority = 0},
        ear2 = {name = "Moonshade Earring", priority = 0}
    })
    sets.precast.WS['Chant du Cygne'].Acc =
        set_combine(sets.precast.WS.Acc, {
            neck = {name = "Fotia Gorget", priority = 0},
            ear1 = {name = "Mache Earring +1", priority = 0},
            ear2 = {name = "Moonshade Earring", priority = 0}
        })

    sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
        neck = gear.JSE_Neck,
        ear1 = {name = "Ishvara Earring", priority = 0},
        ear2 = {name = "Moonshade Earring", priority = 0}
    })
    sets.precast.WS['Savage Blade'].Acc =
        set_combine(sets.precast.WS.Acc,
                    {ear1 = {name = "Mache Earring +1", priority = 0}, ear2 = {name = "Telos Earring", priority = 0}})


    sets.precast.WS['Sanguine Blade'] = {
        ammo = "Ghastly Tathlum +1",
        head = {name = "Pixie Hairpin +1", priority = -35},
        neck = {name = "Fotia Gorget", priority = 0},
        ear1 = {name = "Friomisi Earring", priority = 0},
        ear2 = {name = "Crematio Earring", priority = 0},
        body = {name = "Nyame Mail", priority = 136},
        hands = {name = "Nyame Gauntlets", priority = 91},
        ring1 = {name = "Archon Ring", priority = 0},
        ring2 = {name = "Metamor. Ring +1", priority = -60},
        back = {name = "Toro Cape", priority = 0},
        waist = {name = "Fotia Belt", priority = 0},
        legs = {name = "Nyame Flanchard", priority = 114},
        feet = {name = "Nyame Sollerets", priority = 68}
    }

    sets.precast.WS['Atonement'] = {
        ammo = {name = "Paeapua", priority = 0},
        head = {name = "Loess Barbuta +1", priority = 105},
        neck = {name = "Moonlight Necklace", priority = 0},
        ear1 = {name = "Friomisi Earring", priority = 0},
        ear2 = {name = "Trux Earring", priority = 0},
        body = gear.Souveran_C_Body,
        hands = {name = "Macabre Gaunt. +1", priority = 29},
        ring1 = {name = "Apeile Ring +1", priority = 0},
        ring2 = {name = "Apeile Ring", priority = 0},
        back = gear.PLD_Enmity_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = gear.Souveran_C_Legs,
        feet = gear.Eschite_A_Feet
    }

    -- Swap to these on Moonshade using WS if at 3000 TP
    sets.MaxTP = {ear1 = {name = "Cessance Earring", priority = 0}, ear2 = {name = "Brutal Earring", priority = 0}}
    sets.AccMaxTP = {ear1 = {name = "Mache Earring +1", priority = 0}, ear2 = {name = "Telos Earring", priority = 0}}

    --------------------------------------
    -- Midcast sets
    --------------------------------------

    sets.midcast.FastRecast = {
        --main = {name = "Sakpata's Sword", priority = 100},
        --sub = {name = "Chanter's Shield", priority = 22},
        ammo = {name = "Hasty Pinion +1", priority = 0},
        head = gear.Carmine_D_Head,
        neck = {name = "Baetyl Pendant", priority = 0},
        ear1 = {name = "Enchntr. Earring +1", priority = 0},
        ear2 = {name = "Loquac. Earring", priority = 0},
        body = gear.AF_Body,
        hands = {name = "Leyline Gloves", priority = 25},
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Kishar Ring", priority = 0},
        back = gear.PLD_FC_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = {name = "Enif Cosciales", priority = 40},
        feet = {name = "Odyssean Greaves", priority = 20}
    }

    sets.midcast.FastRecast.DT = {
        --main = {name = "Sakpata's Sword", priority = 100},
        --sub = {name = "Duban", priority = 0},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Souveran_C_Head,
        neck = {name = "Loricate Torque +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.midcast.Flash = set_combine(sets.Enmity, {})
    sets.midcast.Flash.SIRD = set_combine(sets.Enmity.SIRD, {})
    sets.midcast.Stun = set_combine(sets.Enmity, {})
    sets.midcast.Stun.SIRD = set_combine(sets.Enmity.SIRD, {})
    sets.midcast['Blue Magic'] = set_combine(sets.Enmity, {})
    sets.midcast['Blue Magic'].SIRD = set_combine(sets.Enmity.SIRD, {})
    sets.midcast.Cocoon = set_combine(sets.Enmity.SIRD, {})

    sets.midcast.Cure = {
        --main = {name = "Sakpata's Sword", priority = 100},
        --sub = {name = "Sacro Bulwark", priority = 0},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Loess Barbuta +1", priority = 105},
        neck = {name = "Sacro Gorget", priority = 0},
        ear1 = {name = "Nourish. Earring +1", priority = 0},
        ear2 = {name = "Chevalier's Earring", priority = 0},
        body = {name = "Jumalik Mail", priority = 116},
        hands = {name = "Macabre Gaunt. +1", priority = 29},
        ring1 = {name = "Defending Ring", priority = 0},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_Enmity_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = gear.Carmine_D_Legs,
        feet = {name = "Odyssean Greaves", priority = 20}
    }

    sets.midcast.Cure.SIRD = {
        --main = {name = "Deacon Sword", priority = 0},
        --sub = {name = "Sacro Bulwark", priority = 0},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Souveran_C_Head,
        neck = {name = "Loricate Torque +1", priority = 0},
        ear1 = {name = "Nourish. Earring +1", priority = 0},
        ear2 = {name = "Magnetic Earring", priority = 0},
        body = {name = "Jumalik Mail", priority = 116},
        hands = {name = "Macabre Gaunt. +1", priority = 29},
        ring1 = {name = "Defending Ring", priority = 0},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_Enmity_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = {name = "Founder's Hose", priority = 54},
        feet = {name = "Odyssean Greaves", priority = 20}
    }

    sets.midcast.Cure.DT = {
        --main = {name = "Deacon Sword", priority = 0},
        --sub = {name = "Sacro Bulwark", priority = 0},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Souveran_D_Head,
        neck = {name = "Loricate Torque +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.midcast.Reprisal = {
        --main = {name = "Sakpata's Sword", priority = 100},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Loess Barbuta +1", priority = 105},
        neck = {name = "Unmoving Collar +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = {name = "Arke Cosc. +1", priority = 191},
        feet = gear.Souveran_D_Feet
    }

    sets.Self_Healing = {
        --main = {name = "Deacon Sword", priority = 0},
        --sub = {name = "Sacro Bulwark", priority = 0},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Souveran_C_Head,
        neck = {name = "Sacro Gorget", priority = 0},
        ear1 = {name = "Nourish. Earring +1", priority = 0},
        ear2 = {name = "Chevalier's Earring", priority = 0},
        body = gear.Souveran_C_Body,
        hands = {name = "Macabre Gaunt. +1", priority = 29},
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.Self_Healing.SIRD = {
        --main = {name = "Deacon Sword", priority = 0},
        --sub = {name = "Sacro Bulwark", priority = 0},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Souveran_C_Head,
        neck = {name = "Loricate Torque +1", priority = 0},
        ear1 = {name = "Nourish. Earring +1", priority = 0},
        ear2 = {name = "Magnetic Earring", priority = 0},
        body = gear.Souveran_C_Body,
        hands = {name = "Macabre Gaunt. +1", priority = 29},
        ring1 = {name = "Defending Ring", priority = 0},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = {name = "Solemnity Cape", priority = 0},
        waist = {name = "Flume Belt +1", priority = 0},
        legs = {name = "Founder's Hose", priority = 54},
        feet = {name = "Odyssean Greaves", priority = 20}
    }

    sets.Self_Healing.DT = {
        --main = {name = "Deacon Sword", priority = 0},
        --sub = {name = "Sacro Bulwark", priority = 0},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Souveran_C_Head,
        neck = {name = "Loricate Torque +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.Cure_Received = {
        hands = gear.Souveran_C_Hands,
        feet = gear.Souveran_D_Feet
    }
    sets.Self_Refresh = {waist = {name = "Gishdubar Sash", priority = 0}}
    sets.Enhancing_Received = {}

    sets.midcast['Enhancing Magic'] = {
       -- main = {name = "Colada", priority = 0},
        --sub = {name = "Duban", priority = 0},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Carmine_D_Head,
        neck = {name = "Melic Torque", priority = 0},
        ear1 = {name = "Mimir Earring", priority = 0},
        ear2 = {name = "Andoaa Earring", priority = 0},
        body = {name = "Shab. Cuirass +1", priority = 115},
        hands = {name = "Regal Gauntlets", priority = 205},
        ring1 = {name = "Defending Ring", priority = 0},
        ring2 = {name = "Kishar Ring", priority = 0},
        back = "Merciful Cape",
        waist = "Olympus Sash",
        legs = gear.Carmine_D_Legs,
        feet = {name = "Odyssean Greaves", priority = 20}
    }

    sets.midcast['Enhancing Magic'].SIRD = {
        --main = {name = "Colada", priority = 0},
        --sub = {name = "Duban", priority = 0},
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Souveran_C_Head,
        neck = {name = "Melic Torque", priority = 0},
        ear1 = {name = "Mimir Earring", priority = 0},
        ear2 = {name = "Magnetic Earring", priority = 0},
        body = {name = "Shab. Cuirass +1", priority = 115},
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Defending Ring", priority = 0},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = "Merciful Cape",
        waist = "Olympus Sash",
        legs = gear.AF_Legs,
        feet = {name = "Odyssean Greaves", priority = 20}
    }

    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'],
                                         {waist = {name = "Siegel Sash", priority = 0}})

    sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'],
                                       {ring2 = "Sheltered Ring"})
    sets.midcast.Shell = set_combine(sets.midcast['Enhancing Magic'],
                                     {ring2 = "Sheltered Ring"})

    sets.midcast.Phalanx = set_combine(sets.midcast['Enhancing Magic'], {
        main = {name = "Sakpata's Sword", priority = 100},
        hands = gear.Souveran_C_Hands,
        back = {name = "Weard Mantle", priority = 40},
        legs = {name = "Sakpata's Cuisses", priority = 114},
        feet = gear.Souveran_D_Feet
    })
    sets.midcast.Phalanx.SIRD = set_combine(
                                    sets.midcast['Enhancing Magic'].SIRD, {
            main = {name = "Sakpata's Sword", priority = 100},
            sub = {name = "Duban", priority = 0},
            hands = gear.Souveran_C_Hands,
            back = {name = "Weard Mantle", priority = 40},
            feet = gear.Souveran_D_Feet
        })
    sets.midcast.Phalanx.DT = set_combine(sets.midcast.Phalanx.SIRD, {})
    sets.Phalanx_Received = {
        main = {name = "Sakpata's Sword", priority = 100},
        hands = gear.Souveran_C_Hands,
        back = {name = "Weard Mantle", priority = 40},
        legs = {name = "Sakpata's Cuisses", priority = 114},
        feet = gear.Souveran_D_Feet
    }
    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------

    sets.resting = {
        ammo = {name = "Homiliary", priority = 0},
        head = {name = "Jumalik Helm", priority = 45},
        neck = {name = "Coatl Gorget +1", priority = 0},
        ear1 = {name = "Etiolation Earring", priority = 50},
        --ear2 = "Ethereal Earring",
        body = {name = "Jumalik Mail", priority = 116},
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Defending Ring", priority = 0},
        ring2 = {name = "Stikini Ring +1", priority = 0},
        back = gear.PLD_DT_Cape,
        waist = {name = "Fucho-no-obi", priority = 0},
        legs = {name = "Sulev. Cuisses +2", priority = 50},
        feet = gear.Relic_Feet
    }

    -- Idle sets
    sets.idle = {}
    sets.idle.PDT = {
        ammo =  {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Sakpata's Helm", priority = 91},
        neck = {name = "Unmoving Collar +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = {name = "Sakpata's Breastplate", priority = 136},
        hands = {name = "Sakpata's Gauntlets", priority = 91},
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Warden's Ring", priority = 0},
        back = gear.PLD_DT_Cape,
        waist = {name = "Flume Belt +1", priority = 0},
        legs = {name = "Sakpata's Cuisses", priority = 114},
        feet = {name = "Sakpata's Leggings", priority = 68}
    }

    sets.idle.Block = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Empy_Head,
        neck = {name = "Diemer Gorget", priority = 0},
        ear1 = {name = "Creed Earring", priority = 30},
        ear2 = {name = "Chevalier's Earring", priority = 0},
        body = {name = "Sakpata's Breastplate", priority = 136},
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = {name = "Shadow Mantle", priority = 0},
        waist = {name = "Flume Belt +1", priority = 0},
        legs = {name = "Sakpata's Cuisses", priority = 114},
        feet = gear.Souveran_D_Feet
    }

    sets.idle.MDT = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Nyame Helm", priority = 91},
        neck = {name = "Warder's Charm +1", priority = 0},
        ear1 = {name = "Etiolation Earring", priority = 50},
        ear2 = {name = "Sanare Earring", priority = 0},
        body = {name = "Nyame Mail", priority = 136},
        hands = {name = "Nyame Gauntlets", priority = 91},
        ring1 = {name = "Archon Ring", priority = 0},
        ring2 = {name = "Shadow Ring", priority = 0},
        back = gear.PLD_FC_Cape,
        waist = {name = "Carrier's Sash", priority = 20},
        legs = {name = "Nyame Flanchard", priority = 114},
        feet = {name = "Nyame Sollerets", priority = 68}
    }

    sets.idle.Tank = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Empy_Head,
        neck = {name = "Warder's Charm +1", priority = 0},
        ear1 = {name = "Creed Earring", priority = 30},
        ear2 = {name = "Chevalier's Earring", priority = 0},
        body = {name = "Sakpata's Breastplate", priority = 136},
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Moonlight Ring", priority = 110, bag = "wardrobe3"},
        ring2 = {name = "Vexer Ring +1", priority = 55},
        --ring2 = {name = "Shadow Ring", priority = 0},
        back = gear.PLD_Enmity_Cape,
        waist = {name = "Flume Belt +1", priority = 0},
        legs = gear.Empy_Legs,
        feet = gear.AF_Feet
    }

    sets.idle = sets.idle.Tank

    sets.idle.Kiting = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Sakpata's Helm", priority = 91},
        neck = {name = "Unmoving Collar +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = {name = "Sakpata's Breastplate", priority = 136},
        hands = {name = "Sakpata's Gauntlets", priority = 91},
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Warden's Ring", priority = 0},
        back = gear.PLD_DT_Cape,
        waist = {name = "Flume Belt +1", priority = 0},
        legs = gear.Carmine_D_Legs,
        feet = {name = "Hippo. Socks +1", priority = 13}
    }

    sets.Kiting = {legs = gear.Carmine_D_Legs}

    sets.latent_refresh = {waist = {name = "Fucho-no-obi", priority = 0}}
    sets.latent_refresh_grip = {sub = "Oneiros Grip"}
    sets.latent_regen = {ring1 = {name = "Apeile Ring +1", priority = 0}, ring2 = {name = "Apeile Ring", priority = 0}}
    sets.DayIdle = {}
    sets.NightIdle = {}



    --------------------------------------
    -- Engaged sets
    --------------------------------------

    sets.engaged = {
        ammo = {name = "Aurgelmir Orb +1", priority = 0},
        head = {name = "Flam. Zucchetto +2", priority = 80},
        neck = {name = "Asperity Necklace", priority = 0},
        ear1 = {name = "Cessance Earring", priority = 0},
        ear2 = {name = "Brutal Earring", priority = 0},
        body = gear.Valo_TP_body,
        hands = {name = "Sulev. Gauntlets +2", priority = 30},
        ring1 = {name = "Flamma Ring", priority = 0},
        ring2 = {name = "Petrov Ring", priority = 0},
        back = gear.PLD_DD_TP_Cape,
        waist = {name = "Sailfi Belt +1", priority = 0},
        legs = {name = "Sulev. Cuisses +2", priority = 50},
        feet = {name = "Flam. Gambieras +2", priority = 40}
    }

    sets.engaged.Acc = {
        ammo = {name = "Hasty Pinion +1", priority = 0},
        head = {name = "Flam. Zucchetto +2", priority = 80},
        neck = {name = "Combatant's Torque", priority = 0},
        ear1 = {name = "Mache Earring +1", priority = 0},
        ear2 = {name = "Telos Earring", priority = 0},
        body = gear.Valo_WSD_body,
        hands = {name = "Sakpata's Gauntlets", priority = 91},
        ring1 = {name = "Ramuh Ring +1", priority = 0},
        ring2 = {name = "Ramuh Ring +1", priority = 0},
        --back = "Ground. Mantle +1",
        waist = {name = "Tempus Fugit", priority = 0},
        legs = gear.Carmine_D_Legs,
        feet = {name = "Sulev. Leggings +2", priority = 20}
    }

    sets.engaged.DW = sets.engaged

    sets.engaged.DW.Acc = {}

    sets.engaged.Tank =  {
        head = gear.Empy_Head,
    neck = {name = "Warder's Charm +1", priority = 0},
    ear1 = {name = "Creed Earring", priority = 30},
    ear2 = {name = "Chevalier's Earring", priority = 0},
    body = {name = "Sakpata's Breastplate", priority = 136},
    hands = gear.Souveran_C_Hands,
    ring1 = {name = "Moonlight Ring", priority = 110, bag = "wardrobe3"},
    ring2 = {name = "Vexer Ring +1", priority = 55},
    --ring2 = {name = "Shadow Ring", priority = 0},
    back = gear.PLD_Enmity_Cape,
    waist = {name = "Flume Belt +1", priority = 0},
    legs = gear.Empy_Legs,
    feet = gear.AF_Feet
}

    sets.engaged.DDTank = {
        ammo = {name = "Aurgelmir Orb +1", priority = 0},
        head = {name = "Sulevia's Mask +2", priority = 40},
        -- neck={name = "Loricate Torque +1", priority = 0},
        neck = {name = "Combatant's Torque", priority = 0},
        ear1 = {name = "Brutal Earring", priority = 0},
        ear2 = {name = "Cessance Earring", priority = 0},
        body = {name = "Sakpata's Breastplate", priority = 136},
        hands = {name = "Sulev. Gauntlets +2", priority = 30},
        ring1 = {name = "Moonlight Ring", priority = 110, bag = "wardrobe3"},
        ring2 = {name = "Moonlight Ring", priority = 110, bag = "wardrobe5"},
        -- back = gear.PLD_DD_TP_Cape,
        back = gear.PLD_Enmity_Cape,
        waist = {name = "Sailfi Belt +1", priority = 0},
        legs = {name = "Sulev. Cuisses +2", priority = 50},
        feet = {name = "Sulev. Leggings +2", priority = 20}
    }

    sets.engaged.Acc.DDTank = {
        ammo = {name = "Hasty Pinion +1", priority = 0},
        head = {name = "Sakpata's Helm", priority = 91},
        neck = {name = "Loricate Torque +1", priority = 0},
        ear1 = {name = "Mache Earring +1", priority = 0},
        ear2 = {name = "Telos Earring", priority = 0},
        -- body = "Tartarus Platemail",
        body = {name = "Sakpata's Breastplate", priority = 136},
        hands = {name = "Sakpata's Gauntlets", priority = 91},
        ring1 = {name = "Defending Ring", priority = 0},
        ring2 = {name = "Patricius Ring", priority = 0},
        -- back = gear.PLD_DD_TP_Cape,
        back = gear.PLD_Enmity_Cape,
        waist = {name = "Sailfi Belt +1", priority = 0},
        legs = {name = "Sakpata's Cuisses", priority = 114},
        feet = {name = "Sakpata's Leggings", priority = 68}
    }

    sets.engaged.NoShellTank = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Jumalik Helm", priority = 45},
        neck = {name = "Loricate Torque +1", priority = 0},
        ear2 = {name = "Chevalier's Earring", priority = 0},
        ear2 = {name = "Etiolation Earring", priority = 50},
        body = gear.AF_Body,
        hands = {name = "Sakpata's Gauntlets", priority = 91},
        ring1 = {name = "Defending Ring", priority = 0},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Flume Belt +1", priority = 0},
        legs = {name = "Enif Cosciales", priority = 40},
        feet = gear.Relic_Feet
    }

    sets.engaged.Reraise = set_combine(sets.engaged.Tank, sets.Reraise)
    sets.engaged.Acc.Reraise = set_combine(sets.engaged.Acc.Tank, sets.Reraise)


    --------------------------------------
    -- Defense sets
    --------------------------------------

    -- Extra defense sets.  Apply these on top of melee or defense sets.

    sets.Twilight = {head = "Twilight Helm", body = "Twilight Mail"}

    sets.defense.Block = {
        ammo =  {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Empy_Head,
        neck = {name = "Combatant's Torque", priority = 0},
        ear1 = {name = "Creed Earring", priority = 30},
        ear2 = {name = "Chevalier's Earring", priority = 0},
        body = {name = "Sakpata's Breastplate", priority = 136},
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Defending Ring", priority = 0},
        ring2 = {name = "Warden's Ring", priority = 0},
        back = {name = "Shadow Mantle", priority = 0},
        waist = {name = "Flume Belt +1", priority = 0},
        legs = {name = "Sakpata's Cuisses", priority = 114},
        feet = gear.Souveran_D_Feet
    }

    sets.defense.PDT = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Sakpata's Helm", priority = 91},
        neck = {name = "Unmoving Collar +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = {name = "Sakpata's Breastplate", priority = 136},
        hands = {name = "Sakpata's Gauntlets", priority = 91},
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Warden's Ring", priority = 0},
        back = {name = "Shadow Mantle", priority = 0},
        waist = {name = "Flume Belt +1", priority = 0},
        legs = {name = "Sakpata's Cuisses", priority = 114},
        feet = {name = "Sakpata's Leggings", priority = 68}
    }

    sets.defense.PDT_HP = {
        ammo =  {name = "Staunch Tathlum +1", priority = 0},
        head = gear.Souveran_D_Head,
        neck = {name = "Unmoving Collar +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Creed Baudrier", priority = 40},
        legs = {name = "Arke Cosc. +1", priority = 191},
        feet = gear.Souveran_D_Feet
    }

    sets.defense.MDT = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Nyame Helm", priority = 91},
        neck = {name = "Warder's Charm +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Sanare Earring", priority = 0},
        body = {name = "Nyame Mail", priority = 136},
        hands = {name = "Nyame Gauntlets", priority = 91},
        ring1 = {name = "Archon Ring", priority = 0},
        ring2 = {name = "Shadow Ring", priority = 0},
        back = gear.PLD_FC_Cape,
        waist = {name = "Carrier's Sash", priority = 20},
        legs = {name = "Nyame Flanchard", priority = 114},
        feet = {name = "Nyame Sollerets", priority = 68}
    }

    sets.defense.MDT_HP = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Sakpata's Helm", priority = 91},
        neck = {name = "Warder's Charm +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = {name = "Sakpata's Breastplate", priority = 136},
        hands = {name = "Sakpata's Gauntlets", priority = 91},
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Carrier's Sash", priority = 20},
        legs = {name = "Sakpata's Cuisses", priority = 114},
        feet = {name = "Sakpata's Leggings", priority = 68}
    }

    sets.defense.MEVA = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Nyame Helm", priority = 91},
        neck = {name = "Warder's Charm +1", priority = 0},
        ear1 = {name = "Etiolation Earring", priority = 50},
        ear2 = {name = "Sanare Earring", priority = 0},
        body = {name = "Nyame Mail", priority = 136},
        hands = {name = "Nyame Gauntlets", priority = 91},
        ring1 = {name = "Purity Ring", priority = 0},
        ring2 = {name = "Shadow Ring", priority = 0},
        back = gear.PLD_FC_Cape,
        waist = {name = "Asklepian Belt", priority = 0},
        legs = {name = "Nyame Flanchard", priority = 114},
        feet = {name = "Nyame Sollerets", priority = 68}
    }

    sets.defense.MEVA_HP = {
        ammo = {name = "Staunch Tathlum +1", priority = 0},
        head = {name = "Sakpata's Helm", priority = 91},
        neck = {name = "Warder's Charm +1", priority = 0},
        ear1 = {name = "Odnowa Earring +1", priority = 110},
        ear2 = {name = "Tuisto Earring", priority = 150},
        body = {name = "Sakpata's Breastplate", priority = 136},
        hands = {name = "Sakpata's Gauntlets", priority = 91},
        ring1 = {name = "Gelatinous Ring +1", priority = 100},
        ring2 = {name = "Moonlight Ring", priority = 110},
        back = gear.PLD_DT_Cape,
        waist = {name = "Asklepian Belt", priority = 0},
        legs = {name = "Sakpata's Cuisses", priority = 114},
        feet = {name = "Sakpata's Leggings", priority = 68}
    }

    sets.defense.PDT_Reraise = set_combine(sets.defense.PDT_HP, {
        head = "Twilight Helm",
        body = "Twilight Mail"
    })
    sets.defense.MDT_Reraise = set_combine(sets.defense.MDT_HP, {
        head = "Twilight Helm",
        body = "Twilight Mail"
    })

    --------------------------------------
    -- Custom buff sets
    --------------------------------------
    sets.buff.Doom = {
        neck = "Nicander's Necklace", -- 20
        ring1 = {name = "Eshmun's Ring", bag = "wardrobe4", priority = 0}, -- 20
        ring2 = {name = "Eshmun's Ring", bag = "wardrobe3", priority = 0}, -- 20
        waist = {name = "Gishdubar Sash", priority = 0} -- 10
    }
    sets.buff.Sleep = {neck = {name = "Vim Torque +1", priority = 0}}
    sets.buff.Cover = {body = gear.Relic_Body}

    sets.TreasureHunter = {feet = {name = "Volte Boots", priority = 57}, waist = {name = "Chaac Belt", priority = 0}}

    -- Weapons sets
    sets.weapons.SakpataAegis = {main = {name = "Sakpata's Sword", priority = 100}, sub = "Aegis"}
    sets.weapons.NaeglingBlurred = {main = "Naegling", sub = "Blurred Shield +1"}
    sets.weapons.SakpataDuban = {main = {name = "Sakpata's Sword", priority = 100}, sub = {name = "Duban", priority = 0}}
    sets.weapons.ClubDuban = {main = "Mafic Cudgel", sub = {name = "Duban", priority = 0}}
    sets.weapons.DualWeapons = {main = "Naegling", sub = "Demersal Degen +1"}
    sets.weapons.MalignanceAegis = {main = "Malignance Sword", sub = "Aegis"}
    sets.weapons.ExcalAegis = {main = "Excalibur", sub = "Aegis"}
    sets.weapons.ExcalDuban = {main = "Excalibur", sub = "Duban"}





end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    set_macro_page(1, 1) -- War/Etc
end

function user_job_lockstyle()
    send_command('input /lockstyleset ' .. lockstyleset)
end
function file_unload()

    send_command('unbind !f8 gs c toggle AutoDefenseMode')
    send_command('unbind f9')
    send_command('unbind ^f9')
    send_command('unbind @f9')
    send_command('unbind !f9')
    send_command('unbind f10')
    send_command('unbind ^f10')
    send_command('unbind !f10')
    send_command('unbind f11')
    send_command('unbind ^f11')
    send_command('unbind @f11')
    send_command('unbind !f11')
    send_command('unbind ^f12')
    send_command('unbind f12')
    send_command('unbind @f12')
    send_command('unbind !f12')
    send_command('unbind ^@!f12')

    send_command('unbind !`')
    send_command('unbind !f11')
    send_command('unbind @`')
    send_command('unbind ^pause')
    send_command('unbind ^q')
    send_command('unbind !q')
    send_command('unbind @f8')
    send_command('unbind @f10')
    send_command('bunbindnd ^@!`')

    send_command('unbind @t')
    send_command('unbind @d')
    send_command('unbind @f')

    send_command('unbind ^c')
    send_command('unbind !c')
    send_command('unbind !a')
    send_command('unbind ^a')
    send_command('unbind ^numpad0')
    send_command('unbind ^numpad.')
    send_command('unbind !numpad.')
    send_command('unbind ^numpad+')
    send_command('unbind ^numpadenter')
    send_command('unbind !numpadenter')
    send_command('unbind ^numlock')

    send_command('unbind ^numpad/')
    send_command('unbind !numpad*')
    send_command('unbind ^numpad*')
    send_command('unbind ^numpad-')
    send_command('unbind !numpad/')

    send_command('unbind ^numpad7')
    send_command('unbind ^numpad8')
    send_command('unbind ^numpad4')
    send_command('unbind ^numpad5')
    send_command('unbind ^numpad1')
end
