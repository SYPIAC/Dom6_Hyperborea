#modname "Hyperborea - The Polar Ascendants"
#description "A nation of mystics and warriors from the frozen north, drawing power from the arctic winds and ancient polar magic."
#version 1.0
#icon "./hyperborea_banner.tga"

		------------------------------------
		----------                ----------
		---------> MOD ID NUMBERS <---------
		----------                ----------
		------------------------------------

-- Nation IDs: 166
-- Spell IDs: N/A
-- Magic Site IDs: 1450 - 1499
-- Unit IDs: Determined by the game
-- Item IDs: N/A
-- Weapon IDs: N/A
-- Armor IDs: N/A
-- Event IDs: N/A
-- Event ID for Spells: N/A


		------------------------------------
		----------                ----------
		--------->   NATION DEF   <---------
		----------                ----------
		------------------------------------

#selectnation 166
#clear
#name "Hyperborea"

-- Add recruitment for units
#addrecunit "Snow-Ape Slave"
#addrecunit "Snow-Ape Archer"
#addrecunit "Child of the Midnight Sun"
#addrecunit "Viras Kern"

-- Add recruitment for commanders
#addreccom "Boreadae Taskmaster"
#addreccom "Viras Communicant"

-- Heroes
#hero1 "Abaris the Healer"

#epithet "The Polar Ascendants"
#era 1
#brief "An extraplanar race of divine beings manifesting in Elysium, slowly succumbing to material corruption"
#descr "In the eternal ice of Elysium's crown stands Hyperborea, where the Boreadae have chosen to manifest their divine forms in pursuit of the Pantokrator's throne. These extraplanar beings of pure celestial essence chose the furthest north as their foothold, believing the purifying cold would help preserve their divine nature against the corrupting influence of the material realm.

The Boreadae quickly established dominion over the native Snow-Apes, seeing the bestial creatures as useful tools in their quest for power. However, as generations passed, those Boreadae who remained longest in physical form began to show signs of degeneration. The corrupting energies emanating from the South Pole gradually eroded their divine essence, and some foolishly diluted their celestial blood through union with material beings. These degraded Boreadae became the Viras, beings little better than humans, though they retain enough of their ancestral nature to serve as useful vessels in magical rituals.

Hyperborea's strict hierarchy is ruled by ever diminishing numbers of half-giants, supported by humanlike Viras, and enforced by bestial Snow-Apes. They desperately seek the Pantokrator's throne before their divine essence is fully lost."
#summary "A strict hierarchy, with Boreadae half-giants at the top, degenerated Viras in the middle, and enslaved Snow-Apes at the bottom.
Preferences: Cold scale +3
Military: Divine warriors, humanlike Viras, and cheap enslaved beast-men
Magic: Strong Water, Glamour. Some Astral, Blood, and Fire.
Scales & Blesses: Cold limit +1
Buildings: Start with an ice castle, rest are regular. Forts protect population from deaths from cold.
Priests: Moderate"

#flag "./hyperborea_flag.tga"

-- Basic color settings
#color 0.7 0.8 0.9
#secondarycolor 0.2 0.3 0.4

-- Nation specific preferences
#idealcold 3
#moreheat -1
#moremagic 1
#fortcoldscaleres 2
#forestsurvival
#mountainsurvival


-- home Ice Castle, rest are era appropriate
#homefort 22

-- Add starting site
#startsite "Temple of the Midnight Sun"
#startsite "Hall of the Boreadae Kings"

-- All north gods
#homerealm 1
-- Add pretender choices
#addgod 3894 -- Serpent of the Heavenly Fires comes from the void
#end


		------------------------------------
		----------                ----------
		--------->      SITES     <---------
		----------                ----------
		------------------------------------
#newsite 1450
#name "Temple of the Midnight Sun"
#path 2
#level 0
#rarity 5
#gems 2 2 -- 2 Air gems
#gems 3 2 -- 2 Water gems
#look 8
#end

