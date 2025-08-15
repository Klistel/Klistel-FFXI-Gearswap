include('Gearsets/' .. player.name .. '/Globals-AugGear.lua')

------------------------------------------------------------------------------------------------
---------------------------------------- Bullet ------------------------------------------
------------------------------------------------------------------------------------------------ 
gear.RAbullet = "Chrono Bullet"
-- gear.RAccbullet = "Devastating Bullet"
gear.RAccbullet = "Chrono Bullet"
gear.WSbullet = "Chrono Bullet"
gear.MAbullet = "Living Bullet"
gear.QDbullet = "Living Bullet"
options.ammo_warning_limit = 10

------------------------------------------------------------------------------------------------
---------------------------------------- JSE ---------------------------------------------------
------------------------------------------------------------------------------------------------

gear.AF_Head = "Laksamana's Tricorne +3"
gear.AF_Body = "Laksamana Frac +4"
gear.AF_Hands = "Laksamana's Gants +3"
gear.AF_Legs = "Laksamana's Trews +2"
gear.AF_Feet = "Laksamana's Bottes +2"

gear.Relic_Head = "Lanun Tricorne +3"
gear.Relic_Body = "Lanun Frac +4"
gear.Relic_Hands = "Lanun Gants +3"
gear.Relic_Legs = "Lanun Trews +3"
gear.Relic_Feet = "Lanun Bottes +4"

gear.Empy_Head = "Chass. Tricorne +2"
gear.Empy_Body = "Chasseur's Frac +2"
gear.Empy_Hands = "Chasseur's Gants +3"
gear.Empy_Legs = "Chas. Culottes +3"
gear.Empy_Feet = "Chass. Bottes +2"

gear.JSE_Neck = "Comm. Charm +2"

------------------------------------------------------------------------------------------------
---------------------------------------- Precast Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.precast.JA['Snake Eye'] = {legs = gear.Relic_Legs}
sets.precast.JA['Wild Card'] = {feet = gear.Relic_Feet}
sets.precast.JA['Random Deal'] = {body = gear.Relic_Body}

sets.precast.CorsairRoll = {
    head = gear.Relic_Head,
    body = "Malignance Tabard", -- 9/9
    hands = gear.Empy_Hands,
    legs = "Desultor Tassets",
    feet = "Malignance Boots", -- 4/0
    neck = "Regal Necklace",
    ear1 = "Odnowa Earring +1", -- 3/5
    -- ear2="Etiolation Earring", --0/3
    ring1 = "Defending Ring", -- 10/10
    ring2 = "Gelatinous Ring +1", -- 7/-1
    back = gear.COR_DW_Cape,
    waist = "Plat. Mog. Belt" -- 3/3
}

sets.precast.CorsairRoll.Weapons = set_combine(sets.precast.CorsairRoll, {
    main = {name = "Rostam", augments = {'Path: C'}},
    range = "Compensator"
})

sets.precast.CorsairRoll.LowerDelay = {
    --    back="Gunslinger's Cape"
}
sets.precast.CorsairRoll["Caster's Roll"] = set_combine(
                                                sets.precast.CorsairRoll,
                                                {legs = gear.Empy_Legs})
sets.precast.CorsairRoll["Courser's Roll"] =
    set_combine(sets.precast.CorsairRoll, {feet = gear.Empy_Feet})
sets.precast.CorsairRoll["Blitzer's Roll"] =
    set_combine(sets.precast.CorsairRoll, {head = gear.Empy_Head})
sets.precast.CorsairRoll["Tactician's Roll"] =
    set_combine(sets.precast.CorsairRoll, {body = gear.Empy_Body})
sets.precast.CorsairRoll["Allies' Roll"] =
    set_combine(sets.precast.CorsairRoll, {hands = gear.Empy_Hands})

sets.precast.LuzafRing = {ring2 = "Luzaf's Ring"}
sets.precast.FoldDoubleBust = {hands = gear.Relic_Hands}

sets.precast.Waltz = {
    body = "Passion Jacket",
    -- ring1="Asklepian Ring",
    waist = "Gishdubar Sash"
}

sets.precast.FC = {
    head = gear.Carmine_D_Head, -- 14
    body = gear.Taeon_FC_body, -- 9
    hands = "Leyline Gloves", -- 8
    legs = "Rawhide Trousers", -- 5
    feet = gear.Carmine_D_Feet, -- 8
    --    neck="Orunmila's Torque", --5
    neck = "Baetyl pendant", -- 4
    ear1 = "Loquacious Earring", -- 2
    ear2="Enchntr. Earring +1", --2
    ring1 = "Weather. Ring", -- 6(4)
    ring2 = "Kishar Ring", -- 4
    back = gear.COR_FC_Cape
}

