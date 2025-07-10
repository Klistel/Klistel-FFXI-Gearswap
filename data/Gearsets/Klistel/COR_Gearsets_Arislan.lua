  
  ------------------------------------------------------------------------------------------------
    ---------------------------------------- Capes/JSE ------------------------------------------
    ------------------------------------------------------------------------------------------------

    gear.AF_Head="Corsair's Tricorne"
    gear.AF_Body="Laksamana's Frac +2"
    gear.AF_Hands="Laksamana's Gants +1"
    gear.AF_Legs="Laksamana's Culottes +1"
    gear.AF_Feet="Corsair's Bottes"

    gear.Relic_Head="Lanun Tricorne"
    gear.Relic_Body="Lanun Frac +3"
    gear.Relic_Hands="Lanun Gants +1"
    gear.Relic_Legs="Lanun Trews +1"
    gear.Relic_Feet="Lanun Bottes +3"

    gear.Empy_Head="Chass. Tricorne +3"
    gear.Empy_Body="Chasseur's Frac +3"
    gear.Empy_Hands="Chasseur's Gants +3"
    gear.Empy_Legs="Chas. Culottes +3"
    gear.Empy_Feet="Chass. Bottes +3"

    gear.JSE_Neck="Comm. Charm +2"

    gear.COR_DW_Cape = {name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%',}} --**
    gear.COR_RA_Cape = {name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}} --*
    gear.COR_SNP_Cape = {name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Snapshot"+10',}} --*
    gear.COR_TP_Cape = {name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}} --**
    gear.COR_WS1_Cape = {name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}} --*
    gear.COR_WS2_Cape = {name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}} --*
    gear.COR_WS3_Cape = {name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}} --*



sets.precast.JA['Snake Eye'] = {legs="Lanun Trews +3"}
sets.precast.JA['Wild Card'] = {feet="Lanun Bottes +3"}
sets.precast.JA['Random Deal'] = {body="Lanun Frac +3"}

sets.precast.CorsairRoll = {
    head="Lanun Tricorne +3",
    body="Malignance Tabard", --9/9
    hands="Chasseur's Gants +3",
    legs="Desultor Tassets",
    feet="Malignance Boots", --4/0
    neck="Regal Necklace",
    ear1="Odnowa Earring +1", --3/5
    ear2="Etiolation Earring", --0/3
    ring1="Gelatinous Ring +1", --7/(-1)
    ring2="Defending Ring", --10/10
    back=gear.COR_SNP_Cape,
    waist="Plat. Mog. Belt", --3/3
    }

sets.precast.CorsairRoll.Duration = {main={name="Rostam", bag="wardrobe"}, range="Compensator"}
sets.precast.CorsairRoll.LowerDelay = {back="Gunslinger's Cape"}
sets.precast.CorsairRoll["Caster's Roll"] = set_combine(sets.precast.CorsairRoll, {legs="Chas. Culottes +3"})
sets.precast.CorsairRoll["Courser's Roll"] = set_combine(sets.precast.CorsairRoll, {feet="Chass. Bottes +3"})
sets.precast.CorsairRoll["Blitzer's Roll"] = set_combine(sets.precast.CorsairRoll, {head="Chass. Tricorne +3"})
sets.precast.CorsairRoll["Tactician's Roll"] = set_combine(sets.precast.CorsairRoll, {body="Chasseur's Frac +3"})
sets.precast.CorsairRoll["Allies' Roll"] = set_combine(sets.precast.CorsairRoll, {hands="Chasseur's Gants +3"})

sets.precast.LuzafRing = {ring1="Luzaf's Ring"}
sets.precast.FoldDoubleBust = {hands="Lanun Gants +3"}

sets.precast.Waltz = {
    body="Passion Jacket",
    ring1="Asklepian Ring",
    waist="Gishdubar Sash",
    }

sets.precast.Waltz['Healing Waltz'] = {}

sets.precast.FC = {
    head="Carmine Mask +1", --14
    body=gear.Taeon_FC_body, --9
    hands="Leyline Gloves", --8
    legs="Rawhide Trousers", --5
    feet="Carmine Greaves +1", --8
    neck="Orunmila's Torque", --5
    ear1="Loquacious Earring", --2
    ear2="Enchntr. Earring +1", --2
    ring1="Weather. Ring +1", --6(4)
    ring2="Kishar Ring", --4
    }

sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {
    body="Passion Jacket",
    ring1="Lebeche Ring",
    })

