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
------------------------------------------------------------------------------------------------
-- Precast sets
------------------------------------------------------------------------------------------------

sets.Enmity = {
    ammo = {name = "Sapience Orb"},
    head = {name = "Loess Barbuta +1", priority = 105},
    -- neck="Unmoving Collar +1",
    neck = {name = "Moonlight Necklace"},
    ear1 = {name = "Friomisi Earring"},
    ear2 = {name = "Cryptic Earring", priority = 40},
    body = gear.Souveran_C_Body,
    hands = {name = "Macabre Gaunt. +1", priority = 29},
    ring1 = {name = "Apeile Ring +1"},
    ring2 = {name = "Vexer Ring +1"},
    back = gear.PLD_Enmity_Cape,
    waist = {name = "Creed Baudrier", priority = 40},
    legs = gear.Souveran_C_Legs,
    feet = gear.Empy_Feet
}

sets.Enmity.SIRD = sets.Enmity
sets.Enmity.DT = sets.Enmity

-- Precast sets to enhance JAs
sets.precast.JA['Invincible'] = set_combine(sets.Enmity,
                                            {legs = gear.Relic_Legs})
sets.precast.JA['Holy Circle'] = set_combine(sets.Enmity, {feet = gear.AF_Feet})
sets.precast.JA['Sentinel'] = set_combine(sets.Enmity, {feet = gear.Relic_Feet})
sets.precast.JA['Rampart'] = set_combine(sets.Enmity, {}) -- head="Valor Coronet" (Also Vit?)
sets.precast.JA['Fealty'] = set_combine(sets.Enmity, {body = gear.Relic_Body})
sets.precast.JA['Divine Emblem'] = set_combine(sets.Enmity,
                                               {feet = gear.Empy_Feet})
sets.precast.JA['Cover'] = set_combine(sets.Enmity, {
    head = gear.AF_Head,
    body = gear.Relic_Body
})

sets.precast.JA['Invincible'].DT = set_combine(sets.Enmity.DT,
                                               {legs = gear.Relic_Legs})
sets.precast.JA['Holy Circle'].DT = set_combine(sets.Enmity.DT,
                                                {feet = gear.AF_Feet})
sets.precast.JA['Sentinel'].DT = set_combine(sets.Enmity.DT,
                                             {feet = gear.Relic_Feet})
sets.precast.JA['Rampart'].DT = set_combine(sets.Enmity.DT, {}) -- head="Valor Coronet" (Also Vit?)
sets.precast.JA['Fealty'].DT = set_combine(sets.Enmity.DT,
                                           {body = gear.Relic_Body})
sets.precast.JA['Divine Emblem'].DT = set_combine(sets.Enmity.DT,
                                                  {feet = gear.Empy_Feet})
sets.precast.JA['Cover'].DT = set_combine(sets.Enmity.DT, {
    head = gear.AF_Head,
    body = gear.Relic_Body
}) 

-- add mnd for Chivalry
-- TODO: Update this set
sets.precast.JA['Chivalry'] = {
    head = "Sulevia's Mask +2",
    neck = "Phalaina Locket",
    ear1 = "Nourish. Earring",
    ear2 = "Nourish. Earring +1",
    body = gear.AF_Body,
    hands = gear.Relic_Hands,
    ring1 = "Stikini Ring +1",
    ring2 = "Rufescent Ring",
    back = gear.PLD_Enmity_Cape,
    waist = "Luminary Sash",
    legs = gear.Carmine_D_Legs,
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
-- TODO: Update this set
sets.precast.Waltz = {
    head = gear.Carmine_D_Head,
    body = gear.AF_Body,
    ring1 = "Asklepian Ring",
    ring2 = "Valseur's Ring",
    waist = "Chaac Belt",
    legs = "Sulev. Cuisses +2"
}

sets.precast.JA['Animated Flourish'] = set_combine(sets.Enmity, {})

-- Fast cast sets for spells
sets.precast.FC = {
    ammo = "Sapience Orb",
    head = gear.Carmine_D_Head,
    neck = "Baetyl Pendant",
    ear1 = "Enchntr. Earring +1",
    ear2 = "Loquac. Earring",
    body = gear.AF_Body,
    hands = "Leyline Gloves",
    ring1 = "Weatherspoon Ring",
    ring2 = "Kishar Ring",
    back = gear.PLD_FC_Cape,
    -- waist = "Flume Belt +1",
    legs = "Enif Cosciales",
    feet = gear.Empy_Feet
}

sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC,
                                                 {waist = "Siegel Sash"})
