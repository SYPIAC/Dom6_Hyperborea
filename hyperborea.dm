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

#epithet "The Polar Ascendants"
#era 1
#brief "The last bastion of humanity's divine origin in the Far North, fighting against mankind's devolution into beasts"
#descr "In the eternal ice of the world's crown lies Hyperborea, cradle of true humanity and last refuge of the Golden Age. The Boreadae are no mere nation, but the remaining pure bloodline of mankind's original, perfect form. Their ancestors were divine beings who ruled from the mystical center of the world, when all of humanity dwelled in enlightened splendor beneath the cosmic pole.

As lesser peoples strayed south from this sacred homeland, they fell under the corrupting influence of the South Pole's demonic energies. Generation by generation, these wanderers devolved both spiritually and physically, their divine nature deteriorating until they became little more than clever apes. The Boreadae view these degraded southerners with a mixture of disgust and pity, enslaving them both as a mercy and as a reminder of humanity's fall. Their slave troops of beast-men serve as expendable soldiers, driven into battle by stern taskmasters who maintain their authority through cruel discipline and ancestral sorcery.

Now the pure blood of the Boreadae themselves begins to thin, and signs of degeneration appear even in their isolated realm. Their prophets speak of a final ascension that will restore their celestial nature, yet many fear they too will succumb to the cosmic tide of devolution. In their desperation to preserve their divine essence, the Boreadae elders have grown fanatical in their pursuit of blood purity and ancient rites of power, knowing they are mankind's last hope of reclaiming its birthright of perfection."
#summary "Race: Last half-giant Boreadae of the Golden Age, and degenerated Ape-men Southerners
Preferences: Cold scale +3
Military: Divine warriors, frost priests, and enslaved beast-men troop
Magic: Strong Water, Glamour. Some Astral, Blood, and Fire
Scales & Blesses: Cold limit +1
Buildings: Start with an ice fort, rest are regular
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

-- home Ice Fort, rest are era Fortresses
#homefort 21

-- Add recruitment for Atavi Slaves
#addrecunit "Atavi Slave"

-- Add starting site
#startsite "Temple of the Midnight Sun"
#startsite "Hall of the Boreadae Kings"

-- All north gods
#homerealm 1

#end


		------------------------------------
		----------                ----------
		--------->      UNITS     <---------
		----------                ----------
		------------------------------------

-- Slave Infantry
#newmonster
#name "Atavi Slave"
#spr1 "./hyperborea/atavi_slave_1.tga"
#spr2 "./hyperborea/atavi_slave_2.tga"
#clearspec
#clearweapons
#cleararmor
#descr "The Atavi are degenerated southerners, their bloodline having fallen far from the divine perfection of the Boreadae. These beast-men are kept as slaves and used as expendable troops in the Hyperborean armies. Though physically strong due to their bestial nature, they are considered little more than animals by their Boreadae masters. The Atavi are driven into battle by cruel taskmasters, their primitive fury made useful through strict discipline and the threat of punishment."
#coldres 5
#icenatprot 1
#hp 9
#size 3
#prot 2
#mor 7
#mr 8
#enc 3
#str 10
#att 10
#def 12
#prec 10
#ap 10
#mapmove 14
#maxage 50
#nametype 115
#gcost 5
#rcost 3
#rpcost 9
#weapon 12 -- Mace
#weapon 360 -- Sticks and Stones
#armor 1 -- Buckler
#slave
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
-- #homemon 7889 -- Will need to define this unit later
#end 