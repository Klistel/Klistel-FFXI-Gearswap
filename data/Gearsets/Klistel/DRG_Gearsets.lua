include('Gearsets/' .. player.name .. '/Globals-AugGear.lua')

------------------------------------------------------------------------------------------------
---------------------------------------- JSE ------------------------------------------
------------------------------------------------------------------------------------------------

gear.AF_Head = "Vishap Armet +2"
gear.AF_Body = "Vishap Mail +2"
gear.AF_Hands = "Vishap Finger Gauntlets +2"
gear.AF_Legs = "Vishap Brais +4"
gear.AF_Feet = "Vishap Greaves +2"

gear.Relic_Head = "Pteroslaver Armet +3" -- healing breath
gear.Relic_Body = "Pteroslaver Mail +3" -- idle for support job for wyvern
gear.Relic_Hands = "Pteroslaver Finger Gauntlets +3" -- good for camlanns and drive?
gear.Relic_Legs = "Pteroslaver Brais +3" -- maybe for TP
gear.Relic_Feet = "Pteroslaver Greaves +3" -- healing breath

gear.Empy_Head = "Peltast's Mezail +2" -- WSD
gear.Empy_Body = "Peltast's Plackart +2" -- PDL is good I guess 
gear.Empy_Hands = "Peltast's Vambraces +2" -- good TP 
gear.Empy_Legs = "Peltast's Cuissots +2" -- impulse drive and stardiver
gear.Empy_Feet = "Peltast's Schynbalds +2" -- spirit jump

gear.JSE_Neck = "Dgn. Collar +2"

------------------------------------------------------------------------------------------------
---------------------------------------- Precast Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.precast.JA['Spirit Surge'] = {body = gear.Relic_Body}
sets.precast.JA['Call Wyvern'] = {body = gear.Relic_Body}
sets.precast.JA['Ancient Circle'] = {legs = gear.AF_Legs}

sets.precast.JA['Spirit Link'] = {
    head = gear.AF_Head,
    body = "Nyame Mail",
    hands = gear.Empy_Hands,
    feet = gear.Relic_Feet
    --    ear1="Pratik Earring",
}

sets.precast.JA['Steady Wing'] = {
    legs = gear.AF_Legs,
    feet = gear.Relic_Feet
    --    neck="Chanoix's Gorget",
    --    ear1="Lancer's Earring",
    --    ear2="Anastasi Earring",
    --    back="Updraft Mantle",
}

sets.precast.JA['Jump'] = {
    ammo = "Aurgelmir Orb +1",
    head = "Flam. Zucchetto +2",
    body = gear.AF_Body,
    hands = gear.AF_Hands,
    legs = gear.Relic_Legs,
    feet = "Ostro Greaves",
    neck = "Anu Torque",
    ear1 = "Sherida Earring",
    ear2 = "Telos Earring",
    ring1 = {name = "Chirich Ring +1", bag = "wardrobe2"},
    ring2 = "Niqmaddu Ring",
    back = gear.DRG_JMP_Cape,
    waist = "Ioskeha Belt +1"
}

sets.precast.JA['High Jump'] = sets.precast.JA['Jump']
sets.precast.JA['Spirit Jump'] = set_combine(sets.precast.JA['Jump'], {
    legs = gear.Empy_Feet
    --    hands="Emi. Gauntlets +1", 
    --    legs=gear.Valo_STP_legs
})
sets.precast.JA['Soul Jump'] = set_combine(sets.precast.JA['Jump'], {
    body = gear.AF_Body
    --    hands="Emi. Gauntlets +1", 
    --    legs=gear.Valo_STP_legs
})
sets.precast.JA['Super Jump'] = {}

sets.precast.JA['Angon'] = {ammo = "Angon", hands = gear.Relic_Hands}

-- Fast cast sets for spells
sets.precast.FC = {
    --    ammo="Sapience Orb", --2
    head = gear.Carmine_D_Head, -- 14
    --    body="Sacro Breastplate", --10
    hands = "Leyline Gloves", -- 8
    feet = gear.Carmine_D_Feet, -- 8
    --    neck="Orunmila's Torque", --5
    ear1 = "Loquacious Earring", -- 2
    --    ear2="Enchntr. Earring +1", --2
    --    ring2="Weather. Ring +1", --6(4)
    ring2 = "Weather. Ring"
}

