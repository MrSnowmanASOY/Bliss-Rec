# Gem Description:
# Astra gem shoots 5 arrows that deal 1 heart each
# Upgraded shoots 7 arrows that deal 1 heart each 
# Downgraded shoots 3 arrows that deal 1 heart each 

# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute anchored eyes positioned 0.0 0 0.0 run summon marker ^ ^ ^1 {Tags:["direction"]}

# summon the projectile entity (e.g. sheep, but can also be an arrow/snowball/etc. 
# When using a projectile, you might want to summon it in front of the player so it doesn't hit the player themselves)
# you might want to summon it at the players eyes as well using anchored eyes
execute as @s at @s run execute positioned ~ ~1 ~ run summon arrow ^ ^1 ^0.5 {Tags:["projectile"]}

# copy the markers position tag to the sheeps motion tag
execute anchored eyes run data modify entity @e[type=arrow,tag=projectile,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# clean up
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]