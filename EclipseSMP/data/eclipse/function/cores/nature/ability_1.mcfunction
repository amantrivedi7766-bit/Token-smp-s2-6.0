scoreboard players set @s ec_cd1 100
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1
execute at @s as @e[type=!player,distance=..6] run damage @s 6 minecraft:magic
execute at @s run particle sweep_attack ~ ~1 ~ 2 0.5 2 0 10