#newsite 1451
#name "Hall of the Boreadae Kings"
#path 4
#level 0
#rarity 5
#gems 4 1 -- 1 Astral gem
#homemon "Child of the Midnight Sun"
#look 5
#end



		------------------------------------
		----------                ----------
		--------->   WEAPONS    <---------
		----------                ----------
		------------------------------------
#newweapon 1450 -- Crystalline Spear
#copyweapon 643 -- Bronze Spear
#name "Crystalline Spear"
#iceweapon
#end

#newweapon 1451 -- Crystalline Staff
#copyweapon 7 -- Quarter Staff
#name "Crystalline Staff"
#end

		------------------------------------
		----------                ----------
		--------->      UNITS     <---------
		----------                ----------
		------------------------------------
-- Sacred
#newmonster
#name "Child of the Midnight Sun"
#spr1 "./hyperborea/midnight_sun_child_idle.png"
#spr2 "./hyperborea/midnight_sun_child_attack.png"
#descr "The Children of the Midnight Sun are sacred warriors of pure Boreadae blood who have achieved perfect harmony with their divine nature. Like the eternal sun that never sets in their homeland, they possess supernatural endurance that allows them to fight tirelessly. These warriors represent the closest connection to the Boreadae's extraplanar origins, their bodies radiating a subtle glow that marks their divine heritage. Though fewer in number with each passing generation, they remain the most feared of Hyperborea's warriors, combining the natural might of the Boreadae with perfect martial discipline."
#hp 25
#size 5
#prot 6
#mor 14
#mr 15
#str 18
#att 12
#def 12
#prec 11
#ap 14
#mapmove 16
#maxage 200
#holy
#darkvision
#snow
#coldres 15
#icenatprot 2
#weapon 17 -- Axe
#armor 14 -- Plate Hauberk
#armor 118 -- Half Helmet
#armor 2 -- Shield
#recruitedby 1451
#reinvigoration 2
#end

-- Snow-Ape Infantry
#newmonster
#name "Snow-Ape Slave"
#spr1 "./hyperborea/snow_ape_idle.png"
#spr2 "./hyperborea/snow_ape_attack.png"
#descr "Snow-Apes are primitive beasts native to the frozen wastes of Elysium, captured and enslaved by the Boreadae to serve as expendable troops. Though physically strong and naturally adapted to the cold, they are considered little more than useful animals by their Boreadae masters. The Snow-Apes are driven into battle by cruel taskmasters, their primitive fury made useful through strict discipline and the threat of punishment. Their thick fur and natural resistance to cold makes them well-suited for warfare in the eternal winter of Hyperborea."
#coldres 5
#hp 9
#size 3
#prot 2
#mor 7
#mr 8
#enc 3
#str 10
#att 10
#def 10
#prec 10
#ap 10
#mapmove 14
#maxage 50
#nametype 115
#weapon 12 -- Mace
#weapon 360 -- Sticks and Stones
#armor 1 -- Buckler
#slave
#animal
#snow
#undisciplined
#end

-- Snow-Ape Archer
#newmonster
#name "Snow-Ape Archer"
#spr1 "./hyperborea/snow_ape_archer_idle.png"
#spr2 "./hyperborea/snow_ape_archer_attack.png"
#descr "Snow-Apes are primitive beasts native to the frozen wastes of Elysium, captured and enslaved by the Boreadae. While most serve as expendable melee troops, some show an aptitude for ranged combat and are trained with simple bows. Though their accuracy is poor compared to trained archers, their strength allows them to draw heavier bows than most humans. Like all Snow-Apes, they are naturally adapted to the cold and are driven into battle by cruel taskmasters."
#coldres 5
#hp 10
#size 3
#prot 1
#mor 7
#mr 8
#enc 3
#str 10
#att 10
#def 10
#prec 10
#ap 10
#mapmove 14
#maxage 50
#weapon 9 -- Dagger
#weapon 23 -- Short Bow
#slave
#animal
#snow
#undisciplined
#end

