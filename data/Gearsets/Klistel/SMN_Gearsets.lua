		include('include/mappings.lua')
		include('include/equipment.lua')
		include('include/utility.lua') 

		
   gear = {}

   gear.AF_Head="Convoker's Horn +3"
   gear.AF_Body="Convoker's Doublet +3"
   gear.AF_Hands="Convoker's Bracers +3"
   gear.AF_Legs="Convoker's Spats +3"
   gear.AF_Feet="Convoker's Pigaches +3"

   gear.Relic_Head="Glyphic Horn +1"
   gear.Relic_Body="Glyphic Doublet +1"
   gear.Relic_Hands="Glyphic Bracers +1"
   gear.Relic_Legs="Glyphic Spats +1"
   gear.Relic_Feet="Glyphic Pigaches +1"

   gear.Empy_Head="Beckoner's Horn +3"
   --gear.Empy_Body="Beckoner's Doublet +3"
   --gear.Empy_Hands="Beckoner's Bracers +3"
   --gear.Empy_Legs="Beckoner's Spats +3"
   --gear.Empy_Feet="Beckoner's Pigaches +3"

   include('Gearsets/'..player.name..'/Globals-AugGear.lua')

   sets.TreasureHunter = {
    feet="Volte Boots",
    waist="Chaac Belt",
}

  --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    
    -- Resting sets
    sets.resting = 
	{
    main="Chatoyant Staff",
    head="Orvail corona +1",
	body="Oracle's Robe",
    waist="Hierarch Belt",
    left_ear="Boroka Earring",
	legs="Assiduity Pants",
    feet="Baayami Sabots +1",
	}
    
    -- Idle set - refresh set
    sets.idle = 
	{
    main="Nirvana",
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head="Beckoner's Horn +3",
    body="Shomonjijoe +1",
    hands=gear.AF_Hands,
    legs="Assiduity Pants",
    feet="Herald's Gaiters",
    neck="Smn. Collar +2",
    waist="Regal Belt",
    left_ear="Cath Palug Earring", -- SMN Skill +5
    right_ear="Lugalbanda Earring",
    right_ring="Stikini Ring +1",
    left_ring="Defending Ring", --DT -5%
    back=gear.SMN_PhysCape,
	}
	
	sets.idle.Windurst = {body="Federation Aketon"}
	sets.idle.Adoulin = {body="Councilor's Garb"}
	sets.idle.Sandy= {body="Kingdom Aketon"}
		
		
    -- perp costs:
    -- spirits: 7
    -- carby: 11 (5 with mitts)
    -- fenrir: 20
    -- others: 15
    -- avatar's favor: -4/tick
    
    -- Max useful -perp gear is 1 less than the perp cost (can't be reduced below 1)
    -- Aim for -14 perp, and refresh in other slots.
    
    -- -perp gear:
    -- Gridarvor: -5
	-- Nirvana: -8 
    -- Glyphic Horn: -4
    -- Caller's Doublet +2/Glyphic Doublet: -4
    -- Evoker's Ring: -1
    -- Convoker's Pigaches: -4
    -- total: -18
    
    -- Can make due without either the head or the body, and use +refresh items in those slots.
    
    sets.idle.Avatar = {
    main="Nirvana", -- -8 perp
	sub="Elan Strap +1", 
    ammo="Sancus Sachet +1",
    head=gear.Empy_Head, --+4 refresh +5 favor
    body=gear.Apogee_A_Body, -- Refresh +4
    hands="Asteria Mitts +1",
    legs="Assiduity Pants",  -- -2 perp
    feet="Baayami Sabots +1",
	--feet="Herald's Gaiters",
    neck="Smn. Collar +2", 
    waist="Lucidity Sash",  -- -2 perp
    right_ear="Beckoner's Earring +1", -- -2 perp
    left_ear="Cath Palug Earring", -- SMN Skill +5
    left_ring="Defending Ring", -- -10% DT
    --left_ring="Evoker's Ring", -- -1 perp
    right_ring="Cath Palug Ring", -- -5% DT
    back=gear.SMN_PhysCape,
}

	sets.idle.Avatar.Spirit = sets.idle.Avatar

    sets.idle.DT = {
        head=gear.Empy_Head, -- -10% DT
        neck="Smn. Collar +2", -- -5% DT
        right_ear="Handler's Earring",
        left_ring="Defending Ring", -- -10% DT
        right_ring="Cath Palug Ring", -- -5% DT
    }

    sets.idle.th = {
        ammo="Perfect Lucky Egg",
        feet="Volte Boots",
    }


    sets.perp = {}
    -- Caller's Bracer's halve the perp cost after other costs are accounted for.
    -- Using -10 (Gridavor, ring, Conv.feet), standard avatars would then cost 5, halved to 2.
    -- We can then use Hagondes Coat and end up with the same net MP cost, but significantly better defense.
    -- Weather is the same, but we can also use the latent on the pendant to negate the last point lost.
    sets.perp.Day = {
		--body="Summoner's Doublet",
	}
    sets.perp.Weather = {
	--	neck="Caller's Pendant",
		--head="Summoner's Horn"
	}
    -- Carby: Mitts+Conv.feet = 1/tick perp.  Everything else should be +refresh
    sets.perp.Carbuncle = {
				hands="Asteria Mitts +1",
			    feet="Herald's Gaiters",
			}
    sets.perp.Cait = {
				hands="Lamassu Mitts +1",
			}

    sets.perp.Garuda = {--head = "Karura Hachigane"
	}
    -- Diabolos's Rope doesn't gain us anything at this time
    --sets.perp.Diabolos = {waist="Diabolos's Rope"}
    sets.perp.Alexander = sets.midcast.Pet.BloodPactWard

    --sets.perp.staff_and_grip = {main=gear.perp_staff,sub="Achaq Grip"}
  --------------------------------------
    -- Precast sets
    --------------------------------------		
		--Max BP1: -15s
		--Max BP2: -15s
 sets.precast.BloodPact = {
    main="Nirvana",
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",  -- BP2: 7
    head=gear.Empy_Head, -- Avatar's Favor +5 SMN skill +23
    body="Baayami Robe +1", -- SMN skill +37
    hands="Baayami Cuffs +1",  -- SMN Skill +33 BP1: 7
    legs="Baayami Slops +1",  -- SMN Skill +35 BP1: 8
    feet="Baaya. Sabots +1",  -- SMN Skill +29
    neck="Melic Torque",  -- SMN Skill +10
    waist="Lucidity Sash", -- SMN Skill +7
    left_ring="Evoker's Ring", -- SMN Skill +10
    right_ear="Lodurr Earring", -- SMN Skill +10
    right_ring="Stikini Ring +1", -- SMN Skill +8
    left_ear="Cath Palug Earring", -- SMN Skill +5
    back=gear.SMN_PhysCape,
}

sets.precast.BloodPact["Shock Squall"] = set_combine(sets.precast.BloodPact, {
    neck="Summoner's Collar +2",
    ear1="Kyrene's Earring",
    ear2="Lugalbanda Earring",
    ring2="Cath Palug Ring",
    --ring2="Fickblix's Ring",
    back=gear.SMN_MagCape,
    waist="Incarnation Sash",
})



    -- Fast cast sets for spells
    sets.precast.Fastcast = {
    head="Nahtirah hat",
    neck="Baetyl Pendant",
    back=gear.SMN_FC_Cape,
    body="Baayami Robe +1",
    right_ring="Weather. Ring",
    left_ring="Kishar Ring",
    --feet="Merlinic Crackows",
    right_ear="Loquac. Earring",
    left_ear="Malignance earring",

		}
    -- interrupt rate down for pacts
    sets.summonmagic = {
        body="Baayami Robe +1",
    }

	sets.precast.JA['Astral Flow'] = {
		head=gear.Relic_Head
		}
	sets.fastfeet = {
		feet="Herald's Gaiters"
		}


    sets.precast.Cure = {
		back="Pahtli cape",
		}

	sets.midcast.Cure= {
		main="Daybreak",
		head="Vanya Hood",
		legs="Tethyan trews +2",
        feet="Medium's Sabots",
		--neck="Arciela's Grace +1",
        right_ring="Naji's Loop",
		back="Pahtli cape",
		}

    --------------------------------------
    -- Midcast sets
    --------------------------------------


    -- Avatar pact sets.  All pacts are Ability type.
    sets.midcast.SummoningSkill = 
	{
		head="Baayami Hat +1", -- SMN Skill +31
        body="Baayami Robe +1", -- SMN skill +37
        hands="Baayami Cuffs +1",  -- SMN Skill +33 BP1: 7
        legs="Baayami Slops +1",  -- SMN Skill +35 BP1: 8
        feet="Baaya. Sabots +1",  -- SMN Skill +29
        neck="Melic Torque",  -- SMN Skill +10
        waist="Lucidity Sash", -- SMN Skill +7
        left_ring="Evoker's Ring", -- SMN Skill +10
        right_ring="Stikini Ring +1", -- SMN Skill +8
        left_ear="Cath Palug Earring", -- SMN Skill +5
        right_ear="Lodurr Earring", -- SMN Skill +10
        back="Conveyance Cape",

	}

    sets.precast.JA = {}
    sets.precast.JA["Elemental Siphon"] = sets.midcast.SummoningSkill

    sets.midcast.Pet.BloodPactWard = sets.midcast.SummoningSkill

    sets.midcast.Pet.DebuffBloodPactWard=sets.midcast.SummoningSkill


    -- Rage Stats --
    -- Avatar Level 122
    -- BP Damage: 106
    -- Pet Attack: 127
    -- Pet Acc: 165
    -- Pet MAB: 33
    -- Pet MACC: 110
    -- Pet DA: 7%

    sets.midcast.Pet.PhysicalBloodPactRage =
	{
        main="Nirvana", 
        sub="Elan Strap +1",
        ammo="Sancus Sachet +1",
        head=gear.Apogee_B_Head,
        body=gear.AF_Body,
        hands={ name="Merlinic Dastanas", augments={'Pet: Attack+27 Pet: Rng.Atk.+27','Blood Pact Dmg.+8','Pet: INT+2','Pet: "Mag.Atk.Bns."+13',}},
        legs=gear.Apogee_D_Legs,
        feet=gear.Apogee_B_Feet,
        neck="Smn. Collar +2",
        waist="Incarnation Sash",
        right_ear="Gelos Earring",
        left_ear="Lugalbanda Earring",
        left_ring="Varar Ring +1",
        right_ring="Varar Ring +1",
        back=gear.SMN_PhysCape,
    }

    sets.midcast.Pet.PhysicalBloodPactRage.Acc =  set_combine(sets.midcast.Pet.PhysicalBloodPactRage,
	{
        body=gear.AF_Body,
        hands=gear.AF_Hands,
        feet=gear.AF_Feet,
        left_ear="Lugalbanda Earring",
        right_ear="Beckoner's Earring +1",
    })

	sets.midcast.Pet.Garuda = { 
    --    head="Karura Hachigane" 
    }


    sets.midcast.Pet.MagicalBloodPactRage =
	{
    main={ name="Espiritus", augments={'MP+50','Pet: "Mag.Atk.Bns."+20','Pet: Mag. Acc.+20',}},
	sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head="Cath Palug Crown",
    body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
    hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+14 Pet: "Mag.Atk.Bns."+14','Blood Pact Dmg.+10','Pet: Mag. Acc.+4',}},
	legs=gear.Apogee_A_Legs,
    feet=gear.Apogee_A_Feet,
	right_ear="Gelos Earring",
    left_ear="Lugalbanda Earring",
	left_ring="Varar Ring +1",
	right_ring="Varar Ring +1",
    neck="Summoner's Collar +2",
    waist="Regal Belt",
	back=gear.SMN_MagCape,
}

    sets.midcast.Pet.MagicalBloodPactRage.Sp = set_combine(sets.midcast.Pet.MagicalBloodPactRage,{
        hands=gear.Relic_Hands,
    })

    sets.midcast.Pet.MagicalBloodPactRage.Acc = set_combine(sets.midcast.Pet.MagicalBloodPactRage,{
        hands="Lamassu Mitts +1",
        body=gear.AF_Body,
        waist="Incarnation Sash",
        right_ear="Beckoner's Earring +1",
    })

    sets.midcast.Pet.FlamingCrush =
	{
    main="Nirvana", 
	sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head="Cath Palug Crown",
    body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
    hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+14 Pet: "Mag.Atk.Bns."+14','Blood Pact Dmg.+10','Pet: Mag. Acc.+4',}},
	legs=gear.Apogee_A_Legs,
    feet=gear.Apogee_A_Feet,
	right_ear="Gelos Earring",
    left_ear="Lugalbanda Earring",
	left_ring="Varar Ring +1",
	right_ring="Varar Ring +1",
    neck="Summoner's Collar +2",
    waist="Regal Belt",
	back=gear.SMN_MagCape,
}

sets.midcast.Pet.FlamingCrush.Acc = set_combine(sets.midcast.Pet.FlamingCrush,{
    right_ear="Beckoner's Earring +1",
})

	sets.midcast.Pet.BloodPactRage =  sets.midcast.Pet.PhysicalBloodPactRage
    -- Spirits cast magic spells, which can be identified in standard ways.

   -- sets.midcast.Pet.WhiteMagic = {legs="Summoner's Spats"}

    --sets.midcast.Pet['Elemental Magic'] = set_combine(sets.midcast.Pet.BloodPactRage, {legs="Summoner's Spats"})

   -- sets.midcast.Pet['Elemental Magic'].Resistant = {}
