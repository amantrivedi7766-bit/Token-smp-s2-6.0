scoreboard players set @s ec_level 1
scoreboard players set @s ec_shards 0
scoreboard players set @s ec_xp 0
scoreboard players set @s ec_ultcharge 0
scoreboard players set @s ec_core 0
tellraw @s ["",{"text":"[Eclipse] ","color":"dark_purple","bold":true},{"text":"Welcome to Shards of Power! Select a core to begin.","color":"gray"}]
function eclipse:ui/core_selector