sets.precast.FC.Utsusemi = set_combine(sets.precast.FC,
                                       {body = "Passion Jacket"})

-- (10% Snapshot from JP Gifts)
sets.precast.RA = {
    ammo = gear.RAbullet,
    head = gear.Empy_Head, -- 0/16
    body = "Oshosi Vest +1", -- 14/0
    hands = gear.Carmine_D_Hands, -- 8/11
    legs = gear.Adhemar_D_legs, -- 10/13
    feet = "Meg. Jam. +2", -- 10/0
    neck = gear.JSE_Neck, -- 4/0
    ring1="Crepuscular Ring", --3/0
    back = gear.COR_SNP_Cape, -- 10/0
    waist = "Impulse Belt" -- 3/0
} -- 62/38

sets.precast.RA.Flurry1 = set_combine(sets.precast.RA, {
    body = gear.AF_Body, -- 0/20
    waist = "Yemaya Belt" -- 0/5
}) -- 45/63

sets.precast.RA.Flurry2 = set_combine(sets.precast.RA.Flurry1, {
    --    feet="Pursuer's Gaiters", --0/10
}) -- 35/73

------------------------------------------------------------------------------------------------
------------------------------------- Weapon Skill Sets ----------------------------------------
------------------------------------------------------------------------------------------------

sets.precast.WS = {
    ammo = gear.WSbullet,
    head = gear.Relic_Head,
    body = gear.AF_Body,
    hands = gear.Empy_Hands,
    legs = "Nyame Flanchard",
    feet = gear.Relic_Feet,
    neck = "Fotia Gorget",
    ear1 = "Moonshade Earring",
    ear2 = "Ishvara Earring",
    ring1 = "Dingir Ring",
    ring2 = "Cornelia's Ring",
    back = gear.COR_WS_RA_Cape,
    waist="Fotia Belt"
}

sets.precast.WS['Last Stand'] = sets.precast.WS

sets.precast.WS['Wildfire'] = {
    ammo = gear.MAbullet,
    --head = "Nyame Helm",
    head = gear.Herc_MAB_head,
    body = gear.Relic_Body,
    hands = gear.Empy_Hands,
    legs = "Nyame Flanchard",
    feet = gear.Relic_Feet,
    neck = gear.JSE_Neck,
    --    ear1="Crematio Earring",
    ear1 = "Hecate's earring",
    ear2 = "Friomisi Earring",
    ring1 = "Dingir Ring",
    ring2 = "Cornelia's Ring",
    back = gear.COR_WS_MAB_Cape,
    waist = "Orpheus's Sash"
}

sets.precast.WS['Hot Shot'] = sets.precast.WS['Wildfire']

sets.precast.WS['Leaden Salute'] = set_combine(sets.precast.WS['Wildfire'], {
    head = "Pixie Hairpin +1",
    ear1 = "Moonshade Earring",
    ring1 = "Archon Ring"
})

sets.precast.WS['Evisceration'] = {
    head = "Blistering Sallet +1",
    body = "Meg. Cuirie +2",
    hands = gear.Adhemar_A_hands,
    legs = "Zoar Subligar +1",
    feet = gear.Relic_Feet,
    neck = "Fotia Gorget",
    ear1 = "Moonshade Earring",
    ear2 = "Odr Earring",
    ring1 = "Regal Ring",
    ring2 = "Ilabrat Ring",
    back = gear.COR_WS_MELEE_Cape,
    waist="Fotia Belt"
}

sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
    head = "Nyame Helm",
    -- body="Nyame Mail",
    neck = "Rep. Plat. Medal",
    ring1 = "Epaminondas's Ring",
    ring2 = "Cornelia's Ring",
    back = gear.COR_WS_MELEE_Cape,
    waist = "Sailfi Belt +1"
})

sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS['Swift Blade'], {
    hands = "Meg. Gloves +2",
    ear1 = "Moonshade Earring",
    ear2 = "Telos Earring",
    ring2 = "Rufescent Ring"
}) -- MND

sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS['Wildfire'], {
    ammo = gear.QDbullet,
    ear1 = "Moonshade Earring"
})

sets.precast.WS['Cyclone'] = sets.precast.WS['Aeolian Edge']

sets.precast.WS['Circle Blade'] = sets.precast.WS['Savage Blade']

