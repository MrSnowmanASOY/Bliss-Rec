execute as @s[team=debug] run tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#ff0000","text":"[Admin Tool]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"Used Debug Shard"}]
execute as @s[team=!debug] run tellraw @a[team=debug] [{"color":"#ff0000","text":"[WARNING]"},{"color":"#ffffff","text":" | "},{"color":"#ff0000","text":"[Admin Tool]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"NON DEBUG USER USED DEBUG ITEM"}]
execute as @s[team=!debug] run tellraw @a[team=debug] [{"color":"#ff0000","text":"[WARNING]"},{"color":"#ffffff","text":" | "},{"color":"#ff0000","text":"[Admin Tool]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"DEBUG ITEM REMOVED FROM NON DEBUG PLAYER"}]

scoreboard players set @s[team=debug] Timer 5
tellraw @s[team=!debug] {"color":"red","text":"You must be on the debug team to use this shard."}
tellraw @s[team=!debug] {"color":"red","text":"As a result of not being on the debug team the shard has been taken away."}
tellraw @s[team=!debug] {"color":"red","text":"The debug team has been notified."}
clear @s[team=!debug] minecraft:test_block

