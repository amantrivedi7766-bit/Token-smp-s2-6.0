scoreboard players set @s ec_cd1 60
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1
execute at @s run summon marker ^ ^1.5 ^1 {Tags:["cosmic_ray"]}
execute as @e[type=marker,tag=cosmic_ray,distance=..2,limit=1] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=cosmic_ray,distance=..2] run scoreboard players set @s ec_timer 0