------------------------------------------------------------------------------------------------
------------------------------------- Weapon Skill Sets ----------------------------------------
------------------------------------------------------------------------------------------------

sets.precast.WS = {
    ammo = "Knobkierrie",
    --    head=gear.Valo_WSD_head,
    head = gear.Empy_Head,
    body = gear.Empy_Body,
    --    body=gear.Valo_WSD_body,
    hands = gear.Relic_Hands,
    legs = gear.AF_Legs,
    feet = "Sulev. Leggings +2",
    neck = "Fotia Gorget",
    ear1 = "Sherida Earring",
    ear2 = "Moonshade Earring",
    waist = "Sailfi Belt +1",
    ring1 = "Regal Ring",
    ring2 = "Niqmaddu Ring",
    back = gear.DRG_WS_STR_WSD_Cape
    --    waist="Fotia Belt",
}

sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
    neck = gear.JSE_Neck,
    -- ear1 = "Thrud Earring",
    ear1 = "Ishvara Earring",
    ring1 = "Epaminondas's Ring",
    ring2 = "Sroda Ring"
    -- legs = "Gleti's Breeches", -- 8
})

sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

sets.precast.WS['Camlann\'s Torment'] = set_combine(sets.precast.WS, {
    neck = gear.JSE_Neck,
    ear2 = "Ishvara Earring",
    ring2 = "Epaminondas's Ring",
    waist = "Sailfi Belt +1"
})

sets.precast.WS['Camlann\'s Torment'].Acc = set_combine(
                                                sets.precast.WS['Camlann\'s Torment'],
                                                {})

sets.precast.WS['Drakesbane'] = set_combine(sets.precast.WS, {
    head = "Blistering Sallet +1",
    body = "Hjarrandi Breast.",
    -- hands="Flamma Manopolas +2",
    legs = "Zoar Subligar +1",
    neck = gear.JSE_Neck,
    ear2 = "Brutal Earring",
    --    ring1="Begrudging Ring",
    ring1 = "Cornelia's Ring",
    back = gear.DRG_WS_STR_CRIT,
    waist = "Sailfi Belt +1"
})

sets.precast.WS['Drakesbane'].Acc = set_combine(sets.precast.WS['Drakesbane'],
                                                {waist = "Ioskeha Belt +1"})

sets.precast.WS['Geirskogul'] = set_combine(sets.precast.WS, {
    head = gear.Lustratio_A_Head,
    legs = gear.Lustratio_A_Legs,
    ear2 = "Mache Earring +1",
    ring2 = "Epaminondas's Ring",
    back = gear.DRG_WS_DEX_WSD
})

sets.precast.WS['Geirskogul'].Acc = set_combine(sets.precast.WS['Geirskogul'],
                                                {})

sets.precast.WS['Impulse Drive'] = set_combine(
                                       sets.precast.WS['Camlann\'s Torment'], {
        head = "Blistering Sallet +1",
        body = "Hjarrandi Breast.",
        --    hands="Flamma Manopolas +2", They seem to use this for crit +8%, but isn't 10% WSD from relic hands better?
        legs = gear.Empy_Legs,
        neck = gear.JSE_Neck,
        ear2 = "Moonshade Earring",
        --    ring1="Begrudging Ring",
        ring1 = "Cornelia's Ring",
        ring2 = "Epaminondas's Ring",
        back = gear.DRG_WS_STR_CRIT,
        waist = "Sailfi Belt +1"
    })

sets.precast.WS['Impulse Drive'].Acc = set_combine(
                                           sets.precast.WS['Impulse Drive'], {
        legs = gear.AF_Legs,
        waist = "Ioskeha Belt +1"
    })

sets.precast.WS['Impulse Drive'].HighTP = set_combine(
                                              sets.precast.WS['Impulse Drive'],
                                              {
        --    head=gear.Valo_WSD_head,
        --    body=gear.Valo_WSD_body,
        hands = gear.Relic_Hands,
        legs = gear.AF_Legs,
        back = gear.DRG_WS_STR_WSD_Cape,
        ear2 = "Ishvara Earring",
        ring1 = "Regal Ring"
    })

sets.precast.WS['Sonic Thrust'] = sets.precast.WS['Camlann\'s Torment']
sets.precast.WS['Sonic Thrust'].Acc = sets.precast.WS['Camlann\'s Torment'].Acc

