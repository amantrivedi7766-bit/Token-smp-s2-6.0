scoreboard players set @s ec_awake_time 600
tellraw @a ["",{"text":"[AWAKENING] ","color":"dark_red","bold":true},{"selector":"@s"},{"text":" HAS AWAKENED THEIR CORE!","color":"red","bold":true}]
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 1
