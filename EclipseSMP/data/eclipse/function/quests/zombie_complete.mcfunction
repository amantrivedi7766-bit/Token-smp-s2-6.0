scoreboard players set @s ec_zombies 0
scoreboard players add @s ec_shards 50
tellraw @s ["",{"text":"[Quest Complete] ","color":"gold","bold":true},{"text":"Killed 25 Zombies! +50 Shards","color":"aqua"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
function eclipse:check_level_up
