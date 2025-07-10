   -- ===================================================================================================================
    --      Sets
    -- ===================================================================================================================
 
    -- Base Damage Taken Set - Mainly used when IdleMode is "DT"
    sets.DT_Base = {
        main="Nirvana",
        sub="Oneiros Grip",
        ammo="Epitaph",
        head="Beckoner's Horn +3",
        neck="Summoner's Collar +2",
        ear1="Cath Palug Earring",
        ear2="Beckoner's Earring +1",
        body="Beckoner's Doublet +3",
        hands={ name="Merlinic Dastanas", augments={'Pet: Crit.hit rate +2','"Mag.Atk.Bns."+25','"Refresh"+2','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
        ring1="Inyanga Ring",
        ring2="Defending Ring",
        back={ name="Campestres's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
        waist="Carrier's Sash",
        legs="Inyanga Shalwar +2",
        feet="Baayami Sabots +1"
    }
 
    -- Treasure Hunter set. Don't put anything in here except TH+ gear.
    -- It overwrites slots in other sets when TH toggle is on (Ctrl+F10).
    sets.TH = {
        head="Volte Cap",
        waist="Chaac Belt",
        body="Nyame Mail", -- Because otherwise Cohort Cloak and such mess up the swap
        hands="Volte Bracers",
        feet="Volte Boots"
    }
    
    -- This gets equipped automatically when you have Sneak/Invis or Quickening such as from Fleet Wind.
    sets.Movement = {
        ring1="Shneddick Ring +1"
        --feet="Herald's Gaiters"
    }
 
    sets.precast = {}
 
    -- Fast Cast
    sets.precast.FC = {
        main={ name="Grioavolr", augments={'"Fast Cast"+6','INT+2','"Mag.Atk.Bns."+17',}}, -- +10
        sub="Clerisy Strap +1", -- +3
        --ammo="Sapience Orb",
        head="Amalric Coif +1", -- +11
        neck="Orunmila's Torque", -- +5
        ear1="Malignance Earring", -- +4
        ear2="Loquacious Earring", -- +2
        hands={ name="Telchine Gloves", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body="Inyanga Jubbah +2", -- +14
        ring1="Lebeche Ring",
        ring2="Kishar Ring", -- +4
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Mag. Acc.+10','"Fast Cast"+10',}},
        waist="Witful Belt", -- +3
        legs={ name="Merlinic Shalwar", augments={'"Fast Cast"+6','CHR+6','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},
        feet="Regal Pumps +1" -- +5~7
    }
 
    sets.precast["Dispelga"] = set_combine(sets.precast.FC, {
        main="Daybreak",
        sub="Ammurapi Shield"
    })
 
    sets.midcast = {}
 
    -- BP Timer Gear
    -- Use BP Recast Reduction here, along with Avatar's Favor gear.
    -- Avatar's Favor skill tiers are 512 / 575 / 670 / 735.
    sets.midcast.BP = {
        main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
        sub="Vox Grip",
        ammo="Sancus Sachet +1",
        head="Beckoner's Horn +3", -- Always use Beckoner's Horn here.
        neck="Incanter's Torque",
        ear1="Cath Palug Earring",
        ear2="Lodurr Earring",
        body="Baayami Robe +1",
        hands="Baayami Cuffs +1",
        ring1={name="Stikini Ring +1", bag="wardrobe2"},
        ring2="Evoker's Ring",
        back={ name="Conveyance Cape", augments={'Summoning magic skill +5','Pet: Enmity+12','Blood Pact Dmg.+2',}},
        waist="Kobo Obi",
        legs="Baayami Slops +1",
        feet="Baayami Sabots +1"
    }
    
    -- Shock Squall is too fast to swap gear in pet_midcast() or otherwise. It'll generally land in your BP timer set.
    -- I settle for the 670 skill favor tier in this set, so that I can fit more Pet:MAcc although it's usually not necessary.
    sets.midcast.BP["Shock Squall"] = set_combine(sets.midcast.BP, {
        neck="Summoner's Collar +2",
        ear1="Enmerkar Earring",
        ear2="Lugalbanda Earring",
        ring1="Cath Palug Ring",
        ring2="Fickblix's Ring",
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Mag. Acc.+10','"Fast Cast"+10',}},
        waist="Incarnation Sash",
    })
 
    -- Elemental Siphon sets. Zodiac Ring is affected by day, Chatoyant Staff by weather, and Twilight Cape by both.
    sets.midcast.Siphon = {
        main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
        sub="Vox Grip",
        ammo="Esper Stone +1",
        head="Baayami Hat +1",
        neck="Incanter's Torque",
        ear1="Cath Palug Earring",
        ear2="Lodurr Earring",
        body="Baayami Robe +1",
        hands="Baayami Cuffs +1",
        ring1={name="Stikini Ring +1", bag="wardrobe2"},
        ring2="Evoker's Ring",
        back={ name="Conveyance Cape", augments={'Summoning magic skill +5','Pet: Enmity+12','Blood Pact Dmg.+2',}},
        waist="Kobo Obi",
        legs="Baayami Slops +1",
        feet="Beckoner's Pigaches +3"
    }
 
    sets.midcast.SiphonZodiac = set_combine(sets.midcast.Siphon, { ring1="Zodiac Ring" })
 
    sets.midcast.SiphonWeather = set_combine(sets.midcast.Siphon, { main="Chatoyant Staff" })
    
    sets.midcast.SiphonWeatherZodiac = set_combine(sets.midcast.SiphonZodiac, { main="Chatoyant Staff" })
 
    -- Summoning Midcast, cap spell interruption if possible (Baayami Robe gives 100, need 2 more)
    -- PDT isn't a bad idea either, so don't overwrite a lot from the DT set it inherits from.
    sets.midcast.Summon = set_combine(sets.DT_Base, {
        body="Baayami Robe +1",
        waist="Rumination Sash"
    })
 
    -- If you ever lock your weapon, keep that in mind when building cure potency set.
    sets.midcast.Cure = {
        main="Nirvana",
        sub="Clerisy Strap +1",
        head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
        neck="Orunmila's Torque",
        ear1="Meili Earring",
        ear2="Novia Earring",
        body="Zendik Robe",
        hands={ name="Telchine Gloves", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        ring1="Lebeche Ring",
        ring2="Menelaus's Ring",
        back="Tempered Cape +1",
        waist="Luminary Sash",
        legs="Convoker's Spats +3",
        feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}
    }
 
    sets.midcast.Cursna = set_combine(sets.precast.FC, {
        neck="Debilis Medallion",
        ear1="Meili Earring",
        ear2="Beatific Earring",
        ring1="Menelaus's Ring",
        ring2="Haoma's Ring",
        back="Tempered Cape +1",
        waist="Bishop's Sash",
        feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}
    })
    
    -- Just a standard set for spells that have no set
    sets.midcast.EnmityRecast = set_combine(sets.precast.FC, {
        main="Nirvana",
        ear1="Novia Earring",
        body={ name="Apo. Dalmatica +1", augments={'Summoning magic skill +20','Enmity-6','Pet: Damage taken -4%',}}
    })
 
    -- Strong alternatives: Daybreak and Ammurapi Shield, Cath Crown, Gwati Earring
    sets.midcast.Enfeeble = {
        main="Contemplator +1",
        sub="Enki Strap",
        head=empty,
        neck="Erra Pendant",
        ear1="Malignance Earring",
        ear2="Dignitary's Earring",
        body="Cohort Cloak +1",
        hands="Inyanga Dastanas +2",
        ring1={name="Stikini Ring +1", bag="wardrobe2"},
        ring2={name="Stikini Ring +1", bag="wardrobe4"},
        back="Aurist's Cape +1",
        waist="Luminary Sash",
        legs="Inyanga Shalwar +2",
        feet="Skaoi Boots"
    }
    sets.midcast.Enfeeble.INT = set_combine(sets.midcast.Enfeeble, {
        waist="Acuity Belt +1"
    })
 
    sets.midcast.Enhancing = {
        main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','DEX+1','Mag. Acc.+5','"Mag.Atk.Bns."+18','DMG:+4',}},
        sub="Ammurapi Shield",
        head={ name="Telchine Cap", augments={'Mag. Evasion+24','"Conserve MP"+4','Enh. Mag. eff. dur. +10',}},
        neck="Incanter's Torque",
        ear1="Mimir Earring",
        ear2="Andoaa Earring",
        body={ name="Telchine Chas.", augments={'Mag. Evasion+25','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="Telchine Gloves", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        ring1={name="Stikini Ring +1", bag="wardrobe2"},
        ring2={name="Stikini Ring +1", bag="wardrobe4"},
        back="Merciful Cape",
        waist="Embla Sash",
        legs={ name="Telchine Braconi", augments={'Mag. Evasion+25','"Conserve MP"+4','Enh. Mag. eff. dur. +10',}},
        feet={ name="Telchine Pigaches", augments={'Mag. Evasion+24','"Conserve MP"+3','Enh. Mag. eff. dur. +10',}}
    }
 
    sets.midcast.Stoneskin = set_combine(sets.midcast.Enhancing, {
        neck="Nodens Gorget",
        ear2="Earthcry Earring",
        waist="Siegel Sash",
        --legs="Shedir Seraweels"
    })
 
    -- Alternatives: Cath Palug Crown, Amalric gear, Sanctity Necklace, Eschan Stone
    sets.midcast.Nuke = {
        main="Opashoro",
        sub="Enki Strap",
        head="Bunzi's Hat",
        neck="Sibyl Scarf",
        ear1="Malignance Earring",
        ear2="Friomisi Earring",
        body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="Bunzi's Gloves",
        ring1="Freke Ring",
        ring2="Metamorph Ring +1",
        back={ name="Campestres's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
        waist="Acuity Belt +1",
        legs="Bunzi's Pants",
        feet="Bunzi's Sabots"
    }
 
    sets.midcast["Refresh"] = set_combine(sets.midcast.Enhancing, {
        head="Amalric Coif +1",
        waist="Gishdubar Sash"
    })
 
    sets.midcast["Aquaveil"] = set_combine(sets.midcast.Enhancing, {
        main="Vadose Rod",
        head="Amalric Coif +1",
        waist="Emphatikos Rope",
    })
 
    sets.midcast["Dispelga"] = set_combine(sets.midcast.Enfeeble, {
        main="Daybreak",
        sub="Ammurapi Shield"
    })
 
    sets.midcast["Mana Cede"] = { hands="Beckoner's Bracers +3" }
 
    sets.midcast["Astral Flow"] = { head="Glyphic Horn +3" }
    
    -- ===================================================================================================================
    --  Weaponskills
    -- ===================================================================================================================
 
    -- Base weaponskill set, used when you don't have a specific set for the weaponskill.
    sets.Weaponskill = {
        head="Nyame Helm",
        neck="Fotia Gorget",
        ear1="Malignance Earring",
        ear2="Crepuscular Earring",
        body="Nyame Mail",
        hands="Nyame Gauntlets",
        ring1="Epaminondas's Ring",
        ring2="Metamorph Ring +1",
        back="Aurist's Cape +1",
        waist="Fotia Belt",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets"
    }
 
    -- It's ok to just target accuracy & magic accuracy for this set, and use it to get AM3, apply defense down, and/or open skillchains.
    sets.midcast["Garland of Bliss"] = set_combine(sets.Weaponskill, {
        neck="Sanctity Necklace",
        ear2="Friomisi Earring",
        waist="Orpheus's Sash",
    })
 
    -- Shattersoul is a good weaponskill for skillchaining with Ifrit. If that's your intent, I suggest stacking accuracy.
    -- If you have access to Oshala, that's generally a better use.
    sets.midcast["Shattersoul"] = set_combine(sets.Weaponskill, {
        head="Beckoner's Horn +3",
        ear1="Zennaroi Earring",
        ear2="Telos Earring",
        body="Tali'ah Manteel +2",
        hands="Beckoner's Bracers +3",
        back={ name="Campestres's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        waist="Fotia Belt",
        feet="Beckoner's Pigaches +3"
    })
 
    sets.midcast["Cataclysm"] = set_combine(sets.midcast["Garland of Bliss"], {})
    
    -- Magic accuracy here to land defense down
    sets.midcast["Shell Crusher"] = set_combine(sets.Weaponskill, {
        head="Beckoner's Horn +3",
        neck="Sanctity Necklace",
        ear1="Dignitary's Earring",
        body="Beckoner's Doublet +3",
        hands="Beckoner's Bracers +3",
        ring1={name="Stikini Ring +1", bag="wardrobe2"},
        back={ name="Campestres's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        waist="Eschan Stone",
        feet="Beckoner's Pigaches +3",
    })
    
    sets.midcast["Black Halo"] = set_combine(sets.Weaponskill, {
        neck="Republican Platinum Medal",
        waist="Grunfeld Rope",
    })
    
    sets.midcast["Oshala"] = set_combine(sets.Weaponskill, {
        ear2="Telos Earring",
        neck="Shulmanu Collar",
        ring1="Epaminondas's Ring",
        ring2="Metamorph Ring +1",
        waist="Acuity Belt +1",
    })
 
    sets.pet_midcast = {}
 
    -- Main physical pact set (Volt Strike, Pred Claws, etc.)
    -- Prioritize BP Damage & Pet: Double Attack
    -- Strong Alternatives:
    --   Nirvana, Gridarvor, Apogee Crown, Apogee Pumps, AF body, Apogee Dalmatica, Shulmanu Collar (equal to ~R15 Collar),
    --   Gelos Earring, Regal Belt, Varar Ring, Kyrene's Earring
    sets.pet_midcast.Physical_BP = {
        main="Opashoro",
        sub="Elan Strap +1",
        ammo="Epitaph",
        head={ name="Helios Band", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
        neck="Summoner's Collar +2",
        ear1="Lugalbanda Earring",
        ear2="Beckoner's Earring +1",
        body="Glyphic Doublet +3",
        hands={ name="Merlinic Dastanas", augments={'Pet: Attack+24 Pet: Rng.Atk.+24','Blood Pact Dmg.+9','Pet: STR+10','Pet: Mag. Acc.+7',}},
        ring1="Cath Palug Ring",
        ring2="Fickblix's Ring",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
        waist="Incarnation Sash",
        legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
        feet={ name="Helios Boots", augments={'Pet: Accuracy+28 Pet: Rng. Acc.+28','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}}
    }
 
    -- Physical Pact AM3 set, less emphasis on Pet:DA
    sets.pet_midcast.Physical_BP_AM3 = set_combine(sets.pet_midcast.Physical_BP, {
        body="Convoker's Doublet +3",
        ring1="Varar Ring +1",
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}}
    })
 
    -- Physical pacts which benefit more from TP than Pet:DA (like Spinning Dive and other pacts you never use except that one time)
    sets.pet_midcast.Physical_BP_TP = set_combine(sets.pet_midcast.Physical_BP, {
        head={ name="Apogee Crown +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
        body="Convoker's Doublet +3",
        ring1="Varar Ring +1",
        waist="Regal Belt",
        legs="Enticer's Pants",
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}}
    })
 
    -- Used for all physical pacts when AccMode is true
    sets.pet_midcast.Physical_BP_Acc = set_combine(sets.pet_midcast.Physical_BP, {
        head={ name="Apogee Crown +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
        body="Convoker's Doublet +3",
        hands={ name="Merlinic Dastanas", augments={'Pet: Accuracy+28 Pet: Rng. Acc.+28','Blood Pact Dmg.+10','Pet: DEX+9','Pet: Mag. Acc.+9','Pet: "Mag.Atk.Bns."+3',}},
        feet="Beckoner's Pigaches +3"
    })
 
    -- Base magic pact set
    -- Prioritize BP Damage & Pet:MAB
    -- Strong Alternatives:
    -- Espiritus, Apogee Crown, Adad Amulet (equal to ~R12 Collar)
    sets.pet_midcast.Magic_BP_Base = {
        main={ name="Grioavolr", augments={'Blood Pact Dmg.+10','Pet: STR+5','Pet: Mag. Acc.+18','Pet: "Mag.Atk.Bns."+25',}},
        sub="Elan Strap +1",
        ammo="Epitaph",
        head="Cath Palug Crown",
        neck="Summoner's Collar +2",
        ear1="Lugalbanda Earring",
        ear2="Beckoner's Earring +1",
        body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+25 Pet: "Mag.Atk.Bns."+25','Blood Pact Dmg.+10','Pet: "Mag.Atk.Bns."+7',}},
        ring1={name="Varar Ring +1", bag="wardrobe2"},
        --ring2={name="Varar Ring +1", bag="wardrobe4"},
        ring2="Fickblix's Ring",
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Mag. Acc.+10','"Fast Cast"+10',}},
        waist="Regal Belt",
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}}
    }
    
    -- Some magic pacts benefit more from TP than others.
    -- Note: This set will only be used on merit pacts if you have less than 4 merits.
    --       Make sure to update your merit values at the top of this Lua.
    sets.pet_midcast.Magic_BP_TP = set_combine(sets.pet_midcast.Magic_BP_Base, {
        legs="Enticer's Pants"
    })
 
    -- NoTP set used when you don't need Enticer's
    sets.pet_midcast.Magic_BP_NoTP = set_combine(sets.pet_midcast.Magic_BP_Base, {
        legs={ name="Apogee Slacks +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}}
    })
 
    sets.pet_midcast.Magic_BP_TP_Acc = set_combine(sets.pet_midcast.Magic_BP_TP, {
        head={ name="Merlinic Hood", augments={'Pet: Mag. Acc.+21 Pet: "Mag.Atk.Bns."+21','Blood Pact Dmg.+7','Pet: INT+6','Pet: "Mag.Atk.Bns."+11',}},
        body="Convoker's Doublet +3",
        hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+29','Blood Pact Dmg.+10','Pet: INT+7','Pet: "Mag.Atk.Bns."+10',}}
    })
 
    sets.pet_midcast.Magic_BP_NoTP_Acc = set_combine(sets.pet_midcast.Magic_BP_NoTP, {
        head={ name="Merlinic Hood", augments={'Pet: Mag. Acc.+21 Pet: "Mag.Atk.Bns."+21','Blood Pact Dmg.+7','Pet: INT+6','Pet: "Mag.Atk.Bns."+11',}},
        body="Convoker's Doublet +3",
        hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+29','Blood Pact Dmg.+10','Pet: INT+7','Pet: "Mag.Atk.Bns."+10',}}
    })
 
    -- Favor BP Damage above all. Pet:MAB also very strong.
    -- Pet: Accuracy, Attack, Magic Accuracy moderately important.
    -- Strong Alternatives:
    -- Nirvana, Keraunos, Grioavolr, Espiritus, Was, Apogee Crown, Apogee Dalmatica, Adad Amulet
    sets.pet_midcast.FlamingCrush = {
        main="Opashoro",
        sub="Elan Strap +1",
        ammo="Epitaph",
        head="Cath Palug Crown",
        neck="Summoner's Collar +2",
        ear1="Lugalbanda Earring",
        ear2="Beckoner's Earring +1",
        body="Convoker's Doublet +3",
        hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+25 Pet: "Mag.Atk.Bns."+25','Blood Pact Dmg.+10','Pet: "Mag.Atk.Bns."+7',}},
        ring1={name="Varar Ring +1", bag="wardrobe2"},
        ring2="Fickblix's Ring",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
        waist="Regal Belt",
        legs={ name="Apogee Slacks +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}}
    }
 
    sets.pet_midcast.FlamingCrush_Acc = set_combine(sets.pet_midcast.FlamingCrush, {
        hands={ name="Merlinic Dastanas", augments={'Pet: Accuracy+28 Pet: Rng. Acc.+28','Blood Pact Dmg.+10','Pet: DEX+9','Pet: Mag. Acc.+9','Pet: "Mag.Atk.Bns."+3',}},
        feet="Beckoner's Pigaches +3"
    })
 
    -- Pet: Magic Acc set - Mainly used for debuff pacts like Bitter Elegy
    sets.pet_midcast.MagicAcc_BP = {
        main="Opashoro",
        sub="Vox Grip",
        ammo="Epitaph",
        head="Beckoner's Horn +3",
        neck="Summoner's Collar +2",
        ear1="Enmerkar Earring",
        ear2="Lugalbanda Earring",
        body="Convoker's Doublet +3",
        hands="Lamassu Mitts +1",
        ring1="Cath Palug Ring",
        ring2="Fickblix's Ring",
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Mag. Acc.+10','"Fast Cast"+10',}},
        waist="Regal Belt",
        legs="Convoker's Spats +3",
        feet="Bunzi's Sabots"
    }
 
    sets.pet_midcast.Debuff_Rage = sets.pet_midcast.MagicAcc_BP
 
    -- Pure summoning magic set, mainly used for buffs like Hastega II.
    -- Strong Alternatives:
    -- Andoaa Earring, Summoning Earring, Lamassu Mitts +1, Caller's Pendant
    sets.pet_midcast.SummoningMagic = {
        main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
        sub="Vox Grip",
        ammo="Epitaph",
        head="Baayami Hat +1",
        neck="Incanter's Torque",
        ear1="Cath Palug Earring",
        ear2="Lodurr Earring",
        body="Baayami Robe +1",
        hands="Baayami Cuffs +1",
        ring1={name="Stikini Ring +1", bag="wardrobe2"},
        ring2="Evoker's Ring",
        back={ name="Conveyance Cape", augments={'Summoning magic skill +5','Pet: Enmity+12','Blood Pact Dmg.+2',}},
        waist="Kobo Obi",
        legs="Baayami Slops +1",
        feet="Baayami Sabots +1"
    }
 
    sets.pet_midcast.Buff = sets.pet_midcast.SummoningMagic
    
    -- Wind's Blessing set. Pet:MND increases potency.
    sets.pet_midcast.Buff_MND = set_combine(sets.pet_midcast.Buff, {
        main="Opashoro",
        neck="Summoner's Collar +2",
        ear2="Beckoner's Earring +1",
        hands="Lamassu Mitts +1",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
        legs="Assiduity Pants +1",
        feet="Bunzi's Sabots"
    })
 
    -- Don't drop Avatar level in this set if you can help it.
    -- You can use Avatar:HP+ gear to increase the HP recovered, but most of it will decrease your own max HP.
    sets.pet_midcast.Buff_Healing = set_combine(sets.pet_midcast.Buff, {
        main="Opashoro",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
        --body={ name="Apo. Dalmatica +1", augments={'Summoning magic skill +20','Enmity-6','Pet: Damage taken -4%',}},
        --feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}}
    })
 
    -- This set is used for certain blood pacts when ImpactDebuff mode is turned ON. (/console gs c ImpactDebuff)
    -- These pacts are normally used with magic damage gear, but they're also strong debuffs when enhanced by summoning skill.
    -- This set is safe to ignore.
    sets.pet_midcast.Impact = set_combine(sets.pet_midcast.SummoningMagic, {
        main="Opashoro",
        head="Beckoner's Horn +3",
        ear1="Enmerkar Earring",
        ear2="Lugalbanda Earring",
        hands="Lamassu Mitts +1"
    })
    
    -- ===================================================================================================================
    -- Aftercast Sets
    -- ===================================================================================================================
    -- Syntax: sets.aftercast.{IdleMode}.{PetName|Spirit|Avatar}.{PlayerStatus}.{LowMP}.{ForceIlvl}.{CustomMode}
 
    -- Example: sets.aftercast.DT["Cait Sith"] will be a set used when IdleMode is "DT" and you have Cait Sith summoned.
 
    -- This is your default idle gear used as a baseline for most idle sets below. Put gear here and you won't have to repeat it over and over.
    -- I focus on refresh. Strong alternatives: Asteria Mitts, Convoker Horn, Shomonjijoe
    sets.aftercast = {
        main="Nirvana",
        sub="Elan Strap +1",
        ammo="Sancus Sachet +1",
        head="Beckoner's Horn +2",
        body="Shomonjijoe +1",
        hands="Convoker's Bracers +2", 
        legs="Assiduity Pants",
        feet="Herald's Gaiters",
        neck="Smn. Collar +2",
        waist="Incarnation Sash",
        left_ear="Cath Palug Earring", -- SMN Skill +5
        right_ear="Evans Earring",
        left_ring="Stikini Ring +1",
        right_ring="Defending Ring",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng. Atk.+10','Pet: "Haste"+2',}},
    }
    
    -- sets.aftercast.ForceIlvl = set_combine(sets.aftercast, {
        -- feet="Baayami Sabots +1"
    -- })
    sets.aftercast.LowMP = set_combine(sets.aftercast, {
        --waist="Fucho-no-obi"
    })
    -- sets.aftercast.LowMP.ForceIlvl = set_combine(sets.aftercast.LowMP, {
        -- feet="Baayami Sabots +1"
    -- })
    
    -- Main perpetuation set ~~ Strong Alternatives:
    -- Gridarvor, Asteria Mitts, Shomonjijoe, Convoker's Horn, Evans Earring, Isa Belt
    sets.aftercast.Avatar = {
        main="Nirvana", -- -8 perp
        sub="Elan Strap +1", 
        ammo="Sancus Sachet +1",
        head="Beckoner's Horn +2", --+3 refresh +4 favor
        body="Apogee Dalmatica +1", -- Refresh +4
        hands="Asteria Mitts +1",
        legs="Assiduity Pants",  -- -2 perp
        feet="Baayami Sabots +1",
        --feet="Herald's Gaiters",
        neck="Smn. Collar +2", 
        waist="Lucidity Sash",  -- -2 perp
        left_ear="Evans Earring", -- -2 perp
        right_ear="Cath Palug Earring", -- SMN Skill +5
        left_ring="Defending Ring", -- don't need the perp from evoker's at the moment...might as well take the DT
        --left_ring="Evoker's Ring", -- -1 perp
        right_ring="Stikini Ring +1",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng. Atk.+10','Pet: "Haste"+2',}},
    }
    -- If you have Fucho and don't need Lucidity Sash for perp down, you can uncomment the belt here to enable using it.
    sets.aftercast.Avatar.LowMP = set_combine(sets.aftercast.Avatar, {
        --waist="Fucho-no-obi"
    })
 
    sets.aftercast.Avatar.Opashoro = set_combine(sets.aftercast.Avatar, {
        body="Beckoner's Doublet +3",
    })
 
    -- Damage Taken set
    sets.aftercast.DT = set_combine(sets.DT_Base, {

    })
 
    sets.aftercast.DT.Avatar = set_combine(sets.aftercast.DT, {
        --waist="Isa Belt"
    })
    
    sets.aftercast.DT.Avatar.Opashoro = set_combine(sets.aftercast.DT.Avatar, {
        --feet="Beckoner's Pigaches +3"
    })
 
    -- You aren't likely to be in PetDT mode without an avatar for long, but I default to the DT set in that scenario.
    sets.aftercast.PetDT = set_combine(sets.aftercast.DT, {
    })
 
    -- Pet:DT build. Equipped when IdleMode is "PetDT".
    -- Strong alternatives:
    -- Selenian Cap, Enticer's Pants, Enmerkar Earring, Handler's Earring, Rimeice Earring, Tali'ah Seraweels
    sets.aftercast.PetDT.Avatar = {
        main="Nirvana", -- -8 perp
	    sub="Elan Strap +1", 
        ammo="Sancus Sachet +1",
        head="Beckoner's Horn +2", --+3 refresh +4 favor
        body="Apogee Dalmatica +1", -- Refresh +4
        hands="Asteria Mitts +1",
        legs="Assiduity Pants",  -- -2 perp
        feet="Baayami Sabots +1",
	    --feet="Herald's Gaiters",
        neck="Smn. Collar +2", 
        waist="Lucidity Sash",  -- -2 perp
        left_ear="Evans Earring", -- -2 perp
        right_ear="Handler's Earring", -- SMN Skill +5
        left_ring="Defending Ring", -- don't need the perp from evoker's at the moment...might as well take the DT
        right_ring="Stikini Ring +1",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng. Atk.+10','Pet: "Haste"+2',}},
    }
 
    -- ===================================================================================================================
    -- Sets below this point are extremely niche. If just getting set up, this is a good stopping point to save for later.
    
    -- Kite set. I just use this to gather up mobs in Escha Ru'Aun for merit farming.
    sets.aftercast.Kite = set_combine(sets.aftercast.DT, sets.Movement)
    sets.aftercast.Kite.Avatar = set_combine(sets.aftercast.DT.Avatar, sets.Movement)
 
    -- These 2 sets are for when you're in DD mode but not actually engaged to something.
    sets.aftercast.DD = set_combine(sets.aftercast, {
    })
    
    sets.aftercast.DD.Avatar = set_combine(sets.aftercast.Avatar, {
    })
    
    -- Main melee set
    -- If you want specific things equipped only when an avatar is out, modify "sets.aftercast.DD.Avatar.Engaged" below.
    sets.aftercast.DD.Engaged = set_combine(sets.aftercast.DD.Avatar, {
        --head="Beckoner's Horn +3",
        --head="Bunzi's Hat",
        --neck="Shulmanu Collar",
        --ear1="Telos Earring",
        --ear2="Cessance Earring",
        --body="Tali'ah Manteel +2",
        --hands="Bunzi's Gloves",
        --ring1={ name="Chirich Ring +1", bag="wardrobe2" },
        --ring2="Fickblix's Ring",
        --back={ name="Campestres's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        --waist="Cetl Belt",
        --legs="Nyame Flanchard",
        --feet="Beckoner's Pigaches +3"
    })
    
    -- Main melee set when engaged with an avatar out. Usually doesn't have many changes from the above set.
    sets.aftercast.DD.Avatar.Engaged = set_combine(sets.aftercast.DD.Engaged, {
        --ear2="Sroda Earring"
    })
    
    sets.aftercast.DD.Avatar.Engaged.Opashoro = set_combine(sets.aftercast.DD.Engaged, {
        --body="Beckoner's Doublet +3",
    })
 
    sets.aftercast.Enspell = set_combine(sets.aftercast, {})
    sets.aftercast.Enspell.Avatar = set_combine(sets.aftercast.Avatar, {})
    
    -- Enspell set I mainly use for Peach Power. Load up on accuracy & magic accuracy. Doesn't seem to help much honestly, it's a work in progress.
    sets.aftercast.Enspell.Engaged = set_combine(sets.aftercast.DD.Avatar.Engaged, {
        --ear1="Crepuscular Earring",
        --ear2="Beckoner's Earring +1",
        --body="Beckoner's Doublet +3", --replaces feet for perp cost
        --ring1="Metamorph Ring +1",
        --waist="Orpheus's Sash",
        --feet="Nyame Sollerets",
    })
    sets.aftercast.Enspell.Avatar.Engaged = set_combine(sets.aftercast.Enspell.Engaged, {})
    
    sets.aftercast.Favor = set_combine(sets.aftercast, {
    })
    
    -- Used when IdleMode is "Favor" to maximize avatar's favor effect.
    -- Skill tiers are 512 / 575 / 670 / 735
    sets.aftercast.Favor.Avatar = set_combine(sets.aftercast.Avatar, {
        --head="Beckoner's Horn +3",
        --ear2="Lodurr Earring",
        --body="Beckoner's Doublet +3",
        --hands="Baayami Cuffs +1",
        --legs="Baayami Slops +1",
        --feet="Baayami Sabots +1"
    })
 
    sets.aftercast.PetDD = set_combine(sets.aftercast, {
    })
 
    -- Avatar Melee set. You really don't need this set. It's only here because I can't bring myself to throw it away.
    sets.aftercast.PetDD.Avatar = set_combine(sets.aftercast.Avatar, {
        --ear2="Rimeice Earring",
       --body="Glyphic Doublet +3",
       -- hands={ name="Helios Gloves", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+8','Pet: Haste+6',}},
        --ring2="Fickblix's Ring",
        --waist="Klouskap Sash",
        --feet={ name="Helios Boots", augments={'Pet: Accuracy+21 Pet: Rng. Acc.+21','Pet: "Dbl. Atk."+8','Pet: Haste+6',}}
    })
 
    sets.aftercast.Zendik = set_combine(sets.aftercast, {
        --body="Zendik Robe"
    })
    -- sets.aftercast.Zendik.ForceIlvl = set_combine(sets.aftercast.Zendik, {
        -- feet="Baayami Sabots +1"
    -- })
    sets.aftercast.Zendik.LowMP = set_combine(sets.aftercast.Zendik, {
        --waist="Fucho-no-obi"
    })
    -- sets.aftercast.Zendik.LowMP.ForceIlvl = set_combine(sets.aftercast.Zendik.LowMP, {
        -- feet="Baayami Sabots +1"
    -- })
 
    sets.aftercast.Zendik.Avatar = set_combine(sets.aftercast.Favor.Avatar, {
        --body="Zendik Robe"
    })
 
    -- I use this mode for Mewing Lullaby duty in V20+ Gaol. Heaviest defense possible, less attention toward MP management.
    sets.aftercast.MEva = set_combine(sets.aftercast.DT, {
        --sub="Khonsu",
        --hands="Nyame Gauntlets",
        --feet="Baayami Sabots +1"
    })
 
    sets.aftercast.MEva.Avatar = set_combine(sets.aftercast.MEva, {
        --ear1="Enmerkar Earring",
        --waist="Isa Belt",
        --back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
    })
 
    -- Idle set used when you have a spirit summoned. Glyphic Spats will make them cast more frequently.
    sets.aftercast.Spirit = set_combine(sets.aftercast.Avatar,{
        legs="Glyphic Spats +1"
    })
    sets.aftercast.Favor.Spirit = set_combine(sets.aftercast.Spirit, {
    })
    sets.aftercast.Zendik.Spirit = set_combine(sets.aftercast.Favor.Spirit, {
    })
    
    sets.aftercast.Town = set_combine(sets.aftercast.Avatar, {
       -- main="Opashoro",
       -- sub="Oneiros Grip",
       -- neck="Summoner's Collar +2",
       -- hands="Nyame Gauntlets",
        --ring1="Shneddick Ring +1",
        --ring2="Fickblix's Ring",
        --waist="Ninurta's Sash",
        --legs="Bunzi's Pants",
    })
    
    sets.Test = set_combine(sets.pet_midcast.Magic_BP_NoTP, {
        --hands={ name="Merlinic Dastanas", augments={'Pet: Attack+16 Pet: Rng.Atk.+16','Blood Pact Dmg.+10','Pet: STR+9','Pet: "Mag.Atk.Bns."+5',}},
        --waist="Incarnation Sash",
        --feet="Beckoner's Pigaches +3"
    })
 
    -- ===================================================================================================================
    --      End of Sets
    -- ===================================================================================================================