-- Human Medium Infantry
#newmonster
#name "Viras Kern"
#spr1 "./hyperborea/viras_kern_idle.png"
#spr2 "./hyperborea/viras_kern_attack.png"
#descr "The Viras Kern are lesser descendants of the Boreadae, trained to fight with discipline and skill. Their natural cold resistance makes them reliable soldiers in the Boreadae's armies. Their weapons, grown from ice crystals, resemble spears, enhancing their combat effectiveness in the frigid environment."
#hp 12
#icenatprot 1
#size 3
#prot 0
#mor 10
#mr 10
#enc 3
#str 11
#att 10
#def 10
#prec 10
#ap 12
#mapmove 14
#maxage 50
#coldres 10
#snow
#weapon 1450 -- Crystalline Spear
#armor 15 -- Full Leather Armor
#armor 2 -- Shield
#armor 135 -- Bronze Cap
#end


		------------------------------------
		----------                ----------
		--------->   COMMANDERS   <---------
		----------                ----------
		------------------------------------
-- Communion slave
#newmonster 5500
#name "Viras Communicant"
#spr1 "./hyperborea/viras_communicant_idle.png"
#spr2 "./hyperborea/viras_communicant_attack.png"
#descr "The Viras are the descendants of ancient Boreadae who mingled their divine blood with the creatures of Elysium in ages past. Though diminished from their ancestors' glory, they retain a trace of celestial heritage that manifests as magical talent. The Communicants are those Viras trained to serve their purer-blooded Boreadae masters in magical research and ritual. Their greatest value lies in their ability to form communion slaves, channeling their energy to support more powerful mages. Some say this willingness to serve as vessels stems from an ancestral memory of divine communion with their Progenitor forebears.

Those Communicants who prove especially devoted may undergo sacred rituals that awaken their dormant memories of divine origin, bringing them closer to their ancestral nature - though they remain far from the purity of true Boreadae. These awakened Communicants often experience visions of the Progenitors and long desperately to commune with these ancient beings."
#hp 10
#size 3
#prot 0
#mor 10
#mr 14
#enc 3
#str 10
#att 8
#def 8
#prec 10
#ap 16
#mapmove 16
#maxage 50
#magicskill 4 2 -- Astral 2 after transformation, but made 1 through negative boost
#magicskill 9 1 -- Holy 1 after transformation
#magicboost 4 -1 -- This unit is actually astral 1
#magicboost 9 -1 -- This unit is actually holy 0
#poorleader
#needlab
#mindvessel 0
#comslave
#weapon 7 -- Quarter Staff
#coldres 5
#snow
#end 

-- Awakened Communicant
#newmonster 5501
#name "Awakened Viras Communicant"
#spr1 "./hyperborea/awakened_viras_communicant_idle.png"
#spr2 "./hyperborea/awakened_viras_communicant_attack.png"
#copystats "Viras Communicant"
#descr "The Viras are the descendants of ancient Boreadae who mingled their divine blood with the creatures of Elysium in ages past. The Communicants are those Viras trained to serve their purer-blooded Boreadae masters in magical research and ritual. Their greatest value lies in their ability to form communion slaves, channeling their energy to support more powerful mages. Some say this willingness to serve as vessels stems from an ancestral memory of divine communion with their Progenitor forebears. 

Those who have undergone a sacred ritual that awakened their blood memory of their origins, are called Awakened. They make suitable vessels for the progenitors."
#snow
#holy
#poorleader
#coldres 10
#magicskill 4 1 -- Astral 2
#mindvessel 1
#airattuned 100
#waterattuned 50
#fireattuned 100
#earthattuned 100
#armor 230 -- Magic Robes
#weapon 1451 -- Crystalline Staff
#end


-- Slave/animal leader
#newmonster
#name "Boreadae Taskmaster"
#spr1 "./hyperborea/boreadae_taskmaster_idle.png"
#spr2 "./hyperborea/boreadae_taskmaster_attack.png"
#descr "Some Boreadae are gifted with deep blue eyes, much like the void their forebears came from. They exude an aura of peace that inspires even beasts to take their natural place in the Hyperborean battle lines.

Usually, they are employed to ensure the Snow-Apes remain obedient, or inspire and lead other undisciplined subjects. Others scour the frozen wastes for Snow-Apes to recruit, and can capture up to 10 per month, at the expense of some unrest.

