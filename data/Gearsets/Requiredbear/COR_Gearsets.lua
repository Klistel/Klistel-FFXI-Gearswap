    ------------------------------------------------------------------------------------------------
    ---------------------------------------- AugGear ------------------------------------------
    ------------------------------------------------------------------------------------------------ 

    -- Adhemar
    gear.Adhemar_A_head = {name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}}
    gear.Adhemar_B_body = {name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}}
    gear.Adhemar_A_hands = {name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}}
    gear.Adhemar_D_legs = {name="Adhemar Kecks +1", augments={'AGI+12','"Rapid Shot"+13','Enmity-6',}}



    -- Herculean

    --gear.Herc_TA_feet = {name="Herculean Boots", augments={'Accuracy+21 Attack+21','"Triple Atk."+4','STR+9','Accuracy+15',}}

    --gear.Herc_MAB_head = {name="Herculean Helm", augments={'AGI+6','"Mag.Atk.Bns."+25','Weapon skill damage +2%','Mag. Acc.+18 "Mag.Atk.Bns."+18',}}


    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Bullet ------------------------------------------
    ------------------------------------------------------------------------------------------------ 
    --gear.RAbullet = "Chrono Bullet"
    --gear.RAccbullet = "Devastating Bullet"
    --gear.WSbullet = "Chrono Bullet"
    --gear.MAbullet = "Living Bullet"
    --gear.QDbullet = "Living Bullet"
    gear.RAbullet = "Eminent Bullet"
    gear.RAccbullet = "Eminent Bullet"
    gear.WSbullet = "Eminent Bullet"
    gear.MAbullet = "Eminent Bullet"
    gear.QDbullet = "Animikii Bullet"
    options.ammo_warning_limit = 10




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

    gear.Empy_Head="Chass. Tricorne +2"
    gear.Empy_Body="Chasseur's Frac +2"
    gear.Empy_Hands="Chasseur's Gants +2"
    gear.Empy_Legs="Chas. Culottes +2"
    gear.Empy_Feet="Chass. Bottes +2"

    gear.JSE_Neck="Comm. Charm +2"

    gear.COR_DW_Cape = { name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10',}} --**
    --gear.COR_RA_Cape = {name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}} --*
    --gear.COR_SNP_Cape = {name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Snapshot"+10',}} --*
    --gear.COR_TP_Cape = {name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}} --**
    gear.COR_TP_Cape = { name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+3',}} --**
    --gear.COR_WS1_Cape = {name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}} --*
    gear.COR_WS2_Cape = { name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}} --*
    --gear.COR_WS3_Cape = {name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}} --*
    --gear.COR_WS4_Cape = {name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}} --*


    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Precast Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

        sets.precast.JA['Snake Eye'] = {
            legs=gear.Relic_Legs
        }
        sets.precast.JA['Wild Card'] = {
            feet=gear.Relic_Feet
        }
        sets.precast.JA['Random Deal'] = {
            body=gear.Relic_Body
        }

        sets.precast.CorsairRoll = {
            range="Compensator",
            head=gear.Relic_Head,
            hands=gear.Empy_Hand,
            neck="Regal Necklace",
            legs="Desultor Tassets",
        }

        sets.precast.CorsairRoll.Duration = {
        --    main="Rostam", 
            range="Compensator"
        }
        sets.precast.CorsairRoll.LowerDelay = {
        --    back="Gunslinger's Cape"
        }
        sets.precast.CorsairRoll["Caster's Roll"] = set_combine(sets.precast.CorsairRoll,
        {
            legs=gear.Empy_Legs
        })
        sets.precast.CorsairRoll["Courser's Roll"] = set_combine(sets.precast.CorsairRoll,
        {
            feet=gear.Empy_Feet
        })
        sets.precast.CorsairRoll["Blitzer's Roll"] = set_combine(sets.precast.CorsairRoll,
        {
            head=gear.Empy_Head
        })
        sets.precast.CorsairRoll["Tactician's Roll"] = set_combine(sets.precast.CorsairRoll,
        {
           body=gear.Empy_Body
        })
        sets.precast.CorsairRoll["Allies' Roll"] = set_combine(sets.precast.CorsairRoll,
        {
            hands=gear.Empy_Hands
        })

        sets.precast.LuzafRing = {
            ring1="Luzaf's Ring"
        }
        sets.precast.FoldDoubleBust = {
            hands=gear.Relic_Hands
        }

        sets.precast.FC = {
        --    head="Carmine Mask +1", --14
        --    body=gear.Taeon_FC_body, --9
        --    hands="Leyline Gloves", --8
        --    legs="Rawhide Trousers", --5
        --    feet="Carmine Greaves +1", --8
        --    neck="Orunmila's Torque", --5
            ear1="Loquacious Earring", --2
        --    ear2="Enchntr. Earring +1", --2
        --    ring1="Weather. Ring +1", --6(4)
            ring2="Kishar Ring", --4
            }

        sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {
        --    body="Passion Jacket",
        --    ring1="Lebeche Ring",
            })

        -- (10% Snapshot from JP Gifts)
        sets.precast.RA = {
            ammo=gear.RAbullet,
            head=gear.Empy_Head,
            body=gear.AF_Body,
            hands="Carmine Fin. Ga. +1", --8/11
            legs=gear.Adhemar_D_legs,
            feet="Meg. Jam. +1",
            neck=gear.JSE_Neck,
        --    ring1="Crepuscular Ring",
        --    back=gear.COR_SNP_Cape,
            waist="Impulse Belt",
            } --62/38

        sets.precast.RA.Flurry1 = set_combine(sets.precast.RA, {
            body=gear.AF_Body, --0/20
            waist="Yemaya Belt", --0/5
            }) --45/63

        sets.precast.RA.Flurry2 = set_combine(sets.precast.RA.Flurry1, {
        --    feet="Pursuer's Gaiters", --0/10
            }) --35/73


        ------------------------------------------------------------------------------------------------
        ------------------------------------- Weapon Skill Sets ----------------------------------------
        ------------------------------------------------------------------------------------------------

        sets.precast.WS = {
            ammo=gear.WSbullet,
            --head="Lanun Tricorne +3",
            head="Malignance Chapeau",
            body=gear.AF_Body,
            hands=gear.Empy_Hands,
        --    legs="Nyame Flanchard",
            feet=gear.Relic_Feet,
        --    neck="Fotia Gorget",
            ear1="Moonshade Earring",
        --    ear2="Ishvara Earring",
            ring1="Dingir Ring",
        --    ring2="Cornelia's Ring",
            back=gear.COR_WS2_Cape,
        --    waist="Fotia Belt",
            }


        sets.precast.WS['Last Stand'] = sets.precast.WS

        sets.precast.WS['Wildfire'] = {
            ammo=gear.MAbullet,
        --    head=gear.Herc_MAB_head,
            head="Malignance Chapeau",
            body=gear.Relic_Body,
            hands=gear.Empy_Hands,
        --    legs="Nyame Flanchard",
            legs=gear.Empy_Legs,
            feet=gear.Relic_Feet,
            neck=gear.JSE_Neck,
        --    ear1="Crematio Earring",
            ear2="Friomisi Earring",
            ring1="Dingir Ring",
        --    ring2="Cornelia's Ring",
            ring2="Acumen Ring",
        --    back=gear.COR_WS1_Cape,
            back=gear.COR_WS2_Cape,
            waist="Skrymir Cord +1",
            }

        sets.precast.WS['Hot Shot'] = sets.precast.WS['Wildfire']

        sets.precast.WS['Leaden Salute'] = set_combine(sets.precast.WS['Wildfire'], {
            head="Pixie Hairpin +1",
            ear1="Moonshade Earring",
        --    ring1="Archon Ring",
            })

        sets.precast.WS['Evisceration'] = {
        --    head="Blistering Sallet +1",
            body="Meg. Cuirie +1",
            hands=gear.Adhemar_A_hands,
        --    legs="Zoar Subligar +1",  Unity
        --    feet=gear.Adhemar_B_feet,
        --    neck="Fotia Gorget",  Synergy (Sea)
            ear1="Moonshade Earring",
        --    ear2="Odr Earring",  1000 Domain Points
        --    ring1="Regal Ring",   Ou
            ring2="Ilabrat Ring",
        --    back=gear.COR_TP_Cape,
        --    waist="Fotia Belt",   Synergy (Abyssea)
            }


        sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
        --    head="Nyame Helm",    Ody
        --    body="Nyame Mail",    Ody
            neck="Rep. Plat. Medal",
            --ring1="Epaminondas's Ring", Neo Nyzul
            --ring2="Cornelia's Ring",  Voracious Resurgence
            ring1="Rajas Ring",
            ring2="Ilabrat Ring",
            back=gear.COR_WS2_Cape,
            --waist="Sailfi Belt +1",   Unity
            waist="Prosilio Belt +1",
            })


        sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS['Swift Blade'], {
            hands="Meg. Gloves +2",
            ear1="Moonshade Earring",
        --    ear2="Telos Earring",     Warder of Courage
        --    ring2="Rufescent Ring",   Water of Mercy
            }) --MND


        sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS['Wildfire'], {
            ammo=gear.QDbullet,
            ear1="Moonshade Earring",
            })

        sets.precast.WS['Circle Blade'] = sets.precast.WS['Savage Blade']

        sets.precast.WS['Burning Blade'] = set_combine(sets.precast.WS['Wildfire'], {
            ammo=gear.QDbullet,
            })

        ------------------------------------------------------------------------------------------------
        ---------------------------------------- Midcast Sets ------------------------------------------
        ------------------------------------------------------------------------------------------------

        sets.midcast.FastRecast = sets.precast.FC

        sets.midcast.SpellInterrupt = {
        --    body=gear.Taeon_Phalanx_body, --10
        --    hands="Rawhide Gloves", --15
            legs="Carmine Cuisses +1", --20
        --    feet=gear.Taeon_Phalanx_feet, --10
        --   neck="Loricate Torque +1", --5
        --    ear1="Halasz Earring", --5
        --    ear2="Magnetic Earring", --8
        --    ring2="Evanescence Ring", --5
        --    waist="Rumination Sash", --10
            }

        sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

        sets.midcast.CorsairShot = {
            ammo=gear.QDbullet,
        --    head=gear.Herc_MAB_head,
            body=gear.Relic_Body,
            hands="Carmine Fin. Ga. +1",
        --    legs="Nyame Flanchard",
            feet=gear.Relic_Feet,
        --    neck="Baetyl Pendant",
        --    ear1="Crematio Earring",
            ear2="Friomisi Earring",
            ring1="Dingir Ring",
        --    ring2={name="Fenrir Ring +1", bag="wardrobe6"},
        --    back=gear.COR_WS1_Cape,
            waist="Skrymir Cord +1",
            }

        sets.midcast.CorsairShot['Light Shot'] = {
            ammo=gear.QDbullet,
            head=gear.AF_Head,
        --    body="Malignance Tabard",
            hands=gear.Empy_Hands,
            legs=gear.Empy_Legs,
            feet=gear.AF_Feet,
            neck=gear.JSE_Neck,
        --    ear1="Crep. Earring",
        --    ear2="Digni. Earring",        Strophadia (Reisenjima GF)
        --    ring1="Crepuscular Ring",
        --    ring2="Weather. Ring +1",
        --    back=gear.COR_WS1_Cape,
            waist="K. Kachina Belt +1",
            }

        sets.midcast.CorsairShot['Dark Shot'] = sets.midcast.CorsairShot['Light Shot']
        sets.midcast.CorsairShot.Enhance = {
        --    body="Mirke Wardecors", 
            feet=gear.Empy_Feet
        }

        -- Ranged gear
        sets.midcast.RA = {
           ammo=gear.RAbullet,
        --    head="Ikenga's Hat",
            head="Malignance Chapeau",
            body="Meghanada Cuirie +1",
        --    body="Ikenga's Vest",
            hands="Malignance Gloves",
            legs=gear.Empy_Legs,
            feet="Malignance Boots",
            neck="Iskur Gorget",
        --    ear1="Crep. Earring",         Bahamut HTBF
        --    ear2="Telos Earring",         Warder of Courage
        --    ring1="Crepuscular Ring",     Bahamut HTBF
            ring2="Ilabrat Ring",
        --    back=gear.COR_RA_Cape,        Ambu
            waist="Yemaya Belt",
            }

            sets.TripleShot = {
                --head="Oshosi Mask +1", --5
                body=gear.Empy_Body, --13
                hands=gear.Relic_Hands,
                --legs="Osh. Trousers +1", --6
                --feet="Osh. Leggings +1", --3
                } --27

        ------------------------------------------------------------------------------------------------
        ----------------------------------------- Idle Sets --------------------------------------------
        ------------------------------------------------------------------------------------------------

        sets.resting = {}

        sets.idle = {
            ammo=gear.RABullet,
            head=gear.Empy_Head,
            body=gear.Empy_Body,
            hands=gear.Empy_Hands,
            legs="Carmine Cuisses +1",
            feet=gear.Relic_Feet,
            neck="Iskur Gorget",
            waist="Dynamic Belt +1",
            left_ear="Brutal Earring",
            right_ear="Suppanomimi",
            left_ring="Defending Ring",
            right_ring="Meghanada Ring",
            back=gear.COR_DW_Cape,
            }

        sets.idle.DT = set_combine(sets.idle, {
        --    head="Nyame Helm", --7/7
        --    body="Nyame Mail", --9/9
        --    hands="Raetic Bangles +1",
            legs=gear.Empy_Legs, --12/12
        --    feet="Nyame Sollerets", --7/7,
        --    neck="Warder's Charm +1",
            ring2="Defending Ring", --10/10
        --    back="Moonlight Cape", --6/6
        --    waist="Plat. Mog. Belt", --3/3
            })

        ------------------------------------------------------------------------------------------------
        ---------------------------------------- Defense Sets ------------------------------------------
        ------------------------------------------------------------------------------------------------

        sets.defense.PDT = sets.idle.DT

        sets.defense.MDT = sets.idle.DT

        sets.Kiting = {
            legs="Carmine Cuisses +1",
        }


        ------------------------------------------------------------------------------------------------
        ---------------------------------------- Engaged Sets ------------------------------------------
        ------------------------------------------------------------------------------------------------

        -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
        -- sets if more refined versions aren't defined.
        -- If you create a set with both offense and defense modes, the offense mode should be first.
        -- EG: sets.engaged.Dagger.Accuracy.Evasion

        sets.engaged = {
            ammo=gear.RAbullet,
            head=gear.Adhemar_A_head,
            body=gear.Adhemar_B_body,
            hands=gear.Adhemar_A_hands,
            legs="Meg. Chausses +1",
            feet="Meg. Jam. +1",
            neck="Iskur Gorget",
            waist="Dynamic Belt +1",
            left_ear="Brutal Earring",
            right_ear="Suppanomimi",
            left_ring="Petrov Ring",
            right_ring="Epona's Ring",
            back=gear.COR_TP_Cape,
        }

        sets.engaged.LowAcc = set_combine(sets.engaged, {
        --    head="Dampening Tam", Sinister Reign
            hands=gear.Adhemar_A_hands,
            ring1="Chirich Ring +1",
        --    neck="Combatant's Torque",    Synergy
            })


        -- * DNC Subjob DW Trait: +15%
        -- * NIN Subjob DW Trait: +25%

        -- No Magic Haste (74% DW to cap)
        sets.engaged.DW = {
            ammo=gear.RAbullet,
            head=gear.Adhemar_A_head,
            body=gear.Adhemar_B_body,
            hands=gear.Adhemar_A_hands,
            legs=gear.Empy_Legs,
            feet="Malignance Boots",
            neck="Iskur Gorget",
            waist="Windbuffet Belt +1",
            left_ear="Brutal Earring",
            right_ear="Suppanomimi",
            left_ring="Petrov Ring",
            right_ring="Epona's Ring",
            back=gear.COR_TP_Cape,
          } -- 48%

        --[[ -- 15% Magic Haste (67% DW to cap)
        sets.engaged.DW.LowHaste = {
            ammo=gear.RAbullet,
            head=gear.Adhemar_A_head,
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

        -- 30% Magic Haste (56% DW to cap)
        sets.engaged.DW.MidHaste = {
            ammo=gear.RAbullet,
            head=gear.Adhemar_A_head,
            body=gear.Adhemar_B_body, --6
            hands=gear.Adhemar_A_hands,
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

        -- 35% Magic Haste (51% DW to cap)
        sets.engaged.DW.HighHaste = {
            ammo=gear.RAbullet,
            head=gear.Adhemar_A_head,
            body=gear.Adhemar_B_body, --6
            hands=gear.Adhemar_A_hands,
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

        -- 45% Magic Haste (36% DW to cap)
        sets.engaged.DW.MaxHaste = {
            ammo=gear.RAbullet,
            head=gear.Adhemar_A_head,
            body=gear.Adhemar_B_body, --6
            hands=gear.Adhemar_A_hands,
            legs="Samnuha Tights",
            feet=gear.Herc_TA_feet,
            neck="Iskur Gorget",
            ear1="Suppanomimi", --5
            ear2="Telos Earring",
            ring1="Hetairoi Ring",
            ring2="Epona's Ring",
            back=gear.COR_TP_Cape,
            waist="Windbuffet Belt +1",
            } -- 11% ]]
    ------------------------------------------------------------------------------------------------
        ---------------------------------------- Hybrid Sets -------------------------------------------
        ------------------------------------------------------------------------------------------------
        sets.engaged.MalignanceHybrid = {
            head="Malignance Chapeau", --6/6
        --    body="Malignance Tabard", --9/9
            hands="Malignance Gloves", --5/5
            legs=gear.Empy_Legs, --12/12
            feet="Malignance Boots", --4/4
            }

        sets.engaged.NyameHybrid = {
        --    head="Nyame Helm", --7/7
        --    body="Nyame Mail", --9/9
        --    hands="Nyame Gauntlets",  --7/7
        --    legs="Chas. Culottes +3", --12/12
        --    feet="Nyame Sollerets", --7/7
            }

        sets.engaged.Malignance = set_combine(sets.engaged, sets.engaged.MalignanceHybrid)
        sets.engaged.DW.Malignance = set_combine(sets.engaged.DW, sets.engaged.MalignanceHybrid)
        sets.engaged.DW.Malignance.LowHaste = set_combine(sets.engaged.DW.LowHaste, sets.engaged.MalignanceHybrid)
        sets.engaged.DW.Malignance.MidHaste = set_combine(sets.engaged.DW.MidHaste, sets.engaged.MalignanceHybrid)
        sets.engaged.DW.Malignance.HighHaste = set_combine(sets.engaged.DW.HighHaste, sets.engaged.MalignanceHybrid)
        sets.engaged.DW.Malignance.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, sets.engaged.MalignanceHybrid)
        sets.engaged.DW.Malignance.MaxHastePlus = set_combine(sets.engaged.DW.MaxHastePlus, sets.engaged.MalignanceHybrid)
        sets.engaged.Nyame = set_combine(sets.engaged, sets.engaged.NyameHybrid)
        sets.engaged.DW.Nyame = set_combine(sets.engaged.DW, sets.engaged.NyameHybrid)
        sets.engaged.DW.Nyame.LowHaste = set_combine(sets.engaged.DW.LowHaste, sets.engaged.NyameHybrid)
        sets.engaged.DW.Nyame.MidHaste = set_combine(sets.engaged.DW.MidHaste, sets.engaged.NyameHybrid)
        sets.engaged.DW.Nyame.HighHaste = set_combine(sets.engaged.DW.HighHaste, sets.engaged.NyameHybrid)
        sets.engaged.DW.Nyame.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, sets.engaged.NyameHybrid)
        sets.engaged.DW.Nyame.MaxHastePlus = set_combine(sets.engaged.DW.MaxHastePlus, sets.engaged.NyameHybrid)

        ------------------------------------------------------------------------------------------------
        ---------------------------------------- Special Sets ------------------------------------------
        ------------------------------------------------------------------------------------------------


        sets.Molybdosis = {
            ranged="Molybdosis"
            -- ranged="Death Penalty"
        }
        --sets.Armageddon= {
        --    ranged="Armageddon"
        --}
        --sets.Fomalhaut = {
            --ranged="Fomalhaut"
        --}
        sets.Anarchy = {
            ranged="Anarchy"
        }

        sets.Dagger = {
            main="Blurred Knife +1",
            sub="Gleti's Knife",
        }

        sets.Sword = {
            main="Naegling",
            sub="Gleti's Knife",
        }
        sets.Ranged = {
            --main="Lanun Knife",
            --sub="Kustawi +1"
            main="Fettering Blade",
            sub="Blurrerd Knife +1"
        }
        --sets.Tauret = {
        --    main="Tauret",
        --    sub="Gleti's Knife"
        --}

        sets.DefaultShield = {
            sub="Nusku Shield"
        }


