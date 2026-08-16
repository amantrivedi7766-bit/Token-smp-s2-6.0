# Handle Cooldowns
execute as @a[scores={ec_cd1=1..}] run scoreboard players remove @s ec_cd1 1
execute as @a[scores={ec_cd2=1..}] run scoreboard players remove @s ec_cd2 1
execute as @a[scores={ec_cd3=1..}] run scoreboard players remove @s ec_cd3 1
execute as @a[scores={ec_cdult=1..}] run scoreboard players remove @s ec_cdult 1
execute as @a[scores={ec_awake_time=1..}] run scoreboard players remove @s ec_awake_time 1

# Handle Ability Triggers
execute as @a[scores={ec_rc_coas=1..}] at @s run function eclipse:abilities/trigger_1
execute as @a[scores={ec_rc_wfoas=1..}] at @s run function eclipse:abilities/trigger_2
execute as @a[scores={ec_drop=1..}] at @s run function eclipse:abilities/trigger_3
execute as @a[scores={ec_drop_ult=1..}] at @s run function eclipse:abilities/trigger_ult

# Reset triggers
scoreboard players set @a ec_rc_coas 0
scoreboard players set @a ec_rc_wfoas 0
scoreboard players set @a ec_drop 0
scoreboard players set @a ec_drop_ult 0

# Passive charge ult
execute as @a[scores={ec_core=1..,ec_ultcharge=..99}] at @s if predicate eclipse:random_chance_20 run scoreboard players add @s ec_ultcharge 1

# Passives
execute as @a[scores={ec_core=1}] at @s run effect give @s night_vision 12 0 true
execute as @a[scores={ec_core=2}] at @s run effect give @s fire_resistance 2 0 true
execute as @a[scores={ec_core=3}] at @s run effect give @s resistance 2 0 true
execute as @a[scores={ec_core=4}] at @s run effect give @s speed 2 0 true
execute as @a[scores={ec_core=5}] at @s run effect give @s regeneration 2 0 true
execute as @a[scores={ec_core=6}] at @s run effect give @s jump_boost 2 1 true

# UI
execute as @a run function eclipse:ui/update

# Progression / Shards from Kills
execute as @a[scores={ec_mob_kills=1..}] at @s run function eclipse:quests/mob_kill
scoreboard players set @a ec_mob_kills 0

# Quests
execute as @a[scores={ec_zombies=25..}] at @s run function eclipse:quests/zombie_complete
execute as @a[scores={ec_diamonds=32..}] at @s run function eclipse:quests/diamond_complete
execute as @a[scores={ec_deep_diamonds=32..}] at @s run function eclipse:quests/diamond_complete

# Events
function eclipse:events/tick

# Bosses
function eclipse:bosses/tick

# Abilities ticking
function eclipse:abilities/tick

# Awakening Tick
execute as @a[scores={ec_awake_time=1..}] at @s run function eclipse:awakening/tick
execute as @a[scores={ec_awake_time=0}] at @s run function eclipse:awakening/end
