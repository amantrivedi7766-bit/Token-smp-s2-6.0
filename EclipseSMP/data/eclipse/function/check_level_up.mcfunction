execute if score @s ec_xp matches 100.. run scoreboard players add @s ec_level 1
execute if score @s ec_xp matches 100.. run tellraw @s ["",{"text":"[LEVEL UP!] ","color":"gold","bold":true},{"text":"You are now Power Level ","color":"yellow"},{"score":{"name":"@s","objective":"ec_level"},"color":"white"}]
execute if score @s ec_xp matches 100.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s ec_xp matches 100.. run scoreboard players remove @s ec_xp 100
execute if score @s ec_xp matches 100.. run function eclipse:check_level_up