-- TODO: Update this set
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
    head = "Nyame Helm",
    -- neck="Kgt. Beads +2",
    neck = "Fotia Gorget",
    ear1 = "Cessance Earring",
    ear2 = "Brutal Earring",
    body = "Nyame Mail",
    hands = "Nyame Gauntlets",
    ring1 = "Epaminondas's Ring",
    ring2 = "Cornelia's Ring",
    back = gear.PLD_WSD_Cape,
    waist = "Sailfi Belt +1",
    legs = "Nyame Flanchard",
    feet = "Nyame Sollerets"
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
sets.precast.WS['Chant du Cygne'].Acc = set_combine(sets.precast.WS.Acc, {
    neck = "Fotia Gorget",
    ear1 = "Mache Earring +1",
    ear2 = "Moonshade Earring"
})

sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
    neck = "Fotia Gorget",
    ear1 = "Ishvara Earring",
    ear2 = "Moonshade Earring"
})
sets.precast.WS['Savage Blade'].Acc = set_combine(sets.precast.WS.Acc, {
    ear1 = "Mache Earring +1",
    ear2 = "Telos Earring"
})

-- TODO: Update this set
sets.precast.WS['Flat Blade'] = {
    ammo = "Aurgelmir Orb +1",
    head = "Founder's Corona",
    neck = "Voltsurge Torque",
    ear1 = "Gwati Earring",
    ear2 = "Digni. Earring",
    body = "Flamma Korazin +2",
    hands = "Leyline Gloves",
    ring1 = "Defending Ring",
    ring2 = "Stikini Ring +1",
    back = "Ground. Mantle +1",
    waist = "Olseni Belt",
    legs = gear.Carmine_D_Legs,
    feet = "Founder's Greaves"
}
-- TODO: Update this set
sets.precast.WS['Flat Blade'].Acc = {
    ammo = "Aurgelmir Orb +1",
    head = "Flam. Zucchetto +2",
    neck = "Sanctity Necklace",
    ear1 = "Gwati Earring",
    ear2 = "Digni. Earring",
    body = "Flamma Korazin +2",
    hands = "Flam. Manopolas +2",
    ring1 = "Ramuh Ring +1",
    ring2 = "Ramuh Ring +1",
    back = "Ground. Mantle +1",
    waist = "Eschan Stone",
    legs = "Flamma Dirs +2",
    feet = "Flam. Gambieras +2"
}
-- TODO: Update this set
sets.precast.WS['Sanguine Blade'] = {
    ammo = "Dosis Tathlum",
    head = "Jumalik Helm",
    neck = "Sanctity Necklace",
    ear1 = "Friomisi Earring",
    ear2 = "Crematio Earring",
    body = "Jumalik Mail",
    hands = "Founder's Gauntlets",
    ring1 = "Metamor. Ring +1",
    ring2 = "Archon Ring",
    back = "Toro Cape",
    waist = "Fotia Belt",
    legs = "Flamma Dirs +2",
    feet = "Founder's Greaves"
}

sets.precast.WS['Sanguine Blade'].Acc = sets.precast.WS['Sanguine Blade']

-- TODO: Update this set
sets.precast.WS['Atonement'] = {
    ammo = "Sapience Orb",
    head = "Loess Barbuta +1",
    neck = "Fotia Gorget",
    ear1 = "Moonshade Earring",
    ear2 = "Ishvara Earring",
    body = gear.valorous_wsd_body,
    hands = gear.odyssean_wsd_hands,
    ring1 = "Defending Ring",
    ring2 = "Moonlight Ring",
    back = gear.PLD_Enmity_Cape,
    waist = "Fotia Belt",
    legs = "Flamma Dirs +2",
    feet = gear.Empy_Feet
}

sets.precast.WS['Atonement'].Acc = sets.precast.WS['Atonement']
sets.precast.WS['Spirits Within'] = sets.precast.WS['Atonement']
sets.precast.WS['Spirits Within'].Acc = sets.precast.WS['Atonement']

