# Void
execute as @e[type=marker,tag=void_blast] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=void_blast] at @s run particle sonic_boom ~ ~ ~ 0 0 0 0 1
execute as @e[type=marker,tag=void_blast] at @s as @e[type=!player,distance=..2] run damage @s 10 minecraft:magic
execute as @e[type=marker,tag=void_blast] at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute as @e[type=marker,tag=void_blast] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=void_blast] if score @s ec_timer matches 40.. run kill @s

execute as @e[type=marker,tag=void_prison] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=void_prison] at @s if score @s ec_timer matches 1..100 run particle witch ~ ~1 ~ 3 3 3 0 50
execute as @e[type=marker,tag=void_prison] at @s if score @s ec_timer matches 1..100 as @e[type=!player,distance=..5] run effect give @s slowness 2 255 true
execute as @e[type=marker,tag=void_prison] if score @s ec_timer matches 100.. run kill @s

execute as @e[type=marker,tag=void_collapse] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=void_collapse] at @s if score @s ec_timer matches 1..40 run particle dust{color:[0.5,0.0,0.8],scale:2} ~ ~1 ~ 5 0.1 5 0 20
execute as @e[type=marker,tag=void_collapse] at @s if score @s ec_timer matches 40 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5
execute as @e[type=marker,tag=void_collapse] at @s if score @s ec_timer matches 40 run particle explosion_emitter ~ ~1 ~ 3 3 3 0 1
execute as @e[type=marker,tag=void_collapse] at @s if score @s ec_timer matches 40 as @e[type=!player,distance=..10] run damage @s 30 minecraft:magic
execute as @e[type=marker,tag=void_collapse] at @s if score @s ec_timer matches 45 run kill @s

# Inferno
execute as @e[type=marker,tag=fireball] at @s run tp @s ^ ^ ^1.5
execute as @e[type=marker,tag=fireball] at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0.05 10
execute as @e[type=marker,tag=fireball] at @s as @e[type=!player,distance=..2] run damage @s 8 minecraft:on_fire
execute as @e[type=marker,tag=fireball] at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute as @e[type=marker,tag=fireball] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=fireball] if score @s ec_timer matches 40.. run kill @s

execute as @e[type=marker,tag=flame_ring] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=flame_ring] at @s if score @s ec_timer matches 1..40 run particle flame ~ ~ ~ 4 0.1 4 0 50
execute as @e[type=marker,tag=flame_ring] at @s if score @s ec_timer matches 1..40 as @e[type=!player,distance=..4] run damage @s 5 minecraft:on_fire
execute as @e[type=marker,tag=flame_ring] if score @s ec_timer matches 40.. run kill @s

execute as @e[type=marker,tag=meteor_strike] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=meteor_strike] at @s if score @s ec_timer matches 1..40 run particle flame ~ ~20 ~ 2 2 2 0.1 50
execute as @e[type=marker,tag=meteor_strike] at @s if score @s ec_timer matches 40 run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 2 0.5
execute as @e[type=marker,tag=meteor_strike] at @s if score @s ec_timer matches 40 run particle explosion_emitter ~ ~1 ~ 5 5 5 0 1
execute as @e[type=marker,tag=meteor_strike] at @s if score @s ec_timer matches 40 as @e[type=!player,distance=..12] run damage @s 40 minecraft:on_fire
execute as @e[type=marker,tag=meteor_strike] at @s if score @s ec_timer matches 45 run kill @s

# Frost
execute as @e[type=marker,tag=ice_shard] at @s run tp @s ^ ^ ^1.5
execute as @e[type=marker,tag=ice_shard] at @s run particle snowflake ~ ~ ~ 0.2 0.2 0.2 0.05 10
execute as @e[type=marker,tag=ice_shard] at @s as @e[type=!player,distance=..2] run damage @s 8 minecraft:freeze
execute as @e[type=marker,tag=ice_shard] at @s as @e[type=!player,distance=..2] run effect give @s slowness 2 255 true
execute as @e[type=marker,tag=ice_shard] at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute as @e[type=marker,tag=ice_shard] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=ice_shard] if score @s ec_timer matches 30.. run kill @s

execute as @e[type=marker,tag=blizzard_aura] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=blizzard_aura] at @s if score @s ec_timer matches 1..100 run particle snowflake ~ ~1 ~ 5 2 5 0 50
execute as @e[type=marker,tag=blizzard_aura] at @s if score @s ec_timer matches 1..100 as @e[type=!player,distance=..5] run effect give @s slowness 4 255 true
execute as @e[type=marker,tag=blizzard_aura] if score @s ec_timer matches 100.. run kill @s

execute as @e[type=marker,tag=absolute_zero] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=absolute_zero] at @s if score @s ec_timer matches 1..60 run particle snowflake ~ ~1 ~ 8 2 8 0.01 100
execute as @e[type=marker,tag=absolute_zero] at @s if score @s ec_timer matches 60 run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute as @e[type=marker,tag=absolute_zero] at @s if score @s ec_timer matches 60 as @e[type=!player,distance=..10] run damage @s 25 minecraft:freeze
execute as @e[type=marker,tag=absolute_zero] at @s if score @s ec_timer matches 60 as @e[type=!player,distance=..10] run effect give @s slowness 5 255 true
execute as @e[type=marker,tag=absolute_zero] at @s if score @s ec_timer matches 65 run kill @s