sets.precast.WS['Burning Blade'] = set_combine(sets.precast.WS['Wildfire'],
                                               {ammo = gear.QDbullet})

------------------------------------------------------------------------------------------------
---------------------------------------- Midcast Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.midcast.FastRecast = sets.precast.FC

sets.midcast.SpellInterrupt = {
    body = gear.Taeon_Phalanx_body, -- 10
    hands = "Rawhide Gloves", -- 15
    legs = gear.Carmine_D_Legs, -- 20
    feet = gear.Taeon_Phalanx_feet, -- 10
    --   neck="Loricate Torque +1", --5
    ear1 = "Halasz Earring", -- 5
    ear2 = "Magnetic Earring", -- 8
    ring2 = "Evanescence Ring" -- 5
}

sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

sets.midcast.CorsairShot = {
    ammo = gear.QDbullet,
    head = gear.Herc_MAB_head,
    body = gear.Relic_Body,
    hands = gear.Carmine_D_Hands,
    legs = "Nyame Flanchard",
    feet = gear.Empy_Feet,
    neck = "Baetyl Pendant",
    --    ear1="Crematio Earring",
    ear1 = "Hecate's Earring",
    ear2 = "Friomisi Earring",
    ring1 = "Dingir Ring",
    ring2 = "Fenrir Ring +1",
    back = gear.COR_WS_MAB_Cape,
    waist = "Orpheus's Sash"
}

sets.midcast.CorsairShot.STP = {
    ammo = gear.QDbullet,
    head = "Malignance Chapeau",
    body = "Malignance Tabard",
    hands = "Malignance Gloves",
    legs = gear.Empy_Legs,
    feet = gear.Empy_Feet,
    neck = "Iskur Gorget",
    ear1 = "Dedition Earring",
    ear2 = "Telos Earring",
    ring1="Crepuscular Ring",
    ring2 = {name = "Chirich Ring +1", bag = "wardrobe3"},
    back = gear.COR_RA_Cape,
    waist = "Kentarch Belt +1"
}

sets.midcast.CorsairShot['Light Shot'] = {
    ammo = gear.QDbullet,
    head = gear.AF_Head,
    body = "Malignance Tabard",
    hands = gear.Empy_Hands,
    legs = gear.Empy_Legs,
    feet = gear.AF_Feet,
    neck = gear.JSE_Neck,
    ear1="Crep. Earring",
    --    ear2="Digni. Earring",        Strophadia (Reisenjima GF)
    ring1="Crepuscular Ring",
    ring2 = "Weather. Ring",
    back = gear.COR_WS_MAB_Cape,
    waist = "K. Kachina Belt +1"
}

sets.midcast.CorsairShot['Dark Shot'] = sets.midcast.CorsairShot['Light Shot']
sets.midcast.CorsairShot.Enhance = {
    --    body="Mirke Wardecors", 
    feet = gear.Empy_Feet
}

-- Ranged gear
sets.midcast.RA = {
    ammo = gear.RAbullet,
    head = "Ikenga's Hat",
    body = "Ikenga's Vest",
    hands = "Malignance Gloves",
    legs = gear.Empy_Legs,
    feet = "Malignance Boots",
    neck = "Iskur Gorget",
    ear1="Crep. Earring",
    ear2 = "Telos Earring",
    ring1="Crepuscular Ring",
    ring2 = "Ilabrat Ring",
    back = gear.COR_RA_Cape,
    waist = "Yemaya Belt"
}

sets.midcast.RA.Acc = set_combine(sets.midcast.RA, {
    ammo = gear.RAccbullet,
    ear1 = "Beyla Earring",
    ring2 = "Hajduk Ring +1"
})

sets.midcast.RA.HighAcc = set_combine(sets.midcast.RA.Acc, {
    -- legs=gear.AF_Legs,
    legs = gear.Empy_Legs,
    ring1 = "Regal Ring",
    waist = "K. Kachina Belt +1"
})

sets.midcast.RA.Critical = set_combine(sets.midcast.RA, {
    head = "Meghanada Visor +2",
    body = "Meg. Cuirie +2",
    hands = gear.Empy_Hands,
    legs = "Darraigner's Brais",
    -- feet="Osh. Leggings +1",
    ring1 = "Dingir Ring",
    -- ring2="Begrudging Ring",
    waist = "K. Kachina Belt +1"
})

sets.midcast.RA.STP = set_combine(sets.midcast.RA, {
    ear1 = "Dedition Earring",
    ring2 = {name = "Chirich Ring +1", bag = "wardrobe6"}
})

