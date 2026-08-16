scoreboard players set @s ec_cd2 120
playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1
execute at @s run summon marker ^ ^1.5 ^1 {Tags:["lightning_bolt_proj"]}
execute as @e[type=marker,tag=lightning_bolt_proj,distance=..2,limit=1] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=lightning_bolt_proj,distance=..2] run scoreboard players set @s ec_timer 0
