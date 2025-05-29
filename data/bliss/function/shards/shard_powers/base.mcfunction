tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0080","text":"[Shard]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Base Shard"}]

# Gem Description:
# Does Nothing Special
clear @s minecraft:test_block[minecraft:custom_data={base_use:true}]
particle minecraft:totem_of_undying ~ ~2 ~ 0 0 0 1 3000 force
particle minecraft:totem_of_undying ~ ~2 ~ 0 0 0 1 3000 force
particle minecraft:totem_of_undying ~ ~2 ~ 0 0 0 1 3000 force
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1 1
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1 1
function bliss:player_changes/player_assign_random