sets.TripleShot = {
    -- head="Oshosi Mask +1", --5
    body = gear.Empy_Body, -- 13
    hands = gear.Relic_Hands
    -- legs="Osh. Trousers +1", --6
    -- feet="Osh. Leggings +1", --3
} -- 27

-- sets.TripleShotCritical = {
--        head="Meghanada Visor +2",
--        body="Nisroch Jerkin",
--        legs="Osh. Trousers +1",
--        feet="Ikenga's Clogs",
--        waist="Tellen Belt",
--    }

------------------------------------------------------------------------------------------------
----------------------------------------- Idle Sets --------------------------------------------
------------------------------------------------------------------------------------------------

sets.resting = {}

sets.idle = {
    ammo = gear.RABullet,
    head = gear.Empy_Head,
    body = gear.Empy_Body,
    hands = "Nyame Gauntlets",
    legs = gear.Carmine_D_Legs,
    feet = gear.Relic_Feet,
    neck = "Null Loop",
    waist = "Plat. Mog. Belt",
    ear1 = "Eabani Earring",
    ear2 = "Telos Earring",
    ring1 = "Defending Ring",
    ring2 = "Meghanada Ring",
    back = gear.COR_DW_Cape
}

sets.idle.DT = set_combine(sets.idle, {
    head = "Nyame Helm", -- 7/7 meva: 123
    body = "Nyame Mail", -- 9/9  meva: 139
    -- hands="Raetic Bangles +1",
    hands = "Nyame Gauntlets", -- 7/7  meva: 112
    legs = gear.Empy_Legs, -- 12/12 meva:125
    feet = "Nyame Sollerets", -- 7/7, meva: 150
    --    neck="Warder's Charm +1",
    ring1 = "Defending Ring", -- 10/10 meva: 0
    --    back="Moonlight Cape", --6/6
    ear1 = "Eabani Earring", -- evasion: 15 meva: 8
    waist = "Plat. Mog. Belt", -- 3/3 meva: 15
    back = "Null Shawl" -- evasion: 50 meva: 50
}) -- 55/55

------------------------------------------------------------------------------------------------
---------------------------------------- Defense Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.defense.PDT = sets.idle.DT

sets.defense.MDT = sets.idle.DT

sets.Kiting = {legs = gear.Carmine_D_Legs}

------------------------------------------------------------------------------------------------
---------------------------------------- Engaged Sets ------------------------------------------
------------------------------------------------------------------------------------------------

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion

sets.engaged = {
    ammo = gear.RAbullet,
    head = gear.Adhemar_A_head,
    body = gear.Adhemar_B_body,
    hands = gear.Adhemar_A_hands,
    legs = "Samnuha Tights",
    feet = gear.Herc_TA_feet,
    neck = "Iskur Gorget",
    ear1 = "Cessance Earring",
    ear2 = "Brutal Earring",
    ring1 = "Hetairoi Ring",
    ring2 = "Epona's Ring",
    back = gear.COR_TP_Cape,
    waist = "Windbuffet Belt +1"
}

sets.engaged.LowAcc = set_combine(sets.engaged, {
    head = "Malignance Chapeau",
    hands = gear.Adhemar_A_hands,
    ring1 = {name = "Chirich Ring +1", bag = "wardrobe2"},
    neck = "Combatant's Torque"
})

sets.engaged.MidAcc = set_combine(sets.engaged.LowAcc, {
    ear2 = "Telos Earring",
    ring1 = "Regal Ring",
    ring2 = "Ilabrat Ring",
    waist = "Kentarch Belt +1"
})

sets.engaged.HighAcc = set_combine(sets.engaged.MidAcc, {
    head = gear.Carmine_D_Head,
    hands = "Gazu Bracelets +1",
    ear1 = "Mache Earring +1",
    ear2 = "Odr Earring",
    ring2 = {name = "Chirich Ring +1", bag = "wardrobe3"}
    -- waist="Olseni Belt",
})

-- * DNC Subjob DW Trait: +15%
-- * NIN Subjob DW Trait: +25%

-- No Magic Haste (74% DW to cap)
sets.engaged.DW = {
    ammo = gear.RAbullet,
    head = gear.Adhemar_A_head,
    body = gear.Adhemar_B_body, -- 6
    hands = "Floral Gauntlets", -- 5
    legs = gear.Carmine_D_Legs, -- 6
    feet = gear.Taeon_DW_feet, -- 9
    neck = "Iskur Gorget",
    ear1 = "Brutal Earring",
    ear2 = "Suppanomimi", -- 5
    ring1 = "Hetairoi Ring",
    ring2 = "Epona's Ring",
    back = gear.COR_DW_Cape, -- 10
    waist = "Reiki Yotai" -- 7
} -- 48%

