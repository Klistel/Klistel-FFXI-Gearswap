include('Gearsets/'..player.name..'/Globals-AugGear.lua')
    ------------------------------------------------------------------------------------------------
    ---------------------------------------- JSE ---------------------------------------------------
    ------------------------------------------------------------------------------------------------

    gear.AF_Head="Reverence Coronet +1"
    gear.AF_Body="Reverence Surcoat +1"
    gear.AF_Hands="Reverence Gauntlets +1"
    gear.AF_Legs="Reverence Breeches +1"
    gear.AF_Feet="Reverence Leggings +1"

    gear.Relic_Head="Caballarius Coronet +1"
    gear.Relic_Body="Caballarius Surcoat +1"
    gear.Relic_Hands="Caballarius Gauntlets +1"
    gear.Relic_Legs="Caballarius Breeches +1"
    gear.Relic_Feet="Caballarius Leggings +1"

    gear.Empy_Head="Chevalier's Armet +2"
    gear.Empy_Body="Chevalier's Cuirass +2"
    gear.Empy_Hands="Chevalier's Gauntlets +2"
    gear.Empy_Legs="Chevalier's Cuisses +2"
    gear.Empy_Feet="Chevalier's Sabatons +2"


    gear.JSE_Neck="Knight's Bead Necklace +2"

   --------------------------------------
    -- Precast sets
    --------------------------------------

    -- Precast sets to enhance JAs
    sets.precast.JA['Invincible'] = {legs=gear.Relic_Legs}
    sets.precast.JA['Holy Circle'] = {feet=gear.AF_Feet}
    sets.precast.JA['Shield Bash'] = {hands= gear.Relic_Hands}
    sets.precast.JA['Sentinel'] = {feet=gear.Relic_Feet}
    sets.precast.JA['Rampart'] = {head=gear.Relic_Head}
    sets.precast.JA['Fealty'] = {body=gear.Relic_Body}
    sets.precast.JA['Divine Emblem'] = {feet=gear.Empy_Feet}
    sets.precast.JA['Cover'] = {head=gear.AF_Head}

    -- add mnd for Chivalry
    sets.precast.JA['Chivalry'] = {

    }


    -- Waltz set (chr and vit)
    sets.precast.Waltz = {
    }

    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}

    -- Fast cast sets for spells

    sets.precast.FC = {
            head=gear.Carmine_D_Head, --14
            body="", --9
             hands="", --8
             legs="", --5
             feet=gear.Carmine_D_Feet, --8
             neck="Baetyl Pendant", --4
             ear1="Loquacious Earring", --2
         --    ear2="Enchntr. Earring +1", --2
             ring1="Weather. Ring", --6(4)
             ring2="", --4
             back="",

    }

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {
       -- waist="Siegel Sash"
    })


    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        ammo="Aurgelmir Orb +1",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body={ name="Valorous Mail", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+3','Attack+3',}},
    hands="Flam. Manopolas +2",
    legs={ name="Valorous Hose", augments={'Accuracy+23 Attack+23','"Store TP"+1','AGI+7','Attack+11',}},
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Cornelia's Ring",
    right_ring="Epaminondas's Ring",
    back="Null Shawl",
    }

    sets.precast.WS.Acc = {

    }

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, {

    })

    sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {

    })

    sets.precast.WS['Sanguine Blade'] = set_combine(sets.precast.WS,{

    })

    sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS,{

    })

    sets.precast.WS['Atonement'] = set_combine(sets.precast.WS,{

    })

    --------------------------------------
    -- Midcast sets
    --------------------------------------

    sets.midcast.FastRecast = {

    }

    sets.midcast.Enmity = {

    }

    sets.midcast.Flash = set_combine(sets.midcast.Enmity, {

    })

    sets.midcast.Stun = sets.midcast.Flash

    sets.midcast.Cure = {

    }

    sets.midcast['Enhancing Magic'] = {

    }

    sets.midcast.Protect = {

    }
    sets.midcast.Shell = {
    }

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------

    sets.Reraise = {
        
    }

    sets.resting = {
        
    }


    -- Idle sets
    sets.idle = {
    ammo="Aurgelmir Orb +1",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs=gear.Carmine_D_Legs,
    feet="Flam. Gambieras +2",
    neck="Combatant's Torque",
    waist="Sailfi Belt +1",
    left_ear="Brutal Earring",
    right_ear="Telos Earring",
    left_ring="Chirich Ring +1",
    right_ring="Petrov Ring",
    back="Null Shawl",
   
    }

    sets.Kiting = {
        legs=gear.Carmine_D_Legs
    }

    sets.latent_refresh = {
        
    }


    --------------------------------------
    -- Defense sets
    --------------------------------------

    -- Extra defense sets.  Apply these on top of melee or defense sets.
    sets.Knockback = {

    }
    sets.MP = {

    }
    sets.MP_Knockback = {

    }

    -- If EquipShield toggle is on (Win+F10 or Win+F11), equip the weapon/shield combos here
    -- when activating or changing defense mode:
    sets.PhysicalShield = {
        sub="Duban"
    } -- Ochain
    sets.MagicalShield = {
        sub="Aegis"
    } -- Aegis

    -- Basic defense sets.

    sets.defense.PDT = {
        
    }
    sets.defense.HP = {
        
    }
    sets.defense.Reraise = {
        
    }
    sets.defense.Charm = {
        
    }
    -- To cap MDT with Shell IV (52/256), need 76/256 in gear.
    -- Shellra V can provide 75/256, which would need another 53/256 in gear.
    sets.defense.MDT = {
        
    }


    --------------------------------------
    -- Engaged sets
    --------------------------------------

    sets.engaged = {
            ammo="Aurgelmir Orb +1",
            head="Flam. Zucchetto +2",
            body="Flamma Korazin +2",
            hands="Flam. Manopolas +2",
            legs=gear.Valo_TP_legs,
            feet="Flam. Gambieras +2",
            neck="Combatant's Torque",
            waist="Sailfi Belt +1",
            left_ear="Brutal Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Petrov Ring",
            back="Null Shawl",
    }

    sets.engaged.Acc = {
        
    }

    sets.engaged.DW = {
            ammo="Aurgelmir Orb +1",
            head="Flam. Zucchetto +2",
            body="Flamma Korazin +2",
            hands="Flam. Manopolas +2",
            legs=gear.Carmine_D_Legs,
            feet="Flam. Gambieras +2",
            neck="Combatant's Torque",
            waist="Sailfi Belt +1",
            left_ear="Brutal Earring",
            right_ear="Telos Earring",
            left_ring="Chirich Ring +1",
            right_ring="Petrov Ring",
            back="Null Shawl",
    }

    sets.engaged.DW.Acc = {
        
    }

    sets.engaged.PDT = set_combine(sets.engaged, {
        })
    sets.engaged.Acc.PDT = set_combine(sets.engaged.Acc, {
    })
    sets.engaged.Reraise = set_combine(sets.engaged, sets.Reraise)
    sets.engaged.Acc.Reraise = set_combine(sets.engaged.Acc, sets.Reraise)

    sets.engaged.DW.PDT = set_combine(sets.engaged.DW, {
        
    })
    sets.engaged.DW.Acc.PDT = set_combine(sets.engaged.DW.Acc, {
        
    })
    sets.engaged.DW.Reraise = set_combine(sets.engaged.DW, sets.Reraise)
    sets.engaged.DW.Acc.Reraise = set_combine(sets.engaged.DW.Acc, sets.Reraise)

    --------------------------------------
    -- Weapons and Shields
    --------------------------------------

    sets.Aegis = {
        sub = "Aegis"
    }
    
    sets.Duban = {
        sub = "Duban"
    }

    sets.BlurredShield = {
        sub = "Blurred Shield +1"
    }

    sets.Naegling = {
        main = "Naegling"
    }

    sets.Nixxer = {
        main = "Nixxer"
    }

    sets.Malignance = {
        main = "Malignance Sword"
    }

    sets.Burtgang = {
        main = "Burtgang"
    }

    --------------------------------------
    -- Custom buff sets
    --------------------------------------

    sets.buff.Doom = {
        neck="Nicander's Necklace", --20
        ring1={name="Eshmun's Ring", bag="wardrobe4"}, --20
        ring2={name="Eshmun's Ring", bag="wardrobe3"}, --20
        waist="Gishdubar Sash", --10
        }
    sets.buff.Cover = {
        
    }

    sets.TreasureHunter = {
        feet="Volte Boots",
        waist="Chaac Belt",
    }