-- (10% Snapshot from JP Gifts)
sets.precast.RA = {
    ammo=gear.RAbullet,
    head="Chass. Tricorne +3", --0/16
    body="Oshosi Vest +1", --14/0
    hands="Carmine Fin. Ga. +1", --8/11
    legs=gear.Adhemar_D_legs, --10/13
    feet="Meg. Jam. +2", --10/0
    neck="Comm. Charm +2", --4/0
    ring1="Crepuscular Ring", --3/0
    back=gear.COR_SNP_Cape, --10/0
    waist="Impulse Belt", --3/0
    } --62/38

sets.precast.RA.Flurry1 = set_combine(sets.precast.RA, {
    body="Laksa. Frac +3", --0/20
    waist="Yemaya Belt", --0/5
    }) --45/63

sets.precast.RA.Flurry2 = set_combine(sets.precast.RA.Flurry1, {
    feet="Pursuer's Gaiters", --0/10
    }) --35/73


------------------------------------------------------------------------------------------------
------------------------------------- Weapon Skill Sets ----------------------------------------
------------------------------------------------------------------------------------------------

sets.precast.WS = {
    ammo=gear.WSbullet,
    head="Lanun Tricorne +3",
    body="Laksa. Frac +3",
    hands="Chasseur's Gants +3",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",
    neck="Fotia Gorget",
    ear1="Moonshade Earring",
    ear2="Ishvara Earring",
    ring1="Dingir Ring",
    ring2="Cornelia's Ring",
    back=gear.COR_WS3_Cape,
    waist="Fotia Belt",
    }

sets.HighBuffMelee = {
    --body="Ikenga's Vest",
    ring1="Sroda Ring",
    }

sets.HighBuffRanged = {
    body="Ikenga's Vest",
    legs="Ikenga's Trousers",
    ring1="Sroda Ring",
    }

sets.precast.WS.PDL = set_combine(sets.precast.WS, sets.HighBuffRanged)

sets.precast.WS['Last Stand'] = sets.precast.WS
sets.precast.WS['Last Stand'].HighBuff = set_combine(sets.precast.WS['Last Stand'], sets.HighBuffRanged)

sets.precast.WS['Wildfire'] = {
    ammo=gear.MAbullet,
    head=gear.Herc_MAB_head,
    body="Lanun Frac +3",
    hands="Chasseur's Gants +3",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",
    neck=gear.JSE_Neck,
    ear1="Crematio Earring",
    ear2="Friomisi Earring",
    ring1="Dingir Ring",
    ring2="Cornelia's Ring",
    back=gear.COR_WS1_Cape,
    waist="Skrymir Cord +1",
    }

sets.precast.WS['Hot Shot'] = sets.precast.WS['Wildfire']

sets.precast.WS['Leaden Salute'] = set_combine(sets.precast.WS['Wildfire'], {
    head="Pixie Hairpin +1",
    ear1="Moonshade Earring",
    ring1="Archon Ring",
    })

sets.precast.WS['Evisceration'] = {
    head="Blistering Sallet +1",
    body="Meg. Cuirie +2",
    hands=gear.Adhemar_B_hands,
    legs="Zoar Subligar +1",
    feet=gear.Adhemar_B_feet,
    neck="Fotia Gorget",
    ear1="Moonshade Earring",
    ear2="Odr Earring",
    ring1="Regal Ring",
    ring2="Ilabrat Ring",
    back=gear.COR_TP_Cape,
    waist="Fotia Belt",
    }

sets.precast.WS['Evisceration'].HighBuff = set_combine(sets.precast.WS['Evisceration'], sets.HighBuffMelee)

sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
    head="Nyame Helm",
    body="Nyame Mail",
    neck="Rep. Plat. Medal",
    ring1="Epaminondas's Ring",
    ring2="Cornelia's Ring",
    back=gear.COR_WS2_Cape,
    waist="Sailfi Belt +1",
    })

sets.precast.WS['Savage Blade'].HighBuff = set_combine(sets.precast.WS['Savage Blade'], sets.HighBuffMelee)

sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS['Swift Blade'], {
    hands="Meg. Gloves +2",
    ear1="Moonshade Earring",
    ear2="Telos Earring",
    ring2="Rufescent Ring",
    }) --MND

sets.precast.WS['Requiescat'].HighBuff = set_combine(sets.precast.WS['Requiescat'], sets.HighBuffMelee)

sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS['Wildfire'], {
    ammo=gear.QDbullet,
    ear1="Moonshade Earring",
    })

