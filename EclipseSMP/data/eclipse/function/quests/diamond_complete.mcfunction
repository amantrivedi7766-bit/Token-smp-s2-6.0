scoreboard players set @s ec_diamonds 0
scoreboard players set @s ec_deep_diamonds 0
scoreboard players add @s ec_shards 100
tellraw @s ["",{"text":"[Quest Complete] ","color":"gold","bold":true},{"text":"Mined 32 Diamonds! +100 Shards","color":"aqua"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
function eclipse:check_level_up
