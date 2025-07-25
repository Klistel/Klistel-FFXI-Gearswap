-- Feary's Equipment
-- Created On 1/12/2014
-- Last Update: 4/12/2016
-- To Do:
-- Escha/Reisen Gear
--
--
--

-- Augmented Gear
	Aug = {}
	-- Dark Rings
	-- Feary
	Aug.Darkring1 = {name="Dark Ring",augments={"Phys. dmg. taken -5%","Magic dmg. taken -3%"}}
	Aug.Darkring2 = {name="Dark Ring",augments={"Phys. dmg. taken -4%","Magic dmg. taken -4%"}}
	
	-- Aniyah
	Aug.Darkring1.Aniyah = {name="Dark Ring",augments={"Phys. dmg. Taken -4%", "Breath dmg. taken -4%"}}
	Aug.Darkring2.Aniyah = {name="Dark Ring",augments={"Spell interruption rate down 3%", "Magic dmg. taken -4%"}}
	
	-- Derion
	Aug.Darkring1.Derion = {name="Dark Ring",augments={"Breath dmg. Taken -4%","Phys. dmg. Taken -5%", "Magic dmg. taken -3%"}}
	--Aug.Darkring2.Derion = {name="Dark Ring",augments={"Spell interruption rate down 3%", "Magic dmg. taken -4%"}}
	
	-- Firetoplay
	--Aug.Darkring1.Firetoplay = {name="Dark Ring",augments={"Phys. dmg. Taken -4%", "Breath dmg. taken -4%"}}
	--Aug.Darkring2.Firetoplay = {name="Dark Ring",augments={"Spell interruption rate down 3%", "Magic dmg. taken -4%"}}
	
	--Carrisa
	Aug.Darkring1.Carrisa = {name="Dark Ring", augments={"Breath dmg. taken -4%", "Phys. dmg. taken -6%", "Magic dmg. taken -5%"}}
	Aug.Darkring2.Carrisa = {name="Dark Ring", augments={"Phys. dmg. taken -4%", "Magic dmg. taken -5%"}}

	-- WKR JSE Capes - Some will be replaced by JSE Ambuscade Capes.
	-- Either Ideal Minimum Augments are listed.
	-- "?" means i dont know because i havent researched it.
	
	Aug.Cape = {}
	-- dont bother lol
	Aug.Cape.MNK = {name="Anchorite Mantle"}
	
	-- crit damage +3 acc +7
	Aug.Cape.WAR = {name="Mauler's Cape"}
	
	-- cure pot +4/skill +10
	Aug.Cape.WHM = {name="Mending Cape", augments={'Mac. Acc.+7','Healing Magic skill +2','Enha. mag. skill +3'}}
	
	-- BlM
	-- elemental skill  dark magic skill
	Aug.Cape.BLM = {name="Bane Cape"}
	Aug.Cape.BLM.MACC = {name="Taranus's Cape", augments={'MP+60','"Mag. Atk. Bns."+10"','Mag. Acc.+20/Mag.DMG.+20',}}
	Aug.Cape.BLM.Fastcast = {name="Sucello's Cape"}
	
	--RDM
	-- Duration 10-20
	Aug.Cape.RDM = {name="Ghostfyre Cape"}
	Aug.Cape.RDM.Macc = {name="Sucello's Cape"}
	Aug.Cape.RDM.Fastcast = {name="Sucello's Cape"}
	
	-- THF
	-- Dual Wield +5
	Aug.Cape.THF = {name="Canny Cape", augments={}}
	Aug.Cape.THF.STP = {name="Toutalis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}}
	Aug.Cape.THF.WS = {name="Toutalis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
	Aug.Cape.THF.Crit = {name="Toutalis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}}
	
	-- Phalanx +5
	Aug.Cape.PLD = {name="Weard Mantle"}
	Aug.Cape.PLD.TP = {name="Rudianos's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}}
	Aug.Cape.PLD.WS = {name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
	Aug.Cape.PLD.Enmity = {name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','MND+10','Enmity+10',}}
	Aug.Cape.PLD.FC = {name="Rudianos's Mantle", augments={'MND+19','Eva.+13 /Mag. Eva.+13','"Fast Cast"+10',}}
	Aug.Cape.PLD.MAB = {name="Rudianos's Mantle", augments={'Mag. Acc+20 /Mag. Dmg.+20',}}
	
	-- DRK
	-- Drain/Aspir
	Aug.Cape.DRK = {name="Niht Mantle"}
	
	-- pet dt-5
	Aug.Cape.BST = {name="Pastoralist's Mantle"}

	-- Magic acc +7
	Aug.Cape.BRD = {name="Rhapsode's Cape", augments={'HP+24','Mag. Acc.+7','Enmity-4','Damage taken-1%',}}
	-- Magic acc
	Aug.Cape.BRD.MACC = {name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+3','"Fast Cast"+10',}}

	-- RNG
	Aug.Cape.RNG = {name="Lutian Cape", augments={}}
	-- STP
	Aug.Cape.RNG.TP = {name="Belenus's Cape"}
	Aug.Cape.RNG.WS = {name="Belenus's Cape"}
	Aug.Cape.RNG.Snapshot = {name="Belenus's Cape"}
	
	-- SAM
	-- stp+3 mediate
	Aug.Cape.SAM = {name="Tahaka Mantle"}
	
	-- NIN
	-- WSD +3
	Aug.Cape.NIN = {name="Yokaze Mantle"}
	
	--DRG
	-- Breath +10 wsd+5
	Aug.Cape.DRG = {name="Updraft Mantle"}
	Aug.Cape.DRG.TP = {name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Store TP"+10',}}
	Aug.Cape.DRG.WSD = {name="Brigantia's Mantle",}
	Aug.Cape.DRG.Breath = {name="Brigantia's Mantle",}
	
	-- skill
	Aug.Cape.SMN = {name="Coveyence Cape", augments="Summoning Skill +5"}
	
	--BLU
	-- Blu Skill +10
	Aug.Cape.BLU = {name="Cornflower Cape", augments={}}
	-- DEX ACC STP
	Aug.Cape.BLU.TP = {name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}}
	-- STR ACC WSD
	Aug.Cape.BLU.WS = {name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
	-- INT MACC MAB
	Aug.Cape.BLU.MB = {name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}}
	-- Fastcast
	Aug.Cape.BLU.FC = {name="Rosmerta's Cape", augments={'"Fast Cast"+10',}}
	
	-- Phantom Roll -5
	Aug.Cape.COR = {name="Gunslinger's Cape"}
	Aug.Cape.COR.TP = {name="Camulus's Mantle"}
	Aug.Cape.COR.WS = {name="Camulus's Mantle"}
	Aug.Cape.COR.Snapshot = {name="Camulus's Mantle"}
	Aug.Cape.COR.Melee = {name="Camulus's Mantle"}
	Aug.Cape.COR.Melee.WS = {name="Camulus's Mantle"}
	
	-- ?
	Aug.Cape.PUP = {}
	
	-- ?
	Aug.Cape.DNC = {name="Toetapper's Mantle"}
	
	-- ?
	Aug.Cape.SCH = {name="Bookworm's Cape"}
	
	-- skill +10  duration + 10-20
	Aug.Cape.GEO = {name="Lifestream Cape"}
	Aug.Cape.GEO.MACC = {name="Nantosuetta's Cape"}
	Aug.Cape.GEO.Fastcast = {name="Nantosuetta's Cape"}
	
	-- Enmity +7 
	-- Ogma's cape - Enmity + 10
	Aug.Cape.RUN = {name="Evasionist's Cape"}
		
	
	-- Skirmish
	--
	-- Ignore these if you dont know what they mean.
	-- Alot of this gear has been replaced by Reisen/Escha Gear.
	
	Aug.Skirmish = {}
	
	-- Weapons
	Aug.Skirmish.Keraunos = {}
	
	-- Staff
	-- Nuking
	Aug.Skirmish.Keraunos.MAB = {}
	Aug.Skirmish.Keraunos.Macc = {}
	-- snow acc? leaf perp cost dusk?
	Aug.Skirmish.Keraunos.Perp = {}
	-- pet mab leaf db/crit dusk bpd +10
	Aug.Skirmish.Keraunos.MBPD = {}
	-- siphon?
	
	-- Armor
	-- Yorcia 
	-- Hagondes 
	Aug.Skirmish.Hagondes = {}
	Aug.Skirmish.Hagondes.Head = {}
	Aug.Skirmish.Hagondes.Body = {}
	Aug.Skirmish.Hagondes.Hands = {}
	Aug.Skirmish.Hagondes.Legs = {}
	Aug.Skirmish.Hagondes.Feet = {}
	
	Aug.Skirmish.Hagondes.Legs.MAB = {name="Hagondes Pants +1",augments={"", ""}}
	
	-- Alluvion Skirmish
	-- Acro - WAR PLD DRK SAM DRG
	Aug.Skirmish.Acro = {}
	Aug.Skirmish.Acro.Head = {}
	Aug.Skirmish.Acro.Body = {}
	Aug.Skirmish.Acro.Hands = {}
	Aug.Skirmish.Acro.Legs = {}
	Aug.Skirmish.Acro.Feet = {}
	
	-- STP Snow: Att/Acc Leaf:STP Dusk: STR
	-- body?
	Aug.Skirmish.Acro.Body.STP = {}
	Aug.Skirmish.Acro.Hands.STP = {}
	Aug.Skirmish.Acro.Legs.STP = {}
	Aug.Skirmish.Acro.Feet.STP = {}
	
	-- TP - Snow: Att/Acc Leaf:D.Atk Dusk: Crit Rate
	Aug.Skirmish.Acro.Head.TP = {}
	Aug.Skirmish.Acro.Body.TP = {}
	Aug.Skirmish.Acro.Hands.TP = {}
	Aug.Skirmish.Acro.Legs.TP = {}
	Aug.Skirmish.Acro.Feet.TP = {}
	
	-- WS - Snow:acc/atk Leaf:WSacc Dusk:WSD
	Aug.Skirmish.Acro.Head.WS = {}
	Aug.Skirmish.Acro.Body.WS = {}
	Aug.Skirmish.Acro.Legs.WS = {}
	Aug.Skirmish.Acro.Feet.WS = {}
	
	-- DRG Breath/BST Macc - Snow: Pet Macc 20 Leaf: Breath +8 Dusk: Pet: haste
	Aug.Skirmish.Acro.Body.Breathe = {}
	Aug.Skirmish.Acro.Hands.Breathe = {}
	Aug.Skirmish.Acro.Legs.Breathe = {}
	Aug.Skirmish.Acro.Feet.Breathe = {}
	
	-- BST Delay - Snow: pet MAB Leaf: CALL BEAST DELAY Dusk:MND head/legs
	-- PET Ready/sic - body/hand/feet pet.mab only
	Aug.Skirmish.Acro.Head.Delay = {}
	Aug.Skirmish.Acro.Body.Delay = {}
	Aug.Skirmish.Acro.Hands.Delay = {}
	Aug.Skirmish.Acro.Legs.Delay = {}
	Aug.Skirmish.Acro.Feet.Delay = {}
	
	-- Yorium - WAR PLD DRK
	Aug.Skirmish.Yorium = {}
	Aug.Skirmish.Yorium.Head = {}
	Aug.Skirmish.Yorium.Body = {}
	Aug.Skirmish.Yorium.Hands = {}
	Aug.Skirmish.Yorium.Legs = {}
	Aug.Skirmish.Yorium.Feet = {}
	
	-- DT Snow: Att/acc Leaf:DA Dusk: DT 
	Aug.Skirmish.Yorium.Head.DT ={ name="Yorium Barbuta", augments={'Accuracy+17 Attack+17','Damage taken-2%',}}
	Aug.Skirmish.Yorium.Body.DT ={ name="Yorium Cuirass", augments={'Accuracy+25','Damage taken-3%',}}
	Aug.Skirmish.Yorium.Hands.DT ={ name="Yorium Gauntlets", augments={'Accuracy+21','Damage taken-3%',}}
	Aug.Skirmish.Yorium.Legs.DT ={ name="Yorium Cuisses", augments={'Accuracy+20','Damage taken-3%',}}
	Aug.Skirmish.Yorium.Feet.DT ={ name="Yorium Sabatons", augments={'Accuracy+18','Damage taken-2%',}}
	
	-- Enmity - Snow ? Leaf: Enmity Dusk: Phalanx 
	Aug.Skirmish.Yorium.Head.Enmity = {}
	Aug.Skirmish.Yorium.Hands.Enmity = {}
	Aug.Skirmish.Yorium.Legs.Enmity = {}
	Aug.Skirmish.Yorium.Feet.Enmity = {}
		
	-- Taeon
	Aug.Skirmish.Taeon = {}
	Aug.Skirmish.Taeon.Head = {}
	Aug.Skirmish.Taeon.Body = {}
	Aug.Skirmish.Taeon.Hands = {}
	Aug.Skirmish.Taeon.Legs = {}
	Aug.Skirmish.Taeon.Feet = {}
	
	-- Snowslit:Att/Acc Leaf: TA Dusk: STR/DEX
	Aug.Skirmish.Taeon.Head.TA = { name="Taeon Chapeau", augments={'Accuracy+19 Attack+19',}}
	Aug.Skirmish.Taeon.Body.TA = { name="Taeon Tabard", augments={'Accuracy+15 Attack+15',}}
	Aug.Skirmish.Taeon.Hands.TA ={ name="Taeon Gloves", augments={'Accuracy+16 Attack+16','"Triple Atk."+2',}}
	Aug.Skirmish.Taeon.Legs.TA = {}
	Aug.Skirmish.Taeon.Feet.TA = { name="Taeon Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+1',}}
	
	-- Snow: acc + att Leaf: DW Dusk: Crit
	Aug.Skirmish.Taeon.Head.DW = {  name="Taeon Chapeau"}
	Aug.Skirmish.Taeon.Body.DW = {  name="Taeon Tabard"}
	Aug.Skirmish.Taeon.Hands.DW = { name="Taeon Gloves"}
	Aug.Skirmish.Taeon.Legs.DW = { name="Taeon Tights", augments={'Accuracy+25','"Dual Wield"+5',}}
	Aug.Skirmish.Taeon.Feet.DW = { name="Taeon Boots"}
	
	-- snow: macc/mab Leaf: Fastcast Dusk:WSD
	Aug.Skirmish.Taeon.Body.FC = {}
	Aug.Skirmish.Taeon.Hands.FC = {}
	Aug.Skirmish.Taeon.Legs.FC = {}
	Aug.Skirmish.Taeon.Feet.FC = {}
	
	-- Leaf:Snapshot
	Aug.Skirmish.Taeon.Feet = {}
	
	-- Snow: Racc/Ratt leaf:Crit rate dusk: crit damage
	Aug.Skirmish.Taeon.Head = {}
	Aug.Skirmish.Taeon.Feet = {}
	
	-- BST
	-- pet TP - Snow:Pet: acc/att Leaf Pet DA +5 Dusk pet haste +5
	-- hands Snow Attack +25
	Aug.Skirmish.Taeon.Head.PET = {}
	Aug.Skirmish.Taeon.Body.PET = {}
	Aug.Skirmish.Taeon.Hands.PET = {}
	Aug.Skirmish.Taeon.Legs.PET = {}
	Aug.Skirmish.Taeon.Feet.PET = {}
	
	-- Pet Idle DT - Snow: def +25 Leaf: regen +3 Dusk; pet dt
	Aug.Skirmish.Taeon.Head.PDT = {}
	Aug.Skirmish.Taeon.Body.PDT = {}
	Aug.Skirmish.Taeon.Hands.PDT = {}
	Aug.Skirmish.Taeon.Legs.PDT = {}
	Aug.Skirmish.Taeon.Feet.PDT = {}
	
	-- Helios - WHM BLM RDM SMN BLU SCH GEO
	Aug.Skirmish.Helios = {}
	Aug.Skirmish.Helios.Head = {}
	Aug.Skirmish.Helios.Body = {}
	Aug.Skirmish.Helios.Hands = {}
	Aug.Skirmish.Helios.Legs = {}
	Aug.Skirmish.Helios.Feet = {}
	
	-- MAB 
	Aug.Skirmish.Helios.Head.MAB = {name="Helios Band",augments={"", ""}}
	Aug.Skirmish.Helios.Hands.MAB = { name="Helios Gloves", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic crit. hit rate +7'}}
	Aug.Skirmish.Helios.Feet.MAB = { name="Helios Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15'}}
	
	--SMN
	
	-- avatar TP
	-- prep cost pet haste pet acc/racc
	Aug.Skirmish.Helios.Hands.Perp = {}
	-- pet haste  pet DA  pet atk/ratk
	Aug.Skirmish.Helios.Feet.Pet = {}
	
	-- Snow:pet mab 30 Leaf:pet crit Dusk:Blood Pact Damage +7
	Aug.Skirmish.Helios.Head.MBPD = {}
	Aug.Skirmish.Helios.Body.MBPD = {}
	Aug.Skirmish.Helios.Hands.MBPD = {}
	Aug.Skirmish.Helios.Legs.MBPD = {}
	Aug.Skirmish.Helios.Feet.MBPD = {}
	
	-- Snow: pet att/ratk Leaf:pet crit Dusk:BPD 7
	Aug.Skirmish.Helios.Head.PBPD = {}
	Aug.Skirmish.Helios.Hands.PBPD = {}
	Aug.Skirmish.Helios.Legs.PBPD = {}
	Aug.Skirmish.Helios.Feet.PBPD = {}
	
	-- Snow:pet macc 30 leaf:boon Duskorb: smn skill
	Aug.Skirmish.Helios.Head.BPbuff = {}
	Aug.Skirmish.Helios.Body.BPbuff = {}
	Aug.Skirmish.Helios.Hands.BPbuff = {}
	Aug.Skirmish.Helios.Legs.BPbuff = {}
	Aug.Skirmish.Helios.Feet.BPbuff = {}
	
	
	-- Telchine - WHM BLM RDM BRD SMN BLU SCH GEO
	Aug.Skirmish.Telchine = {}
	Aug.Skirmish.Telchine.Head = {}
	Aug.Skirmish.Telchine.Body = {}
	Aug.Skirmish.Telchine.Hands = {}
	Aug.Skirmish.Telchine.Legs = {}
	Aug.Skirmish.Telchine.Feet = {}
	
	-- Snow:  Leaf: Cure Pot Dusk: Enhancing pot
	Aug.Skirmish.Telchine.Hands.Cure = { name="Telchine Gloves", augments={'"Cure" potency +8%',}}
	-- Snow: Macc Leaf:Songs Dusk
	Aug.Skirmish.Telchine.Feet.Song = {name="Telchine Pigaches", augments={'Mag. Acc.+20','Song spellcasting time -7%',}}
	
	-- Smn
	-- Elemental siphon
	Aug.Skirmish.Telchine.Head.Siphon = {}
	Aug.Skirmish.Telchine.Body.Siphon = {}
	Aug.Skirmish.Telchine.Hands.Siphon = {}
	Aug.Skirmish.Telchine.Legs.Siphon = {}
	
-- Magian Staves
	-- Elemental Precast
		Fastcast = {}
		Fastcast.Staff = {['Light']='Arka I', ['Dark']='Xsaeta I', ['Fire']='Atar I', ['Ice']='Vourukasha I',
				['Wind']='Vayuvata I', ['Earth']='Vishrava I', ['Lightning']='Apamajas I', ['Water']='Haoma I', ['Thunder']='Apamajas I'}
		Fastcast.Staff.ID = {['Light']=19932, ['Dark']=19936, ['Fire']=19914, ['Ice']=19917,
				['Wind']=19920, ['Earth']=19923, ['Lightning']=19926, ['Water']=19929, ['Thunder']=19926}
	-- Elemental Recast
		Recast = {}
		Recast.Staff = {['Light']='Arka II', ['Dark']='Xsaeta II', ['Fire']='Atar II', ['Ice']='Vourukasha II',
				['Wind']='Vayuvata II', ['Earth']='Vishrava II', ['Lightning']='Apamajas II', ['Water']='Haoma II', ['Thunder']='Apamajas II'}
		Recast.Staff.ID = {['Light']=19933, ['Dark']=19937, ['Fire']=19915, ['Ice']=19918,
				['Wind']=19921, ['Earth']=19924, ['Lightning']=19927, ['Water']=19930, ['Thunder']=19927}

	-- Perp Cost Staves
		Prep = {}
		Prep.Staff = {['Light']='Arka III', ['Dark']='Xsaeta III', ['Fire']='Atar III', ['Ice']='Vourukasha III',
				['Wind']='Vayuvata III', ['Earth']='Vishrava III', ['Lightning']='Apamajas III', ['Water']='Haoma III', ['Thunder']='Apamajas III'}
		Prep.Staff.ID = {['Light']=19934, ['Dark']=19938, ['Fire']=19916, ['Ice']=19919,
				['Wind']=19922, ['Earth']=19925, ['Lightning']=19928, ['Water']=19931, ['Thunder']=19928}

-- Elemental Gear 
	elemental = {}
		
	elemental.Obi = {['Light']='Hachirin-no-Obi', ['Dark']='Hachirin-no-Obi', ['Fire']='Hachirin-no-Obi', ['Ice']='Hachirin-no-Obi', ['Wind']='Hachirin-no-Obi',
			['Earth']='Hachirin-no-Obi', ['Lightning']='Hachirin-no-Obi', ['Water']='Hachirin-no-Obi'}

	elemental.Gorget = {['Light']='Fotia Gorget', ['Dark']='Fotia Gorget', ['Fire']='Fotia Gorget', ['Ice']='Fotia Gorget',
			['Wind']='Fotia Gorget', ['Earth']='Fotia Gorget', ['Lightning']='Fotia Gorget', ['Water']='Fotia Gorget'}

	elemental.Belt = {['Light']='Fotia Belt', ['Dark']='Shadow Belt', ['Fire']='Fotia Belt', ['Ice']='Fotia Belt',
			['Wind']='Fotia Belt', ['Earth']='Fotia Belt', ['Lightning']='Fotia Belt', ['Water']='Fotia Belt'}
	
			



-- list of weaponskills that use ammo
bow_gun_weaponskills = S{"Flaming Arrow", "Piercing Arrow", "Dulling Arrow", "Sidewinder", "Blast Arrow",
						"Arching Arrow", "Empyreal Arrow", "Refulgent Arrow", "Apex Arrow", "Namas Arrow", "Jishnu's Radiance",
						"Hot Shot", "Split Shot", "Sniper Shot", "Slug Shot", "Blast Shot", "Heavy Shot", "Detonator",
						"Numbing Shot", "Last Stand", "Coronach", "Trueflight", "Leaden Salute", "Wildfire"}

-- list of weaponskills that can be used at greater than melee range
ranged_weaponskills = S{"Flaming Arrow", "Piercing Arrow", "Dulling Arrow", "Sidewinder", "Arching Arrow",
"Empyreal Arrow", "Refulgent Arrow", "Apex Arrow", "Namas Arrow", "Jishnu's Radiance",
"Hot Shot", "Split Shot", "Sniper Shot", "Slug Shot", "Heavy Shot", "Detonator", "Last Stand",
"Coronach", "Trueflight", "Leaden Salute", "Wildfire",
"Myrkr"}