sets.precast.WS['Circle Blade'] = sets.precast.WS['Savage Blade']
sets.precast.WS['Circle Blade'].HighBuff = set_combine(sets.precast.WS['Circle Blade'], sets.HighBuffMelee)

sets.precast.WS['Burning Blade'] = set_combine(sets.precast.WS['Wildfire'], {
    ammo=gear.QDbullet,
    })

------------------------------------------------------------------------------------------------
---------------------------------------- Midcast Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.midcast.FastRecast = sets.precast.FC

sets.midcast.SpellInterrupt = {
    body=gear.Taeon_Phalanx_body, --10
    hands="Rawhide Gloves", --15
    legs="Carmine Cuisses +1", --20
    feet=gear.Taeon_Phalanx_feet, --10
    neck="Loricate Torque +1", --5
    ear1="Halasz Earring", --5
    ear2="Magnetic Earring", --8
    ring2="Evanescence Ring", --5
    waist="Rumination Sash", --10
    }

sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

sets.midcast.CorsairShot = {
    ammo=gear.QDbullet,
    head=gear.Herc_MAB_head,
    body="Lanun Frac +3",
    hands="Carmine Fin. Ga. +1",
    legs="Nyame Flanchard",
    feet=gear.Empy_Feet,
    neck="Baetyl Pendant",
    ear1="Crematio Earring",
    ear2="Friomisi Earring",
    ring1="Dingir Ring",
    ring2={name="Fenrir Ring +1", bag="wardrobe6"},
    back=gear.COR_WS1_Cape,
    waist="Skrymir Cord +1",
    }

sets.midcast.CorsairShot.STP = {
    ammo=gear.QDbullet,
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Chas. Culottes +3",
    feet="Chass. Bottes +3",
    neck="Iskur Gorget",
    ear1="Dedition Earring",
    ear2="Telos Earring",
    ring1="Crepuscular Ring",
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    back=gear.COR_RA_Cape,
    waist="Kentarch Belt +1",
    }

sets.midcast.CorsairShot['Light Shot'] = {
    ammo=gear.RAccbullet,
    head="Laksa. Tricorne +3",
    body="Malignance Tabard",
    hands="Chasseur's Gants +3",
    legs="Chas. Culottes +3",
    feet="Laksa. Bottes +3",
    neck="Comm. Charm +2",
    ear1="Crep. Earring",
    ear2="Digni. Earring",
    ring1="Crepuscular Ring",
    ring2="Weather. Ring +1",
    back=gear.COR_WS1_Cape,
    waist="K. Kachina Belt +1",
    }

sets.midcast.CorsairShot['Dark Shot'] = sets.midcast.CorsairShot['Light Shot']
sets.midcast.CorsairShot.Enhance = {body="Mirke Wardecors", feet="Chass. Bottes +3"}

-- Ranged gear
sets.midcast.RA = {
    ammo=gear.RAbullet,
    head="Ikenga's Hat",
    body="Ikenga's Vest",
    hands="Malignance Gloves",
    legs="Chas. Culottes +3",
    feet="Malignance Boots",
    neck="Iskur Gorget",
    ear1="Crep. Earring",
    ear2="Telos Earring",
    ring1="Crepuscular Ring",
    ring2="Ilabrat Ring",
    back=gear.COR_RA_Cape,
    waist="Yemaya Belt",
    }

sets.midcast.RA.Acc = set_combine(sets.midcast.RA, {
    ammo=gear.RAccbullet,
    ear1="Beyla Earring",
    ring2="Hajduk Ring +1",
    })

sets.midcast.RA.HighAcc = set_combine(sets.midcast.RA.Acc, {
    legs="Laksa. Trews +3",
    ring1="Regal Ring",
    waist="K. Kachina Belt +1",
    })

sets.midcast.RA.Critical = set_combine(sets.midcast.RA, {
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Chasseur's Gants +3",
    --legs="Darraigner's Brais",
    feet="Osh. Leggings +1",
    ring1="Dingir Ring",
    ring2="Begrudging Ring",
    waist="K. Kachina Belt +1",
    })

sets.midcast.RA.STP = set_combine(sets.midcast.RA, {
    ear1="Dedition Earring",
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    })

sets.TripleShot = {
    head="Oshosi Mask +1", --5
    body="Chasseur's Frac +3", --13
    hands="Lanun Gants +3",
    legs="Osh. Trousers +1", --6
    feet="Osh. Leggings +1", --3
    } --27

sets.TripleShotCritical = {
    head="Meghanada Visor +2",
    body="Nisroch Jerkin",
    legs="Osh. Trousers +1",
    feet="Ikenga's Clogs",
    waist="Tellen Belt",
    }

