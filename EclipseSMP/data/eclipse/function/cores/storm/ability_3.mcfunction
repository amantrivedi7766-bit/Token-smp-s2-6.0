scoreboard players set @s ec_cd3 180
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1
execute at @s as @e[type=!player,distance=..8] run summon lightning_bolt ~ ~ ~
