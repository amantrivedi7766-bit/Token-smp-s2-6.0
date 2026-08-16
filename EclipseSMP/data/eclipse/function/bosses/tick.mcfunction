# Boss Health Bars
execute store result bossbar eclipse:boss_guardian value as @e[type=iron_golem,tag=eclipse_guardian,limit=1] run data get entity @s Health
execute store result bossbar eclipse:boss_reaper value as @e[type=wither_skeleton,tag=void_reaper,limit=1] run data get entity @s Health
execute store result bossbar eclipse:boss_titan value as @e[type=warden,tag=celestial_titan,limit=1] run data get entity @s Health

# Boss Death Handling
execute unless entity @e[type=iron_golem,tag=eclipse_guardian] run bossbar set eclipse:boss_guardian players
execute unless entity @e[type=wither_skeleton,tag=void_reaper] run bossbar set eclipse:boss_reaper players
execute unless entity @e[type=warden,tag=celestial_titan] run bossbar set eclipse:boss_titan players

# Boss Attacks - Eclipse Guardian (Telegraphed phases)
execute as @e[type=iron_golem,tag=eclipse_guardian] at @s run scoreboard players add @s ec_timer 1
# Phase 1: High Health
execute as @e[type=iron_golem,tag=eclipse_guardian,nbt={Health:250.0f..}] at @s if score @s ec_timer matches 80..100 run particle soul_fire_flame ~ ~1 ~ 3 3 3 0.1 50
execute as @e[type=iron_golem,tag=eclipse_guardian,nbt={Health:250.0f..}] at @s if score @s ec_timer matches 100 as @a[distance=..8] run damage @s 10 minecraft:magic
execute as @e[type=iron_golem,tag=eclipse_guardian,nbt={Health:250.0f..}] at @s if score @s ec_timer matches 100 run scoreboard players set @s ec_timer 0
# Phase 2: Low Health (Frenzy)
execute as @e[type=iron_golem,tag=eclipse_guardian,nbt={Health:..249.0f}] at @s if score @s ec_timer matches 60..80 run particle flame ~ ~1 ~ 5 5 5 0.1 100
execute as @e[type=iron_golem,tag=eclipse_guardian,nbt={Health:..249.0f}] at @s if score @s ec_timer matches 80 as @a[distance=..12] run damage @s 15 minecraft:on_fire
execute as @e[type=iron_golem,tag=eclipse_guardian,nbt={Health:..249.0f}] at @s if score @s ec_timer matches 80 run scoreboard players set @s ec_timer 0

# Boss Attacks - Void Reaper (Telegraphed phases)
execute as @e[type=wither_skeleton,tag=void_reaper] at @s run scoreboard players add @s ec_timer 1
# Phase 1: High Health
execute as @e[type=wither_skeleton,tag=void_reaper,nbt={Health:200.0f..}] at @s if score @s ec_timer matches 100..120 run particle portal ~ ~1 ~ 2 2 2 1 100
execute as @e[type=wither_skeleton,tag=void_reaper,nbt={Health:200.0f..}] at @s if score @s ec_timer matches 120 run tp @s ~ ~ ~
execute as @e[type=wither_skeleton,tag=void_reaper,nbt={Health:200.0f..}] at @s if score @s ec_timer matches 120 as @a[distance=..15] at @s run tp @e[type=wither_skeleton,tag=void_reaper,limit=1] ~ ~ ~
execute as @e[type=wither_skeleton,tag=void_reaper,nbt={Health:200.0f..}] at @s if score @s ec_timer matches 120 run scoreboard players set @s ec_timer 0
# Phase 2: Low Health
execute as @e[type=wither_skeleton,tag=void_reaper,nbt={Health:..199.0f}] at @s if score @s ec_timer matches 80..100 run particle dragon_breath ~ ~1 ~ 4 1 4 0.1 100
execute as @e[type=wither_skeleton,tag=void_reaper,nbt={Health:..199.0f}] at @s if score @s ec_timer matches 100 as @a[distance=..10] run effect give @s wither 10 2 true
execute as @e[type=wither_skeleton,tag=void_reaper,nbt={Health:..199.0f}] at @s if score @s ec_timer matches 100 run scoreboard players set @s ec_timer 0


# Boss Attacks - Celestial Titan (Telegraphed phases)
execute as @e[type=warden,tag=celestial_titan] at @s run scoreboard players add @s ec_timer 1
# Phase 1: High Health
execute as @e[type=warden,tag=celestial_titan,nbt={Health:400.0f..}] at @s if score @s ec_timer matches 130..150 run particle sonic_boom ~ ~1 ~ 1 1 1 0 1
execute as @e[type=warden,tag=celestial_titan,nbt={Health:400.0f..}] at @s if score @s ec_timer matches 150 as @a[distance=..20] run summon lightning_bolt ~ ~ ~
execute as @e[type=warden,tag=celestial_titan,nbt={Health:400.0f..}] at @s if score @s ec_timer matches 150 run scoreboard players set @s ec_timer 0
# Phase 2: Low Health (AoE explosion)
execute as @e[type=warden,tag=celestial_titan,nbt={Health:..399.0f}] at @s if score @s ec_timer matches 80..100 run particle explosion_emitter ~ ~1 ~ 8 8 8 0 1
execute as @e[type=warden,tag=celestial_titan,nbt={Health:..399.0f}] at @s if score @s ec_timer matches 100 as @a[distance=..20] run damage @s 20 minecraft:magic
execute as @e[type=warden,tag=celestial_titan,nbt={Health:..399.0f}] at @s if score @s ec_timer matches 100 run scoreboard players set @s ec_timer 0
