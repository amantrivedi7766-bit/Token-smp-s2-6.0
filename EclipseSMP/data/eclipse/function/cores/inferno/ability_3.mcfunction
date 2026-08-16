scoreboard players set @s ec_cd3 180
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute at @s run particle explosion_emitter ~ ~ ~ 1 1 1 0 1
execute at @s as @e[type=!player,distance=..4] run damage @s 8 minecraft:in_fire
execute at @s run tp @s ^ ^ ^10
execute at @s run particle explosion_emitter ~ ~ ~ 1 1 1 0 1
execute at @s as @e[type=!player,distance=..4] run damage @s 8 minecraft:in_fire