In combat, their gaze is turned to a weapon, stunning whoever they lock eyes with."
#hp 33
#size 5
#prot 18
#mor 12
#mr 12
#enc 3
#str 21
#att 11
#def 11
#prec 10
#ap 12
#mapmove 12
#maxage 200
#goodleader
#undisleader 1
#taskmaster 2
#beastmaster 1
#inspirational 1
#slaver "Snow-Ape Slave"
#patrolbonus 10
#weapon 40 -- Whip
#weapon 595 -- Hypnotic Gaze
#armor 13 -- Chain Mail
#armor 118 -- Half Helmet
#armor 2 -- Shield
#snow
#coldres 10
#ressize 2
#end


-- Abaris the Healer
#newmonster
#name "Abaris the Healer"
#fixedname "Abaris the Healer"
#spr1 "./hyperborea/abaris_idle.png"
#spr2 "./hyperborea/abaris_attack.png"
#descr "Abaris the Healer is a legendary figure who fled his homeland during a time of plague to master the healing arts. Now returned, he uses his knowledge to aid his people.

Abaris is a powerful mage, healer, and diviner, known for his ability to prevent misfortune and to travel long distances without food."
#hp 15
#size 3
#prot 0
#mor 18
#mr 18
#enc 1
#str 10
#att 8
#def 10
#prec 12
#ap 20
#mapmove 18
#maxage 1000
#magicskill 2 2 -- Water 2
#magicskill 4 1 -- Astral 1
#magicskill 5 1 -- Nature 1
#autohealer 3
#neednoteat
#nobadevents 20 -- Prevents bad events
#weapon 7 -- Quarter Staff
#coldres 10
#snow
#end

		------------------------------------
		----------                ----------
		--------->   COST BALANCE <---------
		----------                ----------
		------------------------------------

-- Viras Communicant
#selectmonster "Viras Communicant"
#gcost 10010
#rcost 1
#rpcost 10002
#end

-- Awakened Communicant - just for upkeep, can't be recruited
#selectmonster "Awakened Viras Communicant"
#gcost 10000
#rcost 1
#rpcost 10000
#end

-- Boreadae Taskmaster
#selectmonster "Boreadae Taskmaster"
#gcost 10100
#rcost 30
#rpcost 10002
#end

-- Snow-Ape Infantry
#selectmonster "Snow-Ape Slave"
#gcost 6
#rcost 1
#rpcost 10000
#end

-- Snow-Ape Archer
#selectmonster "Snow-Ape Archer"
#gcost 8
#rcost 1
#rpcost 10000
#end

-- Children of the Midnight Sun
#selectmonster "Child of the Midnight Sun"
#gcost 10050
#rcost 10
#rpcost 10025
#end

-- Viras Kern
#selectmonster "Viras Kern"
#gcost 10015
#rcost 3
#rpcost 10000
#end

		------------------------------------
		----------                ----------
		--------->      SPELLS    <---------
		----------                ----------
		------------------------------------
#newspell
#name "Ritual of Ancestral Awakening"
#descr "Through deep meditation and mystical rites at the Hall of the Boreadae Kings, a Viras Communicant can awaken the dormant memories of their divine heritage. This sacred transformation brings them closer to their ancestral nature. The ritual permanently awakens them, granting sacred status and the ability to serve as vessels for Progenitors."
#details "Turns Viras Communicant awakened: +1 S, +1 H, sacred and mindvessel. No longer a communion slave. Can only be cast at the Hall of the Boreadae Kings."
#school 1 --alt
#researchlevel 0
#path 0 4 -- Astral 1 to cast
#pathlevel 0 1
#fatiguecost 300 -- 3 gems
#nreff 1
#restricted 166 -- National
#onlymnr 5500
#onlyatsite 1451 -- Can only be cast at the Hall of the Boreadae Kings
#spec 545783812 -- Random restrictions from original spell, probably not relevant
#effect 10130
#damage 5501 -- Awakened Viras Communicant
#end