sets.precast.WS['Stardiver'] = set_combine(sets.precast.WS, {
    head = "Flam. Zucchetto +2",
    body = gear.Valo_TP_body,
    hands = "Sulev. Gauntlets +2",
    neck = "Fotia Gorget",
    legs = "Sulev. Cuisses +2",
    feet = "Flam. Gambieras +2",
    back = gear.DRG_WS_STR_DA_Cape
})

sets.precast.WS['Stardiver'].Acc = set_combine(sets.precast.WS['Stardiver'], {
    head = gear.Relic_Head,
    feet = gear.Relic_Feet
})

sets.precast.WS['Raiden Thrust'] = set_combine(sets.precast.WS, {
    --    ammo="Ghastly Tathlum +1",
    --    body="Carm. Sc. Mail +1",
    hands = gear.Carmine_D_Hands,
    --    ear1="Crematio Earring",
    ear2 = "Friomisi Earring"
    --    ring1="Shiva Ring +1",
    --    back="Argocham. Mantle",
})

sets.precast.WS['Thunder Thrust'] = sets.precast.WS['Raiden Thrust']

sets.precast.WS['Leg Sweep'] = set_combine(sets.precast.WS, {
    --    ammo="Pemphredo Tathlum",
    head = "Blistering Sallet +1",
    body = "Flamma Korazin +2",
    hands = "Flam. Manopolas +2",
    legs = "Flamma Dirs +2",
    feet = "Flam. Gambieras +2",
    --    ear1="Digni. Earring",
    --    ring1="Metamor. Ring +1",
    ring2 = "Weather. Ring"
})

sets.WSDayBonus = {
    --    head="Gavialis Helm"
}

------------------------------------------------------------------------------------------------
---------------------------------------- Midcast Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.midcast.HealingBreath = {
    head = gear.Relic_Head,
    --    body=gear.Acro_Pet_body,
    --    hands=gear.Acro_Pet_hands,
    legs = gear.AF_Legs,
    feet = gear.Relic_Feet,
    neck = gear.JSE_Neck
    --    ear1="Lancer's Earring",
    --    ear2="Anastasi Earring",
    --    back="Updraft Mantle",
    --    waist="Glassblower's Belt",
}

sets.midcast.ElementalBreath = {
    head = gear.Relic_Head,
    --    body=gear.Acro_Pet_body,
    --    hands=gear.Acro_Pet_hands,
    --    neck="Lancer's Torque",
    --    ear1="Enmerkar Earring",
    --    ear2="Dragoon's Earring",
    ring1 = "C. Palug Ring"
    --    back="Updraft Mantle",
    --    waist="Glassblower's Belt",
}

------------------------------------------------------------------------------------------------
----------------------------------------- Idle Sets --------------------------------------------
------------------------------------------------------------------------------------------------

sets.idle = {
    ammo = "Staunch Tathlum +1", -- 3/3
    head = "Hjarrandi Helm", -- 10/10
    body = "Hjarrandi Breast.",
    hands = "Sulev. Gauntlets +2", -- 5/5
    legs = gear.Carmine_D_Legs,
    -- feet=gear.Relic_Feet,
    feet = "Nyame Sollerets",
    --    neck="Bathy Choker +1",
    neck = "Anu Torque",
    ear1 = "Eabani Earring",
    ear2 = "Odnowa Earring +1",
    ring1 = "Defending Ring",
    ring2 = {name = "Chirich Ring +1", bag = "wardrobe3"},
    --    back="Moonlight Cape", --6/6
    waist = "Plat. Mog. Belt" -- 3/3
}

sets.idle.DT = set_combine(sets.idle, {
    ammo = "Staunch Tathlum +1", -- 3/3
    body = "Hjarrandi Breast.", -- 12/12
    head = "Hjarrandi Helm", -- 10/10
    hands = "Flam. Manopolas +2",
    feet = gear.Relic_Feet,
    --    neck="Loricate Torque +1", --6/6
    --    ear1="Sanare Earring",
    --    ear2="Anastasi Earring",
    --    ring1="Moonlight Ring", --5/5
    ring2 = "Defending Ring" -- 10/10
    --    waist="Carrier's Sash",
})

sets.Kiting = {legs = gear.Carmine_D_Legs}

------------------------------------------------------------------------------------------------
---------------------------------------- Defense Sets ------------------------------------------
------------------------------------------------------------------------------------------------