sets.engaged.DW.LowAcc = set_combine(sets.engaged.DW, {
    head = "Malignance Chapeau",
    ring1 = {name = "Chirich Ring +1", bag = "wardrobe2"},
    neck = "Combatant's Torque"
})

sets.engaged.DW.MidAcc = set_combine(sets.engaged.DW.LowAcc, {
    hands = gear.Adhemar_A_hands,
    ear1="Crep. Earring",
    ear2 = "Telos Earring",
    ring1 = "Regal Ring",
    ring2 = "Ilabrat Ring",
    waist = "Kentarch Belt +1"
})

sets.engaged.DW.HighAcc = set_combine(sets.engaged.DW.MidAcc, {
    head = gear.Carmine_D_Head,
    hands = "Gazu Bracelets +1",
    ear1 = "Mache Earring +1",
    ear2 = "Odr Earring",
    ring2 = {name = "Chirich Ring +1", bag = "wardrobe3"}
    -- waist="Olseni Belt",
})

-- 15% Magic Haste (67% DW to cap)
sets.engaged.DW.LowHaste = {
    ammo = gear.RAbullet,
    head = gear.Adhemar_A_head,
    body = gear.Adhemar_B_body, -- 6
    hands = "Floral Gauntlets", -- 5
    legs = gear.Carmine_D_Legs, -- 6
    feet = gear.Taeon_DW_feet, -- 9
    neck = "Iskur Gorget",
    ear1 = "Eabani Earring", -- 4
    ear2 = "Suppanomimi", -- 5
    ring1 = "Hetairoi Ring",
    ring2 = "Epona's Ring",
    back = gear.COR_TP_Cape,
    waist = "Reiki Yotai" -- 7
} -- 42%

sets.engaged.DW.LowAcc.LowHaste = set_combine(sets.engaged.DW.LowHaste, {
    head = "Malignance Chapeau",
    ring1 = {name = "Chirich Ring +1", bag = "wardrobe2"},
    neck = "Combatant's Torque"
})

sets.engaged.DW.MidAcc.LowHaste = set_combine(sets.engaged.DW.LowAcc.LowHaste, {
    hands = gear.Adhemar_A_hands,
    ear1="Crep. Earring",
    ear2 = "Telos Earring",
    ring1 = "Regal Ring",
    ring2 = "Ilabrat Ring",
    waist = "Kentarch Belt +1"
})

sets.engaged.DW.HighAcc.LowHaste = set_combine(sets.engaged.DW.MidAcc.LowHaste,
                                               {
    head = gear.Carmine_D_Head,
    hands = "Gazu Bracelets +1",
    ear1 = "Mache Earring +1",
    ear2 = "Odr Earring",
    ring2 = {name = "Chirich Ring +1", bag = "wardrobe3"}
    -- waist="Olseni Belt",
})

-- 30% Magic Haste (56% DW to cap)
sets.engaged.DW.MidHaste = {
    ammo = gear.RAbullet,
    head = gear.Adhemar_A_head,
    body = gear.Adhemar_B_body, -- 6
    hands = gear.Adhemar_A_hands,
    legs = "Samnuha Tights",
    feet = gear.Taeon_DW_feet, -- 9
    neck = "Iskur Gorget",
    ear1 = "Eabani Earring", -- 4
    ear2 = "Suppanomimi", -- 5
    ring1 = "Hetairoi Ring",
    ring2 = "Epona's Ring",
    back = gear.COR_TP_Cape,
    waist = "Reiki Yotai" -- 7
} -- 31%

sets.engaged.DW.LowAcc.MidHaste = set_combine(sets.engaged.DW.MidHaste, {
    head = "Malignance Chapeau",
    hands = gear.Adhemar_A_hands,
    ring1 = {name = "Chirich Ring +1", bag = "wardrobe2"},
    neck = "Combatant's Torque"
})

sets.engaged.DW.MidAcc.MidHaste = set_combine(sets.engaged.DW.LowAcc.MidHaste, {
    legs = "Meg. Chausses +2",
    ear1="Crep. Earring",
    ear2 = "Telos Earring",
    ring1 = "Regal Ring",
    ring2 = "Ilabrat Ring",
    waist = "Kentarch Belt +1"
})

