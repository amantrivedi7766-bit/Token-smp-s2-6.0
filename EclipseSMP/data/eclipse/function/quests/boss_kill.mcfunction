scoreboard players add @s ec_shards 500
scoreboard players add @s ec_xp 500
tellraw @a ["",{"text":"[!] ","color":"gold","bold":true},{"selector":"@s"},{"text":" defeated a boss! +500 Shards!","color":"yellow"}]
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
function eclipse:check_level_up
