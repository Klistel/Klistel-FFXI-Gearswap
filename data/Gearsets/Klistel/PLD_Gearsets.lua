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
                          'NaeglingBlurred', 'ClubDuban', 'MalignanceAegis')

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
    send_command('bind ^numlock input /ma "Flash" <stnpc>')

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
    gear.AF_Body = {name = "Reverence Surcoat +1", priority = 163}
    gear.AF_Hands = {name = "Reverence Gauntlets +1", priority = 69}
    gear.AF_Legs = {name = "Reverence Breeches +1", priority = 102}
    gear.AF_Feet = {name = "Reverence Leggings +1", priority = 48}

    gear.Relic_Head = {name = "Caballarius Coronet +1", priority = 96}
    gear.Relic_Body = {name = "Caballarius Surcoat +1", priority = 118}
    gear.Relic_Hands = {name = "Caballarius Gauntlets +3", priority = 104}
    gear.Relic_Legs = {name = "Caballarius Breeches +1", priority = 52}
    gear.Relic_Feet = {name = "Caballarius Leggings +1", priority = 43}

    gear.Empy_Head = {name = "Chevalier's Armet +2", priority = 135}
    gear.Empy_Body = {name = "Chevalier's Cuirass +2", priority = 141}
    gear.Empy_Hands = {name = "Chevalier's Gauntlets +2", priority = 54}
    gear.Empy_Legs = {name = "Chevalier's Cuisses +2", priority = 117}
    gear.Empy_Feet = {name = "Chevalier's Sabatons +2", priority = 42}

    gear.JSE_Neck = "Knight's Bead Necklace +2"

    --------------------------------------
    -- Precast sets
    --------------------------------------

    sets.Enmity = {
        main = "Sakpata's Sword",
        sub = "Duban",
        ammo = "Paeapua",
        head = "Loess Barbuta +1",
        neck = "Moonlight Necklace",
        ear1 = "Friomisi Earring",
        ear2 = "Trux Earring",
        body = gear.Souveran_C_Body,
        hands = "Macabre Gaunt. +1",
        ring1 = "Apeile Ring +1",
        ring2 = "Apeile Ring",
        back = gear.PLD_Enmity_Cape,
        waist = "Creed Baudrier",
        legs = gear.Souveran_C_Legs,
        feet = gear.Eschite_A_Feet
    }

    sets.Enmity.SIRD = {
        main = "Sakpata's Sword",
        sub = "Sacro Bulwark",
        ammo = "Staunch Tathlum +1",
        head = "Loess Barbuta +1",
        neck = "Moonlight Necklace",
        ear1 = "Trux Earring",
        ear2 = "Magnetic Earring",
        body = gear.Souveran_C_Body,
        hands = "Macabre Gaunt. +1",
        ring1 = "Apeile Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_Enmity_Cape,
        waist = "Rumination Sash",
        legs = "Founder's Hose",
        feet = "Odyssean Greaves"
    }

    sets.Enmity.DT = {
        ammo = "Staunch Tathlum +1",
        head = gear.Souveran_C_Head,
        neck = "Unmoving Collar +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Creed Baudrier",
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
        ammo = "Paeapua",
        head = "Nyame Helm",
        neck = "Unmoving Collar +1",
        ear1 = "Nourish. Earring",
        ear2 = "Nourish. Earring +1",
        body = gear.AF_Body,
        hands = gear.Relic_Hands,
        ring1 = "Stikini Ring +1",
        ring2 = "Rufescent Ring",
        back = gear.PLD_Enmity_Cape,
        waist = "Luminary Sash",
        legs = "Nyame Flanchard",
        feet = gear.Carmine_D_Feet
    }

    sets.precast.JA['Chivalry'].DT = {
        ammo = "Paeapua",
        head = "Nyame Helm",
        neck = "Unmoving Collar +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = gear.AF_Body,
        hands = gear.Relic_Hands,
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Luminary Sash",
        legs = "Nyame Flanchard",
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
        ammo = "Aurgelmir Orb +1",
        head = "Nyame Helm",
        neck = "Unmoving Collar +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = gear.AF_Body,
        hands = "Regal Gauntlets",
        ring1 = "Asklepian Ring",
        ring2 = "Valseur's Ring",
        back = gear.PLD_DT_Cape,
        waist = "Chaac Belt",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets"
    }

    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}

    sets.precast.JA['Animated Flourish'] = set_combine(sets.Enmity, {})

    -- Fast cast sets for spells

    sets.precast.FC = {
        main = "Sakpata's Sword",
        sub = "Chanter's Shield",
        ammo = "Sapience Orb",
        -- ammo = "Impatiens",
        head = gear.Carmine_D_Head,
        neck = "Baetyl Pendant",
        ear1 = "Enchntr. Earring +1",
        ear2 = "Loquac. Earring",
        body = gear.AF_Body,
        hands = "Leyline Gloves",
        ring1 = "Weatherspoon Ring",
        ring2 = "Kishar Ring",
        back = gear.PLD_FC_Cape,
        waist = "Creed Baudrier",
        legs = "Enif Cosciales",
        -- feet = "Odyssean Greaves"
        feet = gear.Empy_Feet
    }

    sets.precast.FC.DT = {
        main = "Sakpata's Sword",
        ammo = "Sapience Orb",
        -- ammo = "Impatiens",
        head = gear.Souveran_C_Head,
        neck = "Baetyl Pendant",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Creed Baudrier",
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.precast.FC['Enhancing Magic'] =
        set_combine(sets.precast.FC, {waist = "Siegel Sash"})
    sets.precast.FC['Enhancing Magic'].DT =
        set_combine(sets.precast.FC.DT, {waist = "Siegel Sash"})

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {
        neck = "Diemer Gorget",
        ear1 = "Nourish. Earring",
        ear2 = "Nourish. Earring +1",
        body = "Jumalik Mail"
    })

    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        ammo = "Aurgelmir Orb +1",
        head = "Flam. Zucchetto +2",
        neck = "Fotia Gorget",
        ear1 = "Cessance Earring",
        ear2 = "Brutal Earring",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        ring1 = "Epaminondas's Ring",
        ring2 = "Cornelia's Ring",
        back = gear.PLD_WSD_Cape,
        -- waist = "Fotia Belt",
        waist = "Sailfi Belt +1",
        legs = "Sulev. Cuisses +2",
        feet = "Sulev. Leggings +2"
    }

    sets.precast.WS.DT = {
        ammo = "Staunch Tathlum +1",
        head = gear.Souveran_C_Head,
        neck = "Loricate Torque +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Creed Baudrier",
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.precast.WS.Acc = {
        ammo = "Hasty Pinion +1",
        head = "Ynglinga Sallet",
        neck = "Combatant's Torque",
        ear1 = "Mache Earring +1",
        ear2 = "Telos Earring",
        body = gear.Valo_WSD_body,
        hands = "Sakpata's Gauntlets",
        ring1 = "Ramuh Ring +1",
        ring2 = "Ramuh Ring +1",
        --back = "Ground. Mantle +1",
        waist = "Olseni Belt",
        legs = gear.Carmine_D_Legs,
        feet = "Sulev. Leggings +2"
    }

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, {
        neck = "Fotia Gorget",
        ear1 = "Brutal Earring",
        ear2 = "Moonshade Earring"
    })
    sets.precast.WS['Requiescat'].Acc = set_combine(sets.precast.WS.Acc, {
        neck = "Fotia Gorget",
        ear1 = "Mache Earring +1",
        ear2 = "Moonshade Earring"
    })

    sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {
        neck = "Fotia Gorget",
        ear1 = "Brutal Earring",
        ear2 = "Moonshade Earring"
    })
    sets.precast.WS['Chant du Cygne'].Acc =
        set_combine(sets.precast.WS.Acc, {
            neck = "Fotia Gorget",
            ear1 = "Mache Earring +1",
            ear2 = "Moonshade Earring"
        })

    sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
        neck = gear.JSE_Neck,
        ear1 = "Ishvara Earring",
        ear2 = "Moonshade Earring"
    })
    sets.precast.WS['Savage Blade'].Acc =
        set_combine(sets.precast.WS.Acc,
                    {ear1 = "Mache Earring +1", ear2 = "Telos Earring"})


    sets.precast.WS['Sanguine Blade'] = {
        ammo = "Ghastly Tathlum +1",
        head = "Pixie Hairpin +1",
        neck = "Fotia Gorget",
        ear1 = "Friomisi Earring",
        ear2 = "Crematio Earring",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        ring1 = "Archon Ring",
        ring2 = "Metamor. Ring +1",
        back = "Toro Cape",
        waist = "Fotia Belt",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets"
    }

    sets.precast.WS['Atonement'] = {
        ammo = "Paeapua",
        head = "Loess Barbuta +1",
        neck = "Moonlight Necklace",
        ear1 = "Friomisi Earring",
        ear2 = "Trux Earring",
        body = gear.Souveran_C_Body,
        hands = "Macabre Gaunt. +1",
        ring1 = "Apeile Ring +1",
        ring2 = "Apeile Ring",
        back = gear.PLD_Enmity_Cape,
        waist = "Creed Baudrier",
        legs = gear.Souveran_C_Legs,
        feet = gear.Eschite_A_Feet
    }

    -- Swap to these on Moonshade using WS if at 3000 TP
    sets.MaxTP = {ear1 = "Cessance Earring", ear2 = "Brutal Earring"}
    sets.AccMaxTP = {ear1 = "Mache Earring +1", ear2 = "Telos Earring"}

    --------------------------------------
    -- Midcast sets
    --------------------------------------

    sets.midcast.FastRecast = {
        main = "Sakpata's Sword",
        sub = "Chanter's Shield",
        ammo = "Hasty Pinion +1",
        head = gear.Carmine_D_Head,
        neck = "Baetyl Pendant",
        ear1 = "Enchntr. Earring +1",
        ear2 = "Loquac. Earring",
        body = gear.AF_Body,
        hands = "Leyline Gloves",
        ring1 = "Gelatinous Ring +1",
        ring2 = "Kishar Ring",
        back = gear.PLD_FC_Cape,
        waist = "Creed Baudrier",
        legs = "Enif Cosciales",
        feet = "Odyssean Greaves"
    }

    sets.midcast.FastRecast.DT = {
        main = "Sakpata's Sword",
        sub = "Duban",
        ammo = "Staunch Tathlum +1",
        head = gear.Souveran_C_Head,
        neck = "Loricate Torque +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Creed Baudrier",
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
        main = "Sakpata's Sword",
        sub = "Sacro Bulwark",
        ammo = "Staunch Tathlum +1",
        head = "Loess Barbuta +1",
        neck = "Sacro Gorget",
        ear1 = "Nourish. Earring +1",
        ear2 = "Chevalier's Earring",
        body = "Jumalik Mail",
        hands = "Macabre Gaunt. +1",
        ring1 = "Defending Ring",
        ring2 = "Moonlight Ring",
        back = gear.PLD_Enmity_Cape,
        waist = "Creed Baudrier",
        legs = gear.Carmine_D_Legs,
        feet = "Odyssean Greaves"
    }

    sets.midcast.Cure.SIRD = {
        main = "Deacon Sword",
        sub = "Sacro Bulwark",
        ammo = "Staunch Tathlum +1",
        head = "Souveran Schaller +1",
        neck = "Loricate Torque +1",
        ear1 = "Nourish. Earring +1",
        ear2 = "Magnetic Earring",
        body = "Jumalik Mail",
        hands = "Macabre Gaunt. +1",
        ring1 = "Defending Ring",
        ring2 = "Moonlight Ring",
        back = gear.PLD_Enmity_Cape,
        waist = "Creed Baudrier",
        legs = "Founder's Hose",
        feet = "Odyssean Greaves"
    }

    sets.midcast.Cure.DT = {
        main = "Deacon Sword",
        sub = "Sacro Bulwark",
        ammo = "Staunch Tathlum +1",
        head = gear.Souveran_D_Head,
        neck = "Loricate Torque +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Creed Baudrier",
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.midcast.Reprisal = {
        main = "Sakpata's Sword",
        ammo = "Staunch Tathlum +1",
        head = "Loess Barbuta +1",
        neck = "Unmoving Collar +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Creed Baudrier",
        legs = "Arke Cosc. +1",
        feet = gear.Souveran_D_Feet
    }

    sets.Self_Healing = {
        main = "Deacon Sword",
        sub = "Sacro Bulwark",
        ammo = "Staunch Tathlum +1",
        head = gear.Souveran_C_Head,
        neck = "Sacro Gorget",
        ear1 = "Nourish. Earring +1",
        ear2 = "Chevalier's Earring",
        body = gear.Souveran_C_Body,
        hands = "Macabre Gaunt. +1",
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Creed Baudrier",
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.Self_Healing.SIRD = {
        main = "Deacon Sword",
        sub = "Sacro Bulwark",
        ammo = "Staunch Tathlum +1",
        head = gear.Souveran_C_Head,
        neck = "Loricate Torque +1",
        ear1 = "Nourish. Earring +1",
        ear2 = "Magnetic Earring",
        body = gear.Souveran_C_Body,
        hands = "Macabre Gaunt. +1",
        ring1 = "Defending Ring",
        ring2 = "Moonlight Ring",
        back = "Solemnity Cape",
        waist = "Flume Belt +1",
        legs = "Founder's Hose",
        feet = "Odyssean Greaves"
    }

    sets.Self_Healing.DT = {
        main = "Deacon Sword",
        sub = "Sacro Bulwark",
        ammo = "Staunch Tathlum +1",
        head = gear.Souveran_C_Head,
        neck = "Loricate Torque +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Creed Baudrier",
        legs = gear.Souveran_C_Legs,
        feet = gear.Souveran_D_Feet
    }

    sets.Cure_Received = {
        hands = gear.Souveran_C_Hands,
        feet = gear.Souveran_D_Feet
    }
    sets.Self_Refresh = {waist = "Gishdubar Sash"}
    sets.Enhancing_Received = {}

    sets.midcast['Enhancing Magic'] = {
        main = "Colada",
        sub = "Duban",
        ammo = "Staunch Tathlum +1",
        head = gear.Carmine_D_Head,
        neck = "Melic Torque",
        ear1 = "Mimir Earring",
        ear2 = "Andoaa Earring",
        body = "Shab. Cuirass +1",
        hands = "Regal Gauntlets",
        ring1 = "Defending Ring",
        ring2 = "Kishar Ring",
        back = "Merciful Cape",
        waist = "Olympus Sash",
        legs = gear.Carmine_D_Legs,
        feet = "Odyssean Greaves"
    }

    sets.midcast['Enhancing Magic'].SIRD = {
        main = "Colada",
        sub = "Duban",
        ammo = "Staunch Tathlum +1",
        head = gear.Souveran_C_Head,
        neck = "Melic Torque",
        ear1 = "Mimir Earring",
        ear2 = "Magnetic Earring",
        body = "Shab. Cuirass +1",
        hands = gear.Souveran_C_Hands,
        ring1 = "Defending Ring",
        ring2 = "Moonlight Ring",
        back = "Merciful Cape",
        waist = "Olympus Sash",
        legs = gear.AF_Legs,
        feet = "Odyssean Greaves"
    }

    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'],
                                         {waist = "Siegel Sash"})

    sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'],
                                       {ring2 = "Sheltered Ring"})
    sets.midcast.Shell = set_combine(sets.midcast['Enhancing Magic'],
                                     {ring2 = "Sheltered Ring"})

    sets.midcast.Phalanx = set_combine(sets.midcast['Enhancing Magic'], {
        main = "Sakpata's Sword",
        hands = gear.Souveran_C_Hands,
        back = "Weard Mantle",
        legs = "Sakpata's Cuisses",
        feet = gear.Souveran_D_Feet
    })
    sets.midcast.Phalanx.SIRD = set_combine(
                                    sets.midcast['Enhancing Magic'].SIRD, {
            main = "Sakpata's Sword",
            sub = "Duban",
            hands = gear.Souveran_C_Hands,
            back = "Weard Mantle",
            feet = gear.Souveran_D_Feet
        })
    sets.midcast.Phalanx.DT = set_combine(sets.midcast.Phalanx.SIRD, {})
    sets.Phalanx_Received = {
        main = "Sakpata's Sword",
        hands = gear.Souveran_C_Hands,
        back = "Weard Mantle",
        legs = "Sakpata's Cuisses",
        feet = gear.Souveran_D_Feet
    }
    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------

    sets.resting = {
        ammo = "Homiliary",
        head = "Jumalik Helm",
        neck = "Coatl Gorget +1",
        ear1 = "Etiolation Earring",
        --ear2 = "Ethereal Earring",
        body = "Jumalik Mail",
        hands = gear.Souveran_C_Hands,
        ring1 = "Defending Ring",
        ring2 = "Stikini Ring +1",
        back = gear.PLD_DT_Cape,
        waist = "Fucho-no-obi",
        legs = "Sulev. Cuisses +2",
        feet = gear.Relic_Feet
    }

    -- Idle sets
    sets.idle = {}
    sets.idle.PDT = {
        ammo =  "Staunch Tathlum +1",
        head = "Sakpata's Helm",
        neck = "Unmoving Collar +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = "Sakpata's Breastplate",
        hands = "Sakpata's Gauntlets",
        ring1 = "Gelatinous Ring +1",
        ring2 = "Warden's Ring",
        back = gear.PLD_DT_Cape,
        waist = "Flume Belt +1",
        legs = "Sakpata's Cuisses",
        feet = "Sakpata's Leggings"
    }

    sets.idle.Block = {
        ammo = "Staunch Tathlum +1",
        head = gear.Empy_Head,
        neck = "Diemer Gorget",
        ear1 = "Creed Earring",
        ear2 = "Foresti Earring",
        body = "Sakpata's Breastplate",
        hands = gear.Souveran_C_Hands,
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = "Shadow Mantle",
        waist = "Flume Belt +1",
        legs = "Sakpata's Cuisses",
        feet = gear.Souveran_D_Feet
    }

    sets.idle.MDT = {
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        neck = "Warder's Charm +1",
        ear1 = "Etiolation Earring",
        ear2 = "Sanare Earring",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        ring1 = "Archon Ring",
        ring2 = "Shadow Ring",
        back = gear.PLD_FC_Cape,
        waist = "Carrier's Sash",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets"
    }

    sets.idle.Tank = {
        ammo = "Staunch Tathlum +1",
        head = gear.Empy_Head,
        --neck = "Warder's Charm +1",
        neck = "Combatant's Torque",
        ear1 = "Creed Earring",
        ear2 = "Foresti Earring",
        body = "Sakpata's Breastplate",
        --hands = gear.Souveran_C_Hands,
        hands = gear.Empy_Hands,
        ring1 = {name = "Moonlight Ring", bag = "wardrobe3"},
        ring2 = "Vexer Ring +1",
        --ring2 = "Shadow Ring",
        back = gear.PLD_Enmity_Cape,
        waist = "Creed Baudrier",
        --waist = "Flume Belt +1",
        legs = gear.Empy_Legs,
        feet = gear.AF_Feet
    }

    sets.idle = sets.idle.Tank

    sets.idle.Kiting = {
        ammo = "Staunch Tathlum +1",
        head = "Sakpata's Helm",
        neck = "Unmoving Collar +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = "Sakpata's Breastplate",
        hands = "Sakpata's Gauntlets",
        ring1 = "Gelatinous Ring +1",
        ring2 = "Warden's Ring",
        back = gear.PLD_DT_Cape,
        waist = "Flume Belt +1",
        legs = gear.Carmine_D_Legs,
        feet = "Hippo. Socks +1"
    }

    sets.Kiting = {legs = gear.Carmine_D_Legs}

    sets.latent_refresh = {waist = "Fucho-no-obi"}
    sets.latent_refresh_grip = {sub = "Oneiros Grip"}
    sets.latent_regen = {ring1 = "Apeile Ring +1", ring2 = "Apeile Ring"}
    sets.DayIdle = {}
    sets.NightIdle = {}



    --------------------------------------
    -- Engaged sets
    --------------------------------------

    sets.engaged = {
        ammo = "Aurgelmir Orb +1",
        head = "Flam. Zucchetto +2",
        neck = "Asperity Necklace",
        ear1 = "Cessance Earring",
        ear2 = "Brutal Earring",
        body = gear.Valo_TP_body,
        hands = "Sulev. Gauntlets +2",
        ring1 = "Flamma Ring",
        ring2 = "Petrov Ring",
        back = gear.PLD_DD_TP_Cape,
        waist = "Sailfi Belt +1",
        legs = "Sulev. Cuisses +2",
        feet = "Flam. Gambieras +2"
    }

    sets.engaged.Acc = {
        ammo = "Hasty Pinion +1",
        head = "Flam. Zucchetto +2",
        neck = "Combatant's Torque",
        ear1 = "Mache Earring +1",
        ear2 = "Telos Earring",
        body = gear.Valo_WSD_body,
        hands = "Sakpata's Gauntlets",
        ring1 = "Ramuh Ring +1",
        ring2 = "Ramuh Ring +1",
        --back = "Ground. Mantle +1",
        waist = "Tempus Fugit",
        legs = gear.Carmine_D_Legs,
        feet = "Sulev. Leggings +2"
    }

    sets.engaged.DW = sets.engaged

    sets.engaged.DW.Acc = {}

    sets.engaged.Tank =  {
        head = gear.Empy_Head,
    --neck = "Warder's Charm +1",
    neck = "Combatant's Torque",
    ear1 = "Creed Earring",
    ear2 = "Foresti Earring",
    body = "Sakpata's Breastplate",
    --hands = gear.Souveran_C_Hands,
    hands = gear.Empy_Hands,
    ring1 = {name = "Moonlight Ring", bag = "wardrobe3"},
    ring2 = "Vexer Ring +1",
    --ring2 = "Shadow Ring",
    back = gear.PLD_Enmity_Cape,
    waist = "Creed Baudrier",
    --waist = "Flume Belt +1",
    legs = gear.Empy_Legs,
    feet = gear.AF_Feet
}

    sets.engaged.DDTank = {
        ammo = "Aurgelmir Orb +1",
        head = "Sulevia's Mask +2",
        -- neck="Loricate Torque +1",
        neck = "Combatant's Torque",
        ear1 = "Brutal Earring",
        ear2 = "Cessance Earring",
        body = "Sakpata's Breastplate",
        hands = "Sulev. Gauntlets +2",
        ring1 = {name = "Moonlight Ring", bag = "wardrobe3"},
        ring2 = {name = "Moonlight Ring", bag = "wardrobe5"},
        -- back = gear.PLD_DD_TP_Cape,
        back = gear.PLD_Enmity_Cape,
        waist = "Sailfi Belt +1",
        legs = "Sulev. Cuisses +2",
        feet = "Sulev. Leggings +2"
    }

    sets.engaged.Acc.DDTank = {
        ammo = "Hasty Pinion +1",
        head = "Sakpata's Helm",
        neck = "Loricate Torque +1",
        ear1 = "Mache Earring +1",
        ear2 = "Telos Earring",
        -- body = "Tartarus Platemail",
        body = "Sakpata's Plate",
        hands = "Sakpata's Gauntlets",
        ring1 = "Defending Ring",
        ring2 = "Patricius Ring",
        -- back = gear.PLD_DD_TP_Cape,
        back = gear.PLD_Enmity_Cape,
        waist = "Sailfi Belt +1",
        legs = "Sakpata's Cuisses",
        feet = "Sakpata's Leggings"
    }

    sets.engaged.NoShellTank = {
        ammo = "Staunch Tathlum +1",
        head = "Jumalik Helm",
        neck = "Loricate Torque +1",
        ear1 = "Foresti Earring",
        ear2 = "Etiolation Earring",
        body = gear.AF_Body,
        hands = "Sakpata's Gauntlets",
        ring1 = "Defending Ring",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Flume Belt +1",
        legs = "Enif Cosciales",
        feet = gear.Relic_Feet
    }

    sets.engaged.Reraise = set_combine(sets.engaged.Tank, sets.Reraise)
    sets.engaged.Acc.Reraise = set_combine(sets.engaged.Acc.Tank, sets.Reraise)


    --------------------------------------
    -- Defense sets
    --------------------------------------

    -- Extra defense sets.  Apply these on top of melee or defense sets.

    sets.Twilight = {head = "Twilight Helm", body = "Twilight Mail"}

    -- Weapons sets
    sets.weapons.SakpataAegis = {main = "Sakpata's Sword", sub = "Aegis"}
    sets.weapons.NaeglingBlurred = {main = "Naegling", sub = "Blurred Shield +1"}
    sets.weapons.SakpataDuban = {main = "Sakpata's Sword", sub = "Duban"}
    sets.weapons.ClubDuban = {main = "Mafic Cudgel", sub = "Duban"}
    sets.weapons.DualWeapons = {main = "Naegling", sub = "Demersal Degen +1"}
    sets.weapons.MalignanceAegis = {main = "Malignance Sword", sub = "Aegis"}

    sets.defense.Block = {
        ammo =  "Staunch Tathlum +1",
        head = gear.Empy_Head,
        neck = "Diemer Gorget",
        ear1 = "Creed Earring",
        ear2 = "Foresti Earring",
        body = "Sakpata's Breastplate",
        hands = gear.Souveran_C_Hands,
        ring1 = "Defending Ring",
        ring2 = "Warden's Ring",
        back = "Shadow Mantle",
        waist = "Flume Belt +1",
        legs = "Sakpata's Cuisses",
        feet = gear.Souveran_D_Feet
    }

    sets.defense.PDT = {
        ammo = "Staunch Tathlum +1",
        head = "Sakpata's Helm",
        neck = "Unmoving Collar +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = "Sakpata's Breastplate",
        hands = "Sakpata's Gauntlets",
        ring1 = "Gelatinous Ring +1",
        ring2 = "Warden's Ring",
        back = "Shadow Mantle",
        waist = "Flume Belt +1",
        legs = "Sakpata's Cuisses",
        feet = "Sakpata's Leggings"
    }

    sets.defense.PDT_HP = {
        ammo =  "Staunch Tathlum +1",
        head = gear.Souveran_D_Head,
        neck = "Unmoving Collar +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = gear.AF_Body,
        hands = gear.Souveran_C_Hands,
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Creed Baudrier",
        legs = "Arke Cosc. +1",
        feet = gear.Souveran_D_Feet
    }

    sets.defense.MDT = {
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        neck = "Warder's Charm +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Sanare Earring",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        ring1 = "Archon Ring",
        ring2 = "Shadow Ring",
        back = gear.PLD_FC_Cape,
        waist = "Carrier's Sash",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets"
    }

    sets.defense.MDT_HP = {
        ammo = "Staunch Tathlum +1",
        head = "Sakpata's Helm",
        neck = "Warder's Charm +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = "Sakpata's Plate",
        hands = "Sakpata's Gauntlets",
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Carrier's Sash",
        legs = "Sakpata's Cuisses",
        feet = "Sakpata's Leggings"
    }

    sets.defense.MEVA = {
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        neck = "Warder's Charm +1",
        ear1 = "Etiolation Earring",
        ear2 = "Sanare Earring",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        ring1 = "Purity Ring",
        ring2 = "Shadow Ring",
        back = gear.PLD_FC_Cape,
        waist = "Asklepian Belt",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets"
    }

    sets.defense.MEVA_HP = {
        ammo = "Staunch Tathlum +1",
        head = "Sakpata's Helm",
        neck = "Warder's Charm +1",
        ear1 = "Odnowa Earring +1",
        ear2 = "Tuisto Earring",
        body = "Sakpata's Plate",
        hands = "Sakpata's Gauntlets",
        ring1 = "Gelatinous Ring +1",
        ring2 = "Moonlight Ring",
        back = gear.PLD_DT_Cape,
        waist = "Asklepian Belt",
        legs = "Sakpata's Cuisses",
        feet = "Sakpata's Leggings"
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
        ring1 = {name = "Eshmun's Ring", bag = "wardrobe4"}, -- 20
        ring2 = {name = "Eshmun's Ring", bag = "wardrobe3"}, -- 20
        waist = "Gishdubar Sash" -- 10
    }
    sets.buff.Sleep = {neck = "Vim Torque +1"}
    sets.buff.Cover = {body = gear.Relic_Body}

    sets.TreasureHunter = {feet = "Volte Boots", waist = "Chaac Belt"}
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
