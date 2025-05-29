tellraw @a[team=debug] [{"color":"#ffd900","text":"[LOG]"},{"color":"#ffffff","text":" | "},{"color":"#b700ff","text":"[Function]"},{"color":"#ffffff","text":" | "},{"color":"#00ff22","selector":"@s"},{"color":"#ffffff","text":" | "},{"color":"#00f7ff","text":"shards/give_shard/base"}]

# Gem Description:
# Does Nothing Special
give @s minecraft:test_block[custom_data={base_use:true},item_model="bliss_rec:empty_shard",item_name={text:"Empty Shard",color:gray},consumable={        "consume_seconds": 2147483647,        "animation": "block",        "has_consume_particles": false}]