sets.engaged.DW.HighAcc.MidHaste = set_combine(sets.engaged.DW.MidAcc.MidHaste,
                                               {
    head = gear.Carmine_D_Head,
    hands = "Gazu Bracelets +1",
    legs = gear.Carmine_D_Legs,
    ear1 = "Mache Earring +1",
    ear2 = "Odr Earring",
    ring2 = {name = "Chirich Ring +1", bag = "wardrobe3"}
    -- waist="Olseni Belt",
})

-- 35% Magic Haste (51% DW to cap)
sets.engaged.DW.HighHaste = {
    ammo = gear.RAbullet,
    head = gear.Adhemar_A_head,
    body = gear.Adhemar_B_body, -- 6
    hands = gear.Adhemar_A_hands,
    legs = "Samnuha Tights",
    feet = gear.Herc_TA_feet,
    neck = "Iskur Gorget",
    ear1 = "Eabani Earring", -- 4
    ear2 = "Suppanomimi", -- 5
    ring1 = "Hetairoi Ring",
    ring2 = "Epona's Ring",
    back = gear.COR_TP_Cape,
    waist = "Reiki Yotai" -- 7
} -- 27%

sets.engaged.DW.LowAcc.HighHaste = set_combine(sets.engaged.DW.HighHaste, {
    head = "Malignance Chapeau",
    hands = gear.Adhemar_A_hands,
    ring1 = {name = "Chirich Ring +1", bag = "wardrobe2"},
    neck = "Combatant's Torque"
})

sets.engaged.DW.MidAcc.HighHaste = set_combine(sets.engaged.DW.LowAcc.HighHaste,
                                               {
    legs = "Meg. Chausses +2",
    ear1="Crep. Earring",
    ear2 = "Telos Earring",
    ring1 = "Regal Ring",
    ring2 = "Ilabrat Ring",
    waist = "Kentarch Belt +1"
})

sets.engaged.DW.HighAcc.HighHaste = set_combine(
                                        sets.engaged.DW.MidAcc.HighHaste, {
        head = gear.Carmine_D_Head,
        hands = "Gazu Bracelets +1",
        legs = gear.Carmine_D_Legs,
        ear1 = "Mache Earring +1",
        ear2 = "Odr Earring",
        ring2 = {name = "Chirich Ring +1", bag = "wardrobe3"}
        -- waist="Olseni Belt",
    })

-- 45% Magic Haste (36% DW to cap)
sets.engaged.DW.MaxHaste = {
    ammo = gear.RAbullet,
    head = gear.Adhemar_A_head,
    body = gear.Adhemar_B_body, -- 6
    hands = gear.Adhemar_A_hands,
    legs = "Samnuha Tights",
    feet = gear.Herc_TA_feet,
    neck = "Iskur Gorget",
    ear1 = "Suppanomimi", -- 5
    ear2 = "Telos Earring",
    ring1 = "Hetairoi Ring",
    ring2 = "Epona's Ring",
    back = gear.COR_TP_Cape,
    waist = "Windbuffet Belt +1"
} -- 11% 

sets.engaged.DW.LowAcc.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, {
    head = "Malignance Chapeau",
    hands = gear.Adhemar_A_hands,
    ring1 = {name = "Chirich Ring +1", bag = "wardrobe2"},
    waist = "Kentarch Belt +1"
})

sets.engaged.DW.MidAcc.MaxHaste = set_combine(sets.engaged.DW.LowAcc.MaxHaste, {
    legs = "Meg. Chausses +2",
    neck = "Combatant's Torque",
    ear1="Crep. Earring",
    ring1 = "Regal Ring",
    ring2 = "Ilabrat Ring"
})

sets.engaged.DW.HighAcc.MaxHaste = set_combine(sets.engaged.DW.MidAcc.MaxHaste,
                                               {
    head = gear.Carmine_D_Head,
    hands = "Gazu Bracelets +1",
    legs = gear.Carmine_D_Legs,
    ear1 = "Mache Earring +1",
    ear2 = "Odr Earring",
    ring2 = {name = "Chirich Ring +1", bag = "wardrobe3"}
    -- waist="Olseni Belt",
})

------------------------------------------------------------------------------------------------
---------------------------------------- Hybrid Sets -------------------------------------------
------------------------------------------------------------------------------------------------
sets.engaged.MalignanceHybrid = {
    head = "Malignance Chapeau", -- 6/6
    body = "Malignance Tabard", -- 9/9
    hands = "Malignance Gloves", -- 5/5
    legs = gear.Empy_Legs, -- 12/12
    feet = "Malignance Boots", -- 4/4
    waist = "Sailfi Belt +1" -- for haste
}

