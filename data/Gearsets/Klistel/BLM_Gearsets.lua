		include('include/mappings.lua')
		include('include/equipment.lua')
		include('include/utility.lua') 

		
  --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    
    -- Resting sets
    sets.resting = 
	{
    main="Chatoyant Staff",
    head="Orvail corona +1",
	body="Errant Hpl.",
    waist="Hierarch Belt",
    left_ear="Boroka Earring",
	}
    
    -- Idle sets
    sets.idle = 
	{
    main="Chatoyant Staff",
    sub="Elementa Grip",
    ammo="Phtm. Tathlum",
    head="Teal Chapeau",
    body="Igqira Weskit",
    hands="Teal Cuffs",
    legs="Teal Slops",
    feet="Herald's Gaiters",
    neck="Philomath Stole",
    waist="Al Zahbi Sash",
    left_ear="Moldavite Earring",
    right_ear="Loquac. Earring",
    left_ring="Diamond Ring",
    right_ring="Diamond Ring",
    back="Black Cape +1",
}
	
	sets.idle.Windurst = {body="Federation Aketon"}
	sets.idle.Adoulin = {body="Councilor's Garb"}
	sets.idle.Sandy= {body="Kingdom Aketon"}
		

  --------------------------------------
    -- Precast sets
    --------------------------------------		
		
    -- Fast cast sets for spells
    
    sets.fc = {
    head="Teal chapeau",
    body="Teal Saio", 
    hands="Teal Cuffs",
    legs="Teal Slops",
    feet="Teal Pigaches",
    right_ear="Loquac. Earring",
		}
		

		
    sets.Cure = {main="Chatoyant Staff", sub="Staff Strap"}
    
    --------------------------------------
    -- Midcast sets
    --------------------------------------


 
     -- damage set is for powerful nukes. +MAB and Int.
    -- Note that we only need to specify gear that
    -- differs from our idle set.
    sets.damage = {
        body        = "Igqira Weskit",
    }
 
     -- accuracy set is for enemies that resist our high
    -- damage nukes.  +Elemental Skill, MACC, and Int.
    sets.accuracy ={
        body        = "Igqira Weskit",
    }
 
     -- dark set is for drain, aspir, and other dark magic
    -- mostly +Dark Skill, MACC, and Int.
    sets.dark = {
        body        = "Igqira Weskit",
		ring1		= "Evanescence Ring",
    }
 
     -- enfeebling set is for sleep, blind, and others.
    -- mostly +Enfeebling Skill, MACC, and Int.
    sets.enfeebling = {
        body        = "Igqira Weskit",
    }
     
     -- enhancing set is mostly for stoneskin.
    -- mostly +Enhancing Skill and Mind.
    sets.enhancing = {

    }
 
     -- heal set for getting the most of our cures.
    -- mostly +Cure Potency and Mind.
    sets.heal = {
      
    }
 
     -- yellow set is for getting our HP into yellow
    -- in order to proc the latent of Sorcerer's Ring.
    sets.yellow = {

    }
 

 
    