# Storm
execute as @e[type=marker,tag=lightning_bolt_proj] at @s run tp @s ^ ^ ^2
execute as @e[type=marker,tag=lightning_bolt_proj] at @s run particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0.05 10
execute as @e[type=marker,tag=lightning_bolt_proj] at @s as @e[type=!player,distance=..2] run summon lightning_bolt ~ ~ ~
execute as @e[type=marker,tag=lightning_bolt_proj] at @s as @e[type=!player,distance=..2] run kill @s
execute as @e[type=marker,tag=lightning_bolt_proj] at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute as @e[type=marker,tag=lightning_bolt_proj] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=lightning_bolt_proj] if score @s ec_timer matches 20.. run kill @s

execute as @e[type=marker,tag=thunderstorm] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=thunderstorm] at @s if score @s ec_timer matches 10..100 run particle cloud ~ ~10 ~ 10 0 10 0.1 50
execute as @e[type=marker,tag=thunderstorm] at @s if score @s ec_timer matches 10..100 if predicate eclipse:random_chance_20 as @e[type=!player,distance=..15] run summon lightning_bolt ~ ~ ~
execute as @e[type=marker,tag=thunderstorm] at @s if score @s ec_timer matches 105 run kill @s

# Nature
execute as @e[type=marker,tag=vine_whip] at @s run tp @s ^ ^ ^1.5
execute as @e[type=marker,tag=vine_whip] at @s run particle block minecraft:oak_leaves ~ ~ ~ 0.5 0.5 0.5 0.05 10
execute as @e[type=marker,tag=vine_whip] at @s as @e[type=!player,distance=..2] run damage @s 8 minecraft:generic
execute as @e[type=marker,tag=vine_whip] at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute as @e[type=marker,tag=vine_whip] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=vine_whip] if score @s ec_timer matches 20.. run kill @s

execute as @e[type=marker,tag=wrath_nature] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=wrath_nature] at @s if score @s ec_timer matches 1..60 run particle block minecraft:moss_block ~ ~ ~ 5 0.1 5 0.1 50
execute as @e[type=marker,tag=wrath_nature] at @s if score @s ec_timer matches 60 run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 2 0.5
execute as @e[type=marker,tag=wrath_nature] at @s if score @s ec_timer matches 60 as @e[type=!player,distance=..10] run damage @s 20 minecraft:magic
execute as @e[type=marker,tag=wrath_nature] at @s if score @s ec_timer matches 60 as @e[type=!player,distance=..10] run effect give @s poison 10 1 true
execute as @e[type=marker,tag=wrath_nature] at @s if score @s ec_timer matches 65 run kill @s

# Cosmic
execute as @e[type=marker,tag=cosmic_ray] at @s run tp @s ^ ^ ^2
execute as @e[type=marker,tag=cosmic_ray] at @s run particle dust{color:[1.0,0.5,1.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.05 5
execute as @e[type=marker,tag=cosmic_ray] at @s as @e[type=!player,distance=..2] run damage @s 12 minecraft:magic
execute as @e[type=marker,tag=cosmic_ray] at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute as @e[type=marker,tag=cosmic_ray] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=cosmic_ray] if score @s ec_timer matches 30.. run kill @s

execute as @e[type=marker,tag=gravity_well] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=gravity_well] at @s if score @s ec_timer matches 1..100 run particle portal ~ ~1 ~ 5 1 5 0 50
execute as @e[type=marker,tag=gravity_well] at @s if score @s ec_timer matches 1..100 as @e[type=!player,distance=..8] run tp @s ~ ~ ~
execute as @e[type=marker,tag=gravity_well] if score @s ec_timer matches 100.. run kill @s

execute as @e[type=marker,tag=star_fall] at @s run tp @s ^ ^ ^2
execute as @e[type=marker,tag=star_fall] at @s run particle dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 0 10
execute as @e[type=marker,tag=star_fall] at @s as @e[type=!player,distance=..3] run damage @s 15 minecraft:magic
execute as @e[type=marker,tag=star_fall] at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute as @e[type=marker,tag=star_fall] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=star_fall] if score @s ec_timer matches 30.. run kill @s

execute as @e[type=marker,tag=supernova] at @s run scoreboard players add @s ec_timer 1
execute as @e[type=marker,tag=supernova] at @s if score @s ec_timer matches 1..40 run particle dust{color:[1.0,1.0,0.0],scale:2} ~ ~1 ~ 5 5 5 0 50
execute as @e[type=marker,tag=supernova] at @s if score @s ec_timer matches 40 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5
execute as @e[type=marker,tag=supernova] at @s if score @s ec_timer matches 40 run particle flash ~ ~1 ~ 1 1 1 0 1
execute as @e[type=marker,tag=supernova] at @s if score @s ec_timer matches 40 as @e[type=!player,distance=..15] run damage @s 50 minecraft:magic
execute as @e[type=marker,tag=supernova] at @s if score @s ec_timer matches 45 run kill @s
