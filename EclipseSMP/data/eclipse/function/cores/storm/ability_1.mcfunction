scoreboard players set @s ec_cd1 60
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2
execute at @s run tp @s ^ ^ ^12
execute at @s run particle electric_spark ~ ~1 ~ 1 1 1 0.1 50
