function bliss:main_functions/shard_check

execute as @e[type=interaction,tag=click_scan] on target if items entity @s weapon *[custom_data~{right_click:true}] run say Right Click!
execute as @e[type=interaction,tag=click_scan] run data remove entity @s interaction

execute as @a[scores={Timer=0}] run function bliss:shard_reload

scoreboard players remove @a[scores={Timer=1..}] Timer 1

title @a[scores={Timer=1}] actionbar {color:aqua,text:"Shard Recharged"}