-- Swap to these on Moonshade using WS if at 3000 TP
sets.MaxTP = {ear1 = "Cessance Earring", ear2 = "Brutal Earring"}
sets.AccMaxTP = {ear1 = "Mache Earring +1", ear2 = "Telos Earring"}

--------------------------------------
-- Midcast sets
--------------------------------------

sets.midcast.Flash = set_combine(sets.Enmity, {})
sets.midcast.Flash.SIRD = set_combine(sets.Enmity.SIRD, {})
sets.midcast.Stun = set_combine(sets.Enmity, {})
sets.midcast.Stun.SIRD = set_combine(sets.Enmity.SIRD, {})
sets.midcast['Blue Magic'] = set_combine(sets.Enmity, {})
sets.midcast['Blue Magic'].SIRD = set_combine(sets.Enmity.SIRD, {})
sets.midcast.Cocoon = set_combine(sets.Enmity.SIRD, {})
-- TODO: Update this set
sets.midcast.Cure = {
    ammo = "Staunch Tathlum +1",
    head = "Loess Barbuta +1",
    neck = "Sacro Gorget",
    ear1 = "Nourish. Earring",
    ear2 = "Nourish. Earring +1",
    body = "Jumalik Mail",
    hands = "Macabre Gaunt. +1",
    ring1 = "Defending Ring",
    ring2 = "Moonlight Ring",
    back = "Solemnity Cape",
    waist = "Creed Baudrier",
    legs = gear.Carmine_D_Legs,
    feet = "Odyssean Greaves"
}
-- TODO: Update this set
sets.midcast.Cure.SIRD = {
    ammo = "Staunch Tathlum +1",
    head = "Souveran Schaller +1",
    neck = "Loricate Torque +1",
    ear1 = "Nourish. Earring",
    ear2 = "Nourish. Earring +1",
    body = "Jumalik Mail",
    hands = "Macabre Gaunt. +1",
    ring1 = "Defending Ring",
    ring2 = "Moonlight Ring",
    back = "Solemnity Cape",
    waist = "Creed Baudrier",
    legs = "Founder's Hose",
    feet = "Odyssean Greaves"
}
-- TODO: Update this set
sets.midcast.Cure.DT = {
    ammo = "Staunch Tathlum +1",
    head = gear.Souveran_D_Head,
    neck = "Loricate Torque +1",
    ear1 = "Odnowa Earring +1",
    ear2 = "Tuisto Earring",
    body = gear.AF_Body,
    hands = gear.Souveran_C_Hands,
    ring1 = "Gelatinous Ring +1",
    ring2 = "Moonlight Ring",
    back = "Moonlight Cape",
    waist = "Creed Baudrier",
    legs = gear.Souveran_C_Legs,
    feet = gear.Souveran_D_Feet
}
-- TODO: Update this set
sets.midcast.Reprisal = {
    ammo = "Staunch Tathlum +1",
    head = "Loess Barbuta +1",
    neck = "Unmoving Collar +1",
    ear1 = "Odnowa Earring +1",
    ear2 = "Tuisto Earring",
    body = gear.AF_Body,
    hands = gear.Souveran_C_Hands,
    ring1 = "Gelatinous Ring +1",
    ring2 = "Moonlight Ring",
    back = "Moonlight Cape",
    waist = "Creed Baudrier",
    legs = "Arke Cosc. +1",
    feet = gear.Souveran_D_Feet
}
-- TODO: Update this set
sets.Self_Healing = {
    ammo = "Staunch Tathlum +1",
    head = gear.Souveran_C_Head,
    neck = "Sacro Gorget",
    ear1 = "Nourish. Earring",
    ear2 = "Nourish. Earring +1",
    body = gear.Souveran_C_Body,
    hands = "Macabre Gaunt. +1",
    ring1 = "Gelatinous Ring +1",
    ring2 = "Moonlight Ring",
    back = "Moonlight Cape",
    waist = "Creed Baudrier",
    legs = gear.Souveran_C_Legs,
    feet = gear.Souveran_D_Feet
}
-- TODO: Update this setS
sets.Self_Healing.SIRD = {
    ammo = "Staunch Tathlum +1",
    head = gear.Souveran_C_Head,
    neck = "Loricate Torque +1",
    ear1 = "Nourish. Earring",
    ear2 = "Nourish. Earring +1",
    body = gear.Souveran_C_Body,
    hands = "Macabre Gaunt. +1",
    ring1 = "Defending Ring",
    ring2 = "Moonlight Ring",
    back = "Solemnity Cape",
    waist = "Null Belt",
    legs = "Founder's Hose",
    feet = "Odyssean Greaves"
}
-- TODO: Update this set
sets.Self_Healing.DT = {
    ammo = "Staunch Tathlum +1",
    head = gear.Souveran_C_Head,
    neck = "Loricate Torque +1",
    ear1 = "Odnowa Earring +1",
    ear2 = "Tuisto Earring",
    body = gear.AF_Body,
    hands = gear.Souveran_C_Hands,
    ring1 = "Gelatinous Ring +1",
    ring2 = "Moonlight Ring",
    back = "Moonlight Cape",
    waist = "Creed Baudrier",
    legs = gear.Souveran_C_Legs,
    feet = gear.Souveran_D_Feet
}