sets.engaged.NyameHybrid = {
    head = "Nyame Helm", -- 7/7
    body = "Nyame Mail", -- 9/9
    hands = "Nyame Gauntlets", -- 7/7
    legs = gear.Empy_Legs, -- 12/12
    feet = "Nyame Sollerets" -- 7/7
}

sets.engaged.Malignance = set_combine(sets.engaged,
                                      sets.engaged.MalignanceHybrid)
sets.engaged.LowAcc.Malignance = set_combine(sets.engaged.LowAcc,
                                             sets.engaged.MalignanceHybrid)
sets.engaged.MidAcc.Malignance = set_combine(sets.engaged.MidAcc,
                                             sets.engaged.MalignanceHybrid)
sets.engaged.HighAcc.Malignance = set_combine(sets.engaged.HighAcc,
                                              sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance = set_combine(sets.engaged.DW,
                                         sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance = set_combine(sets.engaged.DW.LowAcc,
                                                sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance = set_combine(sets.engaged.DW.MidAcc,
                                                sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance = set_combine(sets.engaged.DW.HighAcc,
                                                 sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance.LowHaste = set_combine(sets.engaged.DW.LowHaste,
                                                  sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance.LowHaste = set_combine(
                                                 sets.engaged.DW.LowAcc.LowHaste,
                                                 sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance.LowHaste = set_combine(
                                                 sets.engaged.DW.MidAcc.LowHaste,
                                                 sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance.LowHaste =
    set_combine(sets.engaged.DW.HighAcc.LowHaste, sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance.MidHaste = set_combine(sets.engaged.DW.MidHaste,
                                                  sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance.MidHaste = set_combine(
                                                 sets.engaged.DW.LowAcc.MidHaste,
                                                 sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance.MidHaste = set_combine(
                                                 sets.engaged.DW.MidAcc.MidHaste,
                                                 sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance.MidHaste =
    set_combine(sets.engaged.DW.HighAcc.MidHaste, sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance.HighHaste = set_combine(sets.engaged.DW.HighHaste,
                                                   sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance.HighHaste = set_combine(
                                                  sets.engaged.DW.LowAcc
                                                      .HighHaste,
                                                  sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance.HighHaste = set_combine(
                                                  sets.engaged.DW.MidAcc
                                                      .HighHaste,
                                                  sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance.HighHaste =
    set_combine(sets.engaged.DW.HighAcc.HighHaste, sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance.MaxHaste = set_combine(sets.engaged.DW.MaxHaste,
                                                  sets.engaged.MalignanceHybrid,
                                                  { -- Malignance Tabard replacing Adhemar_B_Body loses 6 DW, need to make it to 11 DW
    -- Replace Suppa (5) in e1 with Brutal for DA and use DW cape
    back = gear.COR_DW_Cape,
    ear1 = "Brutal Earring"
})
sets.engaged.DW.LowAcc.Malignance.MaxHaste = set_combine(
                                                 sets.engaged.DW.LowAcc.MaxHaste,
                                                 sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance.MaxHaste = set_combine(
                                                 sets.engaged.DW.MidAcc.MaxHaste,
                                                 sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance.MaxHaste =
    set_combine(sets.engaged.DW.HighAcc.MaxHaste, sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance.MaxHastePlus =
    set_combine(sets.engaged.DW.MaxHastePlus, sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance.MaxHastePlus =
    set_combine(sets.engaged.DW.LowAcc.MaxHastePlus,
                sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance.MaxHastePlus =
    set_combine(sets.engaged.DW.MidAcc.MaxHastePlus,
                sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance.MaxHastePlus =
    set_combine(sets.engaged.DW.HighAcc.MaxHastePlus,
                sets.engaged.MalignanceHybrid)

sets.engaged.Nyame = set_combine(sets.engaged, sets.engaged.NyameHybrid)
sets.engaged.LowAcc.Nyame = set_combine(sets.engaged.LowAcc,
                                        sets.engaged.NyameHybrid)
sets.engaged.MidAcc.Nyame = set_combine(sets.engaged.MidAcc,
                                        sets.engaged.NyameHybrid)
sets.engaged.HighAcc.Nyame = set_combine(sets.engaged.HighAcc,
                                         sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame = set_combine(sets.engaged.DW, sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame = set_combine(sets.engaged.DW.LowAcc,
                                           sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame = set_combine(sets.engaged.DW.MidAcc,
                                           sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame = set_combine(sets.engaged.DW.HighAcc,
                                            sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame.LowHaste = set_combine(sets.engaged.DW.LowHaste,
                                             sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame.LowHaste = set_combine(
                                            sets.engaged.DW.LowAcc.LowHaste,
                                            sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame.LowHaste = set_combine(
                                            sets.engaged.DW.MidAcc.LowHaste,
                                            sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame.LowHaste = set_combine(
                                             sets.engaged.DW.HighAcc.LowHaste,
                                             sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame.MidHaste = set_combine(sets.engaged.DW.MidHaste,
                                             sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame.MidHaste = set_combine(
                                            sets.engaged.DW.LowAcc.MidHaste,
                                            sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame.MidHaste = set_combine(
                                            sets.engaged.DW.MidAcc.MidHaste,
                                            sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame.MidHaste = set_combine(
                                             sets.engaged.DW.HighAcc.MidHaste,
                                             sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame.HighHaste = set_combine(sets.engaged.DW.HighHaste,
                                              sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame.HighHaste = set_combine(
                                             sets.engaged.DW.LowAcc.HighHaste,
                                             sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame.HighHaste = set_combine(
                                             sets.engaged.DW.MidAcc.HighHaste,
                                             sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame.HighHaste = set_combine(
                                              sets.engaged.DW.HighAcc.HighHaste,
                                              sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame.MaxHaste = set_combine(sets.engaged.DW.MaxHaste,
                                             sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame.MaxHaste = set_combine(
                                            sets.engaged.DW.LowAcc.MaxHaste,
                                            sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame.MaxHaste = set_combine(
                                            sets.engaged.DW.MidAcc.MaxHaste,
                                            sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame.MaxHaste = set_combine(
                                             sets.engaged.DW.HighAcc.MaxHaste,
                                             sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame.MaxHastePlus = set_combine(sets.engaged.DW.MaxHastePlus,
                                                 sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame.MaxHastePlus = set_combine(
                                                sets.engaged.DW.LowAcc
                                                    .MaxHastePlus,
                                                sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame.MaxHastePlus = set_combine(
                                                sets.engaged.DW.MidAcc
                                                    .MaxHastePlus,
                                                sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame.MaxHastePlus = set_combine(
                                                 sets.engaged.DW.HighAcc
                                                     .MaxHastePlus,
                                                 sets.engaged.NyameHybrid)

------------------------------------------------------------------------------------------------
---------------------------------------- Special Sets ------------------------------------------
------------------------------------------------------------------------------------------------
sets.TreasureHunter = {
    feet = "Volte Boots",
    waist = "Chaac Belt",
    hands = {
        name = "Herculean Gloves",
        augments = {'Accuracy+7', 'Pet: STR+3', '"Treasure Hunter"+1'}
    },
    head = {
        name = "Herculean Helm",
        augments = {
            'MND+4', 'Weapon skill damage +4%', '"Treasure Hunter"+1',
            'Mag. Acc.+8 "Mag.Atk.Bns."+8'
        }
    }
}

sets.buff.Doom = {
    neck = "Nicander's Necklace", -- 20
    ring1 = {name = "Eshmun's Ring", bag = "wardrobe4"}, -- 20
    ring2 = {name = "Eshmun's Ring", bag = "wardrobe3"}, -- 20
    waist = "Gishdubar Sash" -- 10
}

sets.DeathPenalty = {ranged = "Death Penalty"}

sets.lvl1dagger = {main = "Bronze Knife", sub = "Blurred Knife +1"}
sets.Armageddon = {
    --    ranged="Armageddon"
    ranged = "Blue Steel"
}
sets.Fomalhaut = {ranged = "Fomalhaut"}
sets.Anarchy = {ranged = "Anarchy +2"}

sets.Dagger = {
    main = {name = "Rostam", augments = {'Path: B'}},
    sub = "Blurred Knife +1"
}

sets.LeadenRangeTP = {
    main = {name = "Rostam", augments = {'Path: A'}},
    sub = "Tauret"
}
sets.LeadenMeleeTP = {
    main = {name = "Rostam", augments = {'Path: B'}},
    sub = "Tauret"
}

sets.Sword = {main = "Naegling", sub = "Blurred Knife +1"}
sets.Ranged = {
    main = {name = "Rostam", augments = {'Path: A'}},
    sub = "Kustawi +1"
}
sets.Tauret = {main = "Tauret", sub = "Gleti's Knife"}

sets.Blunt = {main = "Chatoyant Staff"}

sets.DefaultShield = {sub = "Nusku Shield"}