sets.TrueShot = {
    body="Nisroch Jerkin",
    legs="Osh. Trousers +1",
    feet="Ikenga's Clogs",
    waist="Tellen Belt",
    }

sets.EnmityDown = {
    hands="Ikenga's Gloves",
    legs="Ikenga's Trousers",
    feet="Ikenga's Clogs",
    ear1="Beyla Earring",
    --waist="Elanid Belt",
    }


------------------------------------------------------------------------------------------------
----------------------------------------- Idle Sets --------------------------------------------
------------------------------------------------------------------------------------------------

sets.resting = {}

sets.idle = {
    ammo=gear.RAbullet,
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Raetic Bangles +1",
    legs="Chas. Culottes +3",
    feet="Nyame Sollerets",
    neck="Bathy Choker +1",
    ear1="Sanare Earring",
    ear2="Eabani Earring",
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    back=gear.COR_SNP_Cape,
    waist="Plat. Mog. Belt",
    }

sets.idle.DT = set_combine(sets.idle, {
    head="Nyame Helm", --7/7
    body="Nyame Mail", --9/9
    hands="Raetic Bangles +1",
    legs="Chas. Culottes +3", --12/12
    feet="Nyame Sollerets", --7/7,
    neck="Warder's Charm +1",
    ring2="Defending Ring", --10/10
    back="Moonlight Cape", --6/6
    waist="Plat. Mog. Belt", --3/3
    })

sets.idle.Town = set_combine(sets.idle, {
    ammo=gear.MAbullet,
    head="Lanun Tricorne +3",
    body="Oshosi Vest +1",
    hands="Chasseur's Gants +3",
    legs="Chas. Culottes +3",
    feet="Lanun Bottes +3",
    neck="Comm. Charm +2",
    ear1="Crep. Earring",
    ear2="Telos Earring",
    waist="Skrymir Cord +1",
    })


------------------------------------------------------------------------------------------------
---------------------------------------- Defense Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.defense.PDT = sets.idle.DT

sets.defense.MDT = sets.idle.DT

sets.Kiting = {legs="Carmine Cuisses +1"}


------------------------------------------------------------------------------------------------
---------------------------------------- Engaged Sets ------------------------------------------
------------------------------------------------------------------------------------------------

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion

sets.engaged = {
    ammo=gear.RAbullet,
    head=gear.Adhemar_B_head,
    body=gear.Adhemar_B_body,
    hands=gear.Adhemar_B_hands,
    legs="Samnuha Tights",
    feet=gear.Herc_TA_feet,
    neck="Iskur Gorget",
    ear1="Cessance Earring",
    ear2="Brutal Earring",
    ring1="Hetairoi Ring",
    ring2="Epona's Ring",
    back=gear.COR_TP_Cape,
    waist="Windbuffet Belt +1",
    }

sets.engaged.LowAcc = set_combine(sets.engaged, {
    head="Dampening Tam",
    hands=gear.Adhemar_A_hands,
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    neck="Combatant's Torque",
    })

sets.engaged.MidAcc = set_combine(sets.engaged.LowAcc, {
    ear2="Telos Earring",
    ring1="Regal Ring",
    ring2="Ilabrat Ring",
    waist="Kentarch Belt +1",
    })

sets.engaged.HighAcc = set_combine(sets.engaged.MidAcc, {
    head="Carmine Mask +1",
    hands="Gazu Bracelets +1",
    ear1="Mache Earring +1",
    ear2="Odr Earring",
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    waist="Olseni Belt",
    })

sets.engaged.STP = set_combine(sets.engaged, {
    head=gear.Herc_STP_head,
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    })

-- * DNC Subjob DW Trait: +15%
-- * NIN Subjob DW Trait: +25%

-- No Magic Haste (74% DW to cap)
sets.engaged.DW = {
    ammo=gear.RAbullet,
    head=gear.Adhemar_B_head,
    body=gear.Adhemar_B_body, --6
    hands="Floral Gauntlets", --5
    legs="Carmine Cuisses +1", --6
    feet=gear.Taeon_DW_feet, --9
    neck="Iskur Gorget",
    ear1="Suppanomimi", --5
    ear2="Brutal Earring",
    ring1="Hetairoi Ring",
    ring2="Epona's Ring",
    back=gear.COR_DW_Cape, --10
    waist="Reiki Yotai", --7
  } -- 48%

sets.engaged.DW.LowAcc = set_combine(sets.engaged.DW, {
    head="Dampening Tam",
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    neck="Combatant's Torque",
    })