sets.Cure_Received = {
    hands = gear.Souveran_C_Hands,
    feet = gear.Souveran_C_Body
}
sets.Self_Refresh = {waist = "Gishdubar Sash"}
-- TODO: Update this set
sets.midcast['Enhancing Magic'] = {
    ammo = "Staunch Tathlum +1",
    head = gear.Carmine_D_Head,
    neck = "Melic Torque",
    ear1 = "Andoaa Earring",
    ear2 = "Mimir Earring",
    body = "Shab. Cuirass +1",
    hands = "Leyline Gloves",
    ring1 = "Defending Ring",
    ring2 = "Kishar Ring",
    back = "Merciful Cape",
    waist = "Olympus Sash",
    legs = gear.Carmine_D_Legs,
    feet = "Odyssean Greaves"
}
-- TODO: Update this set
sets.midcast['Enhancing Magic'].SIRD = {
    ammo = "Staunch Tathlum +1",
    head = "Souv. Schaller +1",
    neck = "Melic Torque",
    ear1 = "Andoaa Earring",
    ear2 = "Tuisto Earring",
    body = "Shab. Cuirass +1",
    hands = gear.Souveran_C_Hands,
    -- hands = "Regal Gauntlets",
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
    hands = gear.Souveran_C_Hands,
    back = "Weard Mantle",
    feet = gear.Souveran_D_Feet
})
sets.midcast.Phalanx.SIRD = set_combine(sets.midcast['Enhancing Magic'].SIRD, {
    hands = gear.Souveran_C_Hands,
    back = "Weard Mantle",
    feet = gear.Souveran_D_Feet
})
sets.midcast.Phalanx.DT = set_combine(sets.midcast.Phalanx.SIRD, {})

--------------------------------------
-- Idle/defense/etc sets
--------------------------------------

-- Idle sets
sets.idle = {
    ammo = "Staunch Tathlum +1",
    head = gear.Empy_Head,
    neck = "Combatant's Torque",
    ear1 = "Creed Earring",
    ear2 = "Foresti Earring",
    body = "Sakpata's Breastplate",
    hands = gear.Empy_Hands,
    ring1 = {name = "Moonlight Ring", bag = "wardrobe3"},
    ring2 = "Vexer Ring +1",
    back = gear.PLD_Enmity_Cape,
    waist = "Creed Baudrier",
    -- waist = "Carrier's Sash",
    legs = gear.Empy_Legs,
    feet = gear.AF_Feet
}