-- sets.defense.PDT = sets.idle.DT
-- sets.defense.MDT = sets.idle.DT

------------------------------------------------------------------------------------------------
---------------------------------------- Engaged Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.engaged = {
    ammo = "Aurgelmir Orb +1",
    head = "Flam. Zucchetto +2",
    body = gear.Valo_TP_body,
    hands = gear.Empy_Hands,
    legs = gear.Valo_TP_legs,
    feet = "Flam. Gambieras +2",
    -- neck = { Name = 'Vim Torque +1', AugPath='A' },
    neck = "Anu Torque",
    ear1 = "Sherida Earring",
    ear2 = "Brutal Earring",
    ring1 = {name = "Chirich Ring +1", bag = "wardrobe2"},
    ring2 = "Niqmaddu Ring",
    back = gear.DRG_TP_Cape,
    waist = "Sailfi Belt +1"
}

sets.engaged.LowAcc = set_combine(sets.engaged, {
    ear2 = "Cessance Earring",
    waist = "Ioskeha Belt +1"
})

sets.engaged.MidAcc = set_combine(sets.engaged.LowAcc, {
    --    ammo="Voluspa Tathlum",
    neck = "Combatant's Torque",
    ring1 = "Flamma Ring",
    ear2 = "Telos Earring"
})

sets.engaged.HighAcc = set_combine(sets.engaged.MidAcc, {
    --    ammo="Amar Cluster",
    --    body="Emicho Haubert +1",
    --    hands="Emi. Gauntlets +1",
    --    legs=gear.Valo_STP_legs,
    ring1 = "Regal Ring"
})

sets.engaged.MaxAcc = set_combine(sets.engaged.HighAcc, {
    body = gear.AF_Body,
    head = gear.AF_Hear,
    legs = gear.Relic_Legs,
    feet = gear.AF_Feet,
    ear2 = "Mache Earring +1",
    ring1 = "Flamma Ring"
})

sets.engaged.STP = set_combine(sets.engaged, {
    --    hands=gear.Acro_STP_hands,
    --    legs=gear.Valo_STP_legs,
    ear2 = "Telos Earring",
    back = gear.DRG_JMP_Cape
})

------------------------------------------------------------------------------------------------
---------------------------------------- Hybrid Sets -------------------------------------------
------------------------------------------------------------------------------------------------

sets.engaged.Hybrid = {
    ammo = "Aurgelmir Orb +1",
    head = "Hjarrandi Helm",
    neck = "Anu Torque",
    ear1 = "Sherida Earring",
    ear2 = "Sroda Earring",
    body = "Hjarrandi Breast.",
    hands = gear.Empy_Hands,
    legs = gear.Relic_Legs,
    feet = 'Flam. Gambieras +2',
    ring1 = {name = "Chirich Ring +1", bag = "wardrobe2"},
    ring2 = "Niqmaddu Ring",
    back = gear.DRG_TP_Cape,
    waist = 'Ioskeha Belt +1'
}

sets.engaged.DT = set_combine(sets.engaged, sets.engaged.Hybrid)
sets.engaged.LowAcc.DT = set_combine(sets.engaged.LowAcc, sets.engaged.Hybrid)
sets.engaged.MidAcc.DT = set_combine(sets.engaged.MidAcc, sets.engaged.Hybrid)
sets.engaged.HighAcc.DT = set_combine(sets.engaged.HighAcc, sets.engaged.Hybrid)
sets.engaged.STP.DT = set_combine(sets.engaged.STP, sets.engaged.Hybrid)

------------------------------------------------------------------------------------------------
---------------------------------------- Special Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.buff.Doom = {
    neck = "Nicander's Necklace", -- 20
    ring1 = {name = "Eshmun's Ring", bag = "wardrobe3"}, -- 20
    ring2 = {name = "Eshmun's Ring", bag = "wardrobe4"}, -- 20
    waist = "Gishdubar Sash" -- 10
}

-- sets.CP = {back="Mecisto. Mantle"}
-- sets.Reive = {neck="Ygnas's Resolve +1"}

sets.ShiningOne = {main = "Shining One", sub = "Utu Grip"}
sets.Naegling = {main = "Naegling", sub = "Regis"}
sets.Trishula = {main = "Trishula", sub = "Utu Grip"}