sets.engaged.DW.MidAcc = set_combine(sets.engaged.DW.LowAcc, {
    hands=gear.Adhemar_A_hands,
    ear1="Crep. Earring",
    ear2="Telos Earring",
    ring1="Regal Ring",
    ring2="Ilabrat Ring",
    waist="Kentarch Belt +1",
    })

sets.engaged.DW.HighAcc = set_combine(sets.engaged.DW.MidAcc, {
    head="Carmine Mask +1",
    hands="Gazu Bracelets +1",
    ear1="Mache Earring +1",
    ear2="Odr Earring",
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    waist="Olseni Belt",
    })

sets.engaged.DW.STP = set_combine(sets.engaged.DW, {
    head=gear.Herc_STP_head,
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    })

-- 15% Magic Haste (67% DW to cap)
sets.engaged.DW.LowHaste = {
    ammo=gear.RAbullet,
    head=gear.Adhemar_B_head,
    body=gear.Adhemar_B_body, --6
    hands="Floral Gauntlets", --5
    legs="Carmine Cuisses +1", --6
    feet=gear.Taeon_DW_feet, --9
    neck="Iskur Gorget",
    ear1="Suppanomimi", --5
    ear2="Eabani Earring", --4
    ring1="Hetairoi Ring",
    ring2="Epona's Ring",
    back=gear.COR_TP_Cape,
    waist="Reiki Yotai", --7
    } -- 42%

sets.engaged.DW.LowAcc.LowHaste = set_combine(sets.engaged.DW.LowHaste, {
    head="Dampening Tam",
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    neck="Combatant's Torque",
    })

sets.engaged.DW.MidAcc.LowHaste = set_combine(sets.engaged.DW.LowAcc.LowHaste, {
    hands=gear.Adhemar_A_hands,
    ear1="Crep. Earring",
    ear2="Telos Earring",
    ring1="Regal Ring",
    ring2="Ilabrat Ring",
    waist="Kentarch Belt +1",
    })

sets.engaged.DW.HighAcc.LowHaste = set_combine(sets.engaged.DW.MidAcc.LowHaste, {
    head="Carmine Mask +1",
    hands="Gazu Bracelets +1",
    ear1="Mache Earring +1",
    ear2="Odr Earring",
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    waist="Olseni Belt",
    })

sets.engaged.DW.STP.LowHaste = set_combine(sets.engaged.DW.LowHaste, {
    head=gear.Herc_STP_head,
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    })

-- 30% Magic Haste (56% DW to cap)
sets.engaged.DW.MidHaste = {
    ammo=gear.RAbullet,
    head=gear.Adhemar_B_head,
    body=gear.Adhemar_B_body, --6
    hands=gear.Adhemar_B_hands,
    legs="Samnuha Tights",
    feet=gear.Taeon_DW_feet, --9
    neck="Iskur Gorget",
    ear1="Suppanomimi", --5
    ear2="Eabani Earring", --4
    ring1="Hetairoi Ring",
    ring2="Epona's Ring",
    back=gear.COR_TP_Cape,
    waist="Reiki Yotai", --7
    } -- 31%

sets.engaged.DW.LowAcc.MidHaste = set_combine(sets.engaged.DW.MidHaste, {
    head="Dampening Tam",
    hands=gear.Adhemar_A_hands,
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    neck="Combatant's Torque",
    })

sets.engaged.DW.MidAcc.MidHaste = set_combine(sets.engaged.DW.LowAcc.MidHaste, {
    legs="Meg. Chausses +2",
    ear1="Crep. Earring",
    ear2="Telos Earring",
    ring1="Regal Ring",
    ring2="Ilabrat Ring",
    waist="Kentarch Belt +1",
    })

sets.engaged.DW.HighAcc.MidHaste = set_combine(sets.engaged.DW.MidAcc.MidHaste, {
    head="Carmine Mask +1",
    hands="Gazu Bracelets +1",
    legs="Carmine Cuisses +1",
    ear1="Mache Earring +1",
    ear2="Odr Earring",
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    waist="Olseni Belt",
    })

sets.engaged.DW.STP.MidHaste = set_combine(sets.engaged.DW.MidHaste, {
    head=gear.Herc_STP_head,
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    })