-- TODO: Update this set
sets.idle.Refresh = {
    ammo = "Homiliary",
    head = "Jumalik Helm",
    neck = "Coatl Gorget +1",
    ear1 = "Etiolation Earring",
    ear2 = "Ethereal Earring",
    body = "Jumalik Mail",
    hands = gear.Souveran_C_Hands,
    ring1 = "Defending Ring",
    ring2 = "Dark Ring",
    back = "Moonlight Cape",
    waist = "Flume Belt +1",
    legs = gear.Souveran_C_Legs,
    feet = gear.Relic_Feet
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

sets.engaged.DW = sets.engaged

sets.engaged.Tank = sets.idle

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

--------------------------------------
-- Defense sets
--------------------------------------

-- Extra defense sets.  Apply these on top of melee or defense sets.
sets.Knockback = {}
sets.MP = {
    head = gear.Empy_Head,
    neck = "Coatl Gorget +1",
    ear2 = "Ethereal Earring",
    waist = "Flume Belt +1",
    feet = gear.AF_Feet
}
sets.passive.AbsorbMP = {
    head = gear.Empy_Head,
    neck = "Coatl Gorget +1",
    ear2 = "Ethereal Earring",
    waist = "Flume Belt +1",
    feet = gear.AF_Feet
}
sets.MP_Knockback = {}
sets.Twilight = {head = "Twilight Helm", body = "Twilight Mail"}

-- Weapons sets
sets.weapons.NaeglingBlurred = {main = "Naegling", sub = "Blurred Shield +1"}
sets.weapons.DualWeapons = {main = "Naegling", sub = "Demersal Degen +1"}
sets.weapons.NaeglingAegis = {main = "Naegling", sub = "Aegis"}
sets.weapons.NaeglingDuban = {main = "Naegling", sub = "Duban"}

-- Max DT and dump as much HP as I can
sets.defense.PDT_HP = {
    ammo = "Staunch Tathlum +1",
    head = gear.Souveran_D_Head,
    neck = "Loricate Torque +1",
    ear1 = "Odnowa Earring +1",
    ear2 = "Tuisto Earring",
    body = gear.AF_Body,
    hands = gear.Souveran_C_Hands,
    ring1 = "Gelatinous Ring +1",
    ring2 = "Moonlight Ring",
    back = "Moonlight Cape",
    waist = "Creed Baudrier",
    legs = "Arke Cosc. +1",
    feet = gear.Souveran_D_Feet
}

sets.defense.MDT_HP = sets.defense.PDT_HP

-- TODO: Update this set
sets.defense.MEVA = {
    ammo = "Staunch Tathlum +1",
    head = gear.Souveran_D_Head,
    neck = "Loricate Torque +1",
    ear1 = "Odnowa Earring +1",
    ear2 = "Tuisto Earring",
    body = gear.AF_Body,
    hands = gear.Souveran_C_Hands,
    ring1 = "Gelatinous Ring +1",
    ring2 = "Moonlight Ring",
    back = "Moonlight Cape",
    waist = "Creed Baudrier",
    legs = "Arke Cosc. +1",
    feet = gear.Souveran_D_Feet
}

sets.defense.Tank = sets.idle

-- TODO: Update this set
sets.defense.MEVA = {
    ammo = "Staunch Tathlum +1",
    head = "Founder's Corona",
    neck = "Warder's Charm +1",
    ear1 = "Etiolation Earring",
    ear2 = "Sanare Earring",
    body = "Tartarus Platemail",
    hands = "Leyline Gloves",
    ring1 = "Vengeful Ring",
    ring2 = "Purity Ring",
    back = gear.PLD_FC_Cape,
    waist = "Asklepian Belt",
    legs = gear.odyssean_fc_legs,
    feet = "Hippo. Socks +1"
}
-- TODO: Update this set
sets.defense.Death = {
    ammo = "Staunch Tathlum +1",
    head = "Founder's Corona",
    neck = "Loricate Torque +1",
    ear1 = "Etiolation Earring",
    ear2 = "Sanare Earring",
    body = "Tartarus Platemail",
    hands = "Leyline Gloves",
    ring1 = "Warden's Ring",
    ring2 = "Shadow Ring",
    back = gear.PLD_FC_Cape,
    waist = "Asklepian Belt",
    legs = gear.odyssean_fc_legs,
    feet = "Odyssean Greaves"
}
-- TODO: Update this set
sets.defense.Charm = {
    ammo = "Staunch Tathlum +1",
    head = "Founder's Corona",
    neck = "Unmoving Collar +1",
    ear1 = "Etiolation Earring",
    ear2 = "Sanare Earring",
    body = "Tartarus Platemail",
    hands = "Leyline Gloves",
    ring1 = "Vengeful Ring",
    ring2 = "Purity Ring",
    back = "Solemnity Cape",
    waist = "Asklepian Belt",
    legs = gear.Souveran_C_Legs,
    feet = "Odyssean Greaves"
}

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
