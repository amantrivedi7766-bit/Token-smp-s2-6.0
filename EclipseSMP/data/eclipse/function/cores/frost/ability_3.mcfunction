scoreboard players set @s ec_cd3 140
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 1
execute at @s positioned ^ ^ ^4 as @e[type=!player,distance=..4] run effect give @s slowness 4 255 true
execute at @s positioned ^ ^ ^4 run particle snowflake ~ ~1 ~ 2 2 2 0.01 100