-- 35% Magic Haste (51% DW to cap)
sets.engaged.DW.HighHaste = {
    ammo=gear.RAbullet,
    head=gear.Adhemar_B_head,
    body=gear.Adhemar_B_body, --6
    hands=gear.Adhemar_B_hands,
    legs="Samnuha Tights",
    feet=gear.Herc_TA_feet,
    neck="Iskur Gorget",
    ear1="Suppanomimi", --5
    ear2="Eabani Earring", --4
    ring1="Hetairoi Ring",
    ring2="Epona's Ring",
    back=gear.COR_TP_Cape,
    waist="Reiki Yotai", --7
    } -- 27%

sets.engaged.DW.LowAcc.HighHaste = set_combine(sets.engaged.DW.HighHaste, {
    head="Dampening Tam",
    hands=gear.Adhemar_A_hands,
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    neck="Combatant's Torque",
    })

sets.engaged.DW.MidAcc.HighHaste = set_combine(sets.engaged.DW.LowAcc.HighHaste, {
    legs="Meg. Chausses +2",
    ear1="Crep. Earring",
    ear2="Telos Earring",
    ring1="Regal Ring",
    ring2="Ilabrat Ring",
    waist="Kentarch Belt +1",
    })

sets.engaged.DW.HighAcc.HighHaste = set_combine(sets.engaged.DW.MidAcc.HighHaste, {
    head="Carmine Mask +1",
    hands="Gazu Bracelets +1",
    legs="Carmine Cuisses +1",
    ear1="Mache Earring +1",
    ear2="Odr Earring",
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    waist="Olseni Belt",
    })

sets.engaged.DW.STP.HighHaste = set_combine(sets.engaged.DW.HighHaste, {
    head=gear.Herc_STP_head,
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    })

-- 45% Magic Haste (36% DW to cap)
sets.engaged.DW.MaxHaste = {
    ammo=gear.RAbullet,
    head=gear.Adhemar_B_head,
    body=gear.Adhemar_B_body, --6
    hands=gear.Adhemar_B_hands,
    legs="Samnuha Tights",
    feet=gear.Herc_TA_feet,
    neck="Iskur Gorget",
    ear1="Suppanomimi", --5
    ear2="Telos Earring",
    ring1="Hetairoi Ring",
    ring2="Epona's Ring",
    back=gear.COR_TP_Cape,
    waist="Windbuffet Belt +1",
    } -- 11%

sets.engaged.DW.LowAcc.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, {
    head="Dampening Tam",
    hands=gear.Adhemar_A_hands,
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    waist="Kentarch Belt +1",
    })

sets.engaged.DW.MidAcc.MaxHaste = set_combine(sets.engaged.DW.LowAcc.MaxHaste, {
    legs="Meg. Chausses +2",
    neck="Combatant's Torque",
    ear1="Crep. Earring",
    ring1="Regal Ring",
    ring2="Ilabrat Ring",
    })

sets.engaged.DW.HighAcc.MaxHaste = set_combine(sets.engaged.DW.MidAcc.MaxHaste, {
    head="Carmine Mask +1",
    hands="Gazu Bracelets +1",
    legs="Carmine Cuisses +1",
    ear1="Mache Earring +1",
    ear2="Odr Earring",
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    waist="Olseni Belt",
    })

sets.engaged.DW.STP.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, {
    head=gear.Herc_STP_head,
    ring1={name="Chirich Ring +1", bag="wardrobe5"},
    ring2={name="Chirich Ring +1", bag="wardrobe6"},
    })

sets.engaged.DW.MaxHastePlus = set_combine(sets.engaged.DW.MaxHaste, {back=gear.COR_DW_Cape})
sets.engaged.DW.LowAcc.MaxHastePlus = set_combine(sets.engaged.DW.LowAcc.MaxHaste, {back=gear.COR_DW_Cape})
sets.engaged.DW.MidAcc.MaxHastePlus = set_combine(sets.engaged.DW.MidAcc.MaxHaste, {back=gear.COR_DW_Cape})
sets.engaged.DW.HighAcc.MaxHastePlus = set_combine(sets.engaged.DW.HighAcc.MaxHaste, {back=gear.COR_DW_Cape})
sets.engaged.DW.STP.MaxHastePlus = set_combine(sets.engaged.DW.STP.MaxHaste, {back=gear.COR_DW_Cape})


------------------------------------------------------------------------------------------------
---------------------------------------- Hybrid Sets -------------------------------------------
------------------------------------------------------------------------------------------------

sets.engaged.MalignanceHybrid = {
    head="Malignance Chapeau", --6/6
    body="Malignance Tabard", --9/9
    hands="Malignance Gloves", --5/5
    legs="Chas. Culottes +3", --12/12
    --feet="Malignance Boots", --4/4
    }

