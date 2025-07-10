gear = {}

sets.idle = { --                                    PDT MDT
ammo="Aurgelmir Orb +1",
head="Kengo Hachimaki",
body="Nyame Mail",
hands="Flam. Manopolas +2",
legs="Flamma Dirs +2",
feet="Volte Boots",
neck="Combatant's Torque",
waist="Chaac Belt",
left_ear="Cessance Earring",
right_ear="Telos Earring",
left_ring="Niqmaddu Ring",
right_ring="Chirich Ring +1",
    }



    sets.precast = {}

    sets.engaged = { 
    ammo="Aurgelmir Orb +1",
    head="Kengo Hachimaki",
    body="Nyame Mail",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Volte Boots",
    neck="Combatant's Torque",
    waist="Chaac Belt",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    }




    state.MainHand = M{['description']='NormalWeapons', 'ShiningOne', 'Naegling'}
    state.WeaponLock = M(false, 'Weapon Lock')

    
    state.abyssea_main_hands = M{
        ['description'] = 'AbysseaWeapons',
        'BronzeKnife',
        'WaxSword',
        'RustyGreatsword',
        'BronzeZaghnal',
        'Harpoon',
        'FelineHagoita',
        'AshStaff',
        'Debahocho',
        'Mutsunokami',
    }

    --- weapons
    sets.BronzeKnife = {
        main="Bronze Knife"
    }
    sets.WaxSword = {
        main="Wax Sword"
    }
    sets.RustyGreatsword = {
        main="Rusty Greatsword"
    }
    sets.BronzeZaghnal = {
        main="Bronze Zaghnal"
    }
    sets.Harpoon = {
        main="Harpoon"
    }
    sets.FelineHagoita = {
        main="Feline Hagoita"
    }
    sets.AshStaff = {
        main="Ash Staff"
    }
    sets.Debahocho = {
        main="Debahocho"
    }
    sets.Mutsunokami = {
        main="Mutsunokami"
    }
    sets.ShiningOne = {
        main="Shining One",
        sub="Utu Grip"
    }
    sets.Naegling = {
        main="Naegling"
    }