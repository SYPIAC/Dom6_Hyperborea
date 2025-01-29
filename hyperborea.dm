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

Now the pure-blooded Boreadae grow ever fewer, as more of their kind succumb to the material realm's corrupting influence. Their prophets speak of achieving the Pantokrator's throne before their divine essence is fully lost, yet many fear they have already strayed too far from their celestial origin. In their desperation to preserve what remains of their otherworldly nature, the Boreadae elders have grown fanatical in their pursuit of blood purity and ancient rites of power."
#summary "Race: Extraplanar Boreadae manifested as half-giants, degenerated Viras, and enslaved Snow-Apes
Preferences: Cold scale +3
Military: Divine warriors, frost priests, and enslaved beast-men troop
Magic: Strong Water, Glamour. Some Astral, Blood, and Fire.
Scales & Blesses: Cold limit +1
Buildings: Start with an ice castle, rest are regular
Priests: Moderate"

#flag "./hyperborea_flag.tga"

-- Basic color settings
#color 0.7 0.8 0.9
#secondarycolor 0.2 0.3 0.4

-- Nation specific preferences
#coldpower 2
#forestsurvival
#mountainsurvival

#idealcold 2
#moreheat -1

-- home Ice Castle, rest are era appropriate
#homefort 22

-- Add starting site
#startsite "Temple of the Midnight Sun"
#startsite "Hall of the Boreadae Kings"

-- All north gods
#homerealm 1
-- Add pretender choices
#addgod 3894 -- Serpent of the Heavenly Fires
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
-- #homecom 7888 -- Will need to define this commander later
#look -1
#end

#newsite 1451
#name "Hall of the Boreadae Kings"
#path 4
#level 0
#rarity 5
#gems 4 1 -- 1 Astral gem
#homemon "Child of the Midnight Sun"
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
#newmonster
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
#magicskill 4 1 -- Astral 1
#poorleader
#needlab
#commslaves
#weapon 7 -- Quarter Staff
#coldres 5
#snow
#end 

-- Slave Taskmaster
#newmonster
#name "Boreadae Taskmaster"
#spr1 "./hyperborea/boreadae_taskmaster_idle.png"
#spr2 "./hyperborea/boreadae_taskmaster_attack.png"
#descr "The Boreadae Taskmasters are imposing half-giants who enforce discipline over Snow-Ape slaves and sometimes serve as individual fighters. With deep blue eyes that inspire awe, they ensure the Snow-Apes remain obedient and ready to follow orders. Lacking the mystical powers of their scholarly kin, they are nonetheless respected for their vital role in maintaining Hyperborea's slave armies and can swiftly gather more beasts from the frozen wastes."

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
#makemonsters1 "Snow-Ape Slave" | 6
#makemonsters2 "Snow-Ape Archer" | 4
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
#descr "Abaris the Healer is a legendary figure who fled his homeland during a time of plague to master the healing arts. Now returned, he uses his knowledge to aid his people. Abaris is a powerful mage, healer, and diviner, known for his ability to prevent misfortune and consume no food."
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