sets.engaged.NyameHybrid = {
    head="Nyame Helm", --7/7
    body="Nyame Mail", --9/9
    hands="Nyame Gauntlets",  --7/7
    legs="Chas. Culottes +3", --12/12
    feet="Nyame Sollerets", --7/7
    }

sets.engaged.Malignance = set_combine(sets.engaged, sets.engaged.MalignanceHybrid)
sets.engaged.LowAcc.Malignance = set_combine(sets.engaged.LowAcc, sets.engaged.MalignanceHybrid)
sets.engaged.MidAcc.Malignance = set_combine(sets.engaged.MidAcc, sets.engaged.MalignanceHybrid)
sets.engaged.HighAcc.Malignance = set_combine(sets.engaged.HighAcc, sets.engaged.MalignanceHybrid)
sets.engaged.STP.Malignance = set_combine(sets.engaged.STP, sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance = set_combine(sets.engaged.DW, sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance = set_combine(sets.engaged.DW.LowAcc, sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance = set_combine(sets.engaged.DW.MidAcc, sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance = set_combine(sets.engaged.DW.HighAcc, sets.engaged.MalignanceHybrid)
sets.engaged.DW.STP.Malignance = set_combine(sets.engaged.DW.STP, sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance.LowHaste = set_combine(sets.engaged.DW.LowHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance.LowHaste = set_combine(sets.engaged.DW.LowAcc.LowHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance.LowHaste = set_combine(sets.engaged.DW.MidAcc.LowHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance.LowHaste = set_combine(sets.engaged.DW.HighAcc.LowHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.STP.Malignance.LowHaste = set_combine(sets.engaged.DW.STP.LowHaste, sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance.MidHaste = set_combine(sets.engaged.DW.MidHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance.MidHaste = set_combine(sets.engaged.DW.LowAcc.MidHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance.MidHaste = set_combine(sets.engaged.DW.MidAcc.MidHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance.MidHaste = set_combine(sets.engaged.DW.HighAcc.MidHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.STP.Malignance.MidHaste = set_combine(sets.engaged.DW.STP.MidHaste, sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance.HighHaste = set_combine(sets.engaged.DW.HighHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance.HighHaste = set_combine(sets.engaged.DW.LowAcc.HighHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance.HighHaste = set_combine(sets.engaged.DW.MidAcc.HighHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance.HighHaste = set_combine(sets.engaged.DW.HighAcc.HighHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.STP.Malignance.HighHaste = set_combine(sets.engaged.DW.HighHaste.STP, sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance.MaxHaste = set_combine(sets.engaged.DW.LowAcc.MaxHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance.MaxHaste = set_combine(sets.engaged.DW.MidAcc.MaxHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance.MaxHaste = set_combine(sets.engaged.DW.HighAcc.MaxHaste, sets.engaged.MalignanceHybrid)
sets.engaged.DW.STP.Malignance.MaxHaste = set_combine(sets.engaged.DW.STP.MaxHaste, sets.engaged.MalignanceHybrid)

sets.engaged.DW.Malignance.MaxHastePlus = set_combine(sets.engaged.DW.MaxHastePlus, sets.engaged.MalignanceHybrid)
sets.engaged.DW.LowAcc.Malignance.MaxHastePlus = set_combine(sets.engaged.DW.LowAcc.MaxHastePlus, sets.engaged.MalignanceHybrid)
sets.engaged.DW.MidAcc.Malignance.MaxHastePlus = set_combine(sets.engaged.DW.MidAcc.MaxHastePlus, sets.engaged.MalignanceHybrid)
sets.engaged.DW.HighAcc.Malignance.MaxHastePlus = set_combine(sets.engaged.DW.HighAcc.MaxHastePlus, sets.engaged.MalignanceHybrid)
sets.engaged.DW.STP.Malignance.MaxHastePlus = set_combine(sets.engaged.DW.STP.MaxHastePlus, sets.engaged.MalignanceHybrid)

sets.engaged.Nyame = set_combine(sets.engaged, sets.engaged.NyameHybrid)
sets.engaged.LowAcc.Nyame = set_combine(sets.engaged.LowAcc, sets.engaged.NyameHybrid)
sets.engaged.MidAcc.Nyame = set_combine(sets.engaged.MidAcc, sets.engaged.NyameHybrid)
sets.engaged.HighAcc.Nyame = set_combine(sets.engaged.HighAcc, sets.engaged.NyameHybrid)
sets.engaged.STP.Nyame = set_combine(sets.engaged.STP, sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame = set_combine(sets.engaged.DW, sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame = set_combine(sets.engaged.DW.LowAcc, sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame = set_combine(sets.engaged.DW.MidAcc, sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame = set_combine(sets.engaged.DW.HighAcc, sets.engaged.NyameHybrid)
sets.engaged.DW.STP.Nyame = set_combine(sets.engaged.DW.STP, sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame.LowHaste = set_combine(sets.engaged.DW.LowHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame.LowHaste = set_combine(sets.engaged.DW.LowAcc.LowHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame.LowHaste = set_combine(sets.engaged.DW.MidAcc.LowHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame.LowHaste = set_combine(sets.engaged.DW.HighAcc.LowHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.STP.Nyame.LowHaste = set_combine(sets.engaged.DW.STP.LowHaste, sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame.MidHaste = set_combine(sets.engaged.DW.MidHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame.MidHaste = set_combine(sets.engaged.DW.LowAcc.MidHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame.MidHaste = set_combine(sets.engaged.DW.MidAcc.MidHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame.MidHaste = set_combine(sets.engaged.DW.HighAcc.MidHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.STP.Nyame.MidHaste = set_combine(sets.engaged.DW.STP.MidHaste, sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame.HighHaste = set_combine(sets.engaged.DW.HighHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame.HighHaste = set_combine(sets.engaged.DW.LowAcc.HighHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame.HighHaste = set_combine(sets.engaged.DW.MidAcc.HighHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame.HighHaste = set_combine(sets.engaged.DW.HighAcc.HighHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.STP.Nyame.HighHaste = set_combine(sets.engaged.DW.HighHaste.STP, sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame.MaxHaste = set_combine(sets.engaged.DW.LowAcc.MaxHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame.MaxHaste = set_combine(sets.engaged.DW.MidAcc.MaxHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame.MaxHaste = set_combine(sets.engaged.DW.HighAcc.MaxHaste, sets.engaged.NyameHybrid)
sets.engaged.DW.STP.Nyame.MaxHaste = set_combine(sets.engaged.DW.STP.MaxHaste, sets.engaged.NyameHybrid)

sets.engaged.DW.Nyame.MaxHastePlus = set_combine(sets.engaged.DW.MaxHastePlus, sets.engaged.NyameHybrid)
sets.engaged.DW.LowAcc.Nyame.MaxHastePlus = set_combine(sets.engaged.DW.LowAcc.MaxHastePlus, sets.engaged.NyameHybrid)
sets.engaged.DW.MidAcc.Nyame.MaxHastePlus = set_combine(sets.engaged.DW.MidAcc.MaxHastePlus, sets.engaged.NyameHybrid)
sets.engaged.DW.HighAcc.Nyame.MaxHastePlus = set_combine(sets.engaged.DW.HighAcc.MaxHastePlus, sets.engaged.NyameHybrid)
sets.engaged.DW.STP.Nyame.MaxHastePlus = set_combine(sets.engaged.DW.STP.MaxHastePlus, sets.engaged.NyameHybrid)


------------------------------------------------------------------------------------------------
---------------------------------------- Special Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.buff.Doom = {
    neck="Nicander's Necklace", --20
    ring1={name="Eshmun's Ring", bag="wardrobe5"}, --20
    ring2={name="Eshmun's Ring", bag="wardrobe6"}, --20
    waist="Gishdubar Sash", --10
    }

sets.FullTP = {ear1="Crematio Earring"}
sets.Obi = {waist="Hachirin-no-Obi"}
-- sets.CP = {back="Mecisto. Mantle"}
--sets.Reive = {neck="Ygnas's Resolve +1"}

sets.TreasureHunter = {head="Volte Cap", hands=gear.Herc_TH_hands, feet="Volte Boots", waist="Chaac Belt"}

sets.DeathPenalty = {ranged="Death Penalty"}
sets.Armageddon= {ranged="Armageddon"}
sets.Fomalhaut = {ranged="Fomalhaut"}
sets.Ataktos = {ranged="Ataktos"}

sets.Piercing = {main={name="Rostam", bag="wardrobe2"}, sub="Gleti's Knife"}
sets.Slashing = {main="Naegling", sub="Gleti's Knife"}
sets.Ranged = {main="Lanun Knife", sub="Kustawi +1"}
sets.Tauret = {main="Tauret", sub="Gleti's Knife"}

sets.DefaultShield = {sub="Nusku Shield"}