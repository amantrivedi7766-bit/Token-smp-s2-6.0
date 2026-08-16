scoreboard objectives add ec_shards dummy "Eclipse Shards"
scoreboard objectives add ec_level dummy "Power Level"
scoreboard objectives add ec_xp dummy "Eclipse XP"
scoreboard objectives add ec_core dummy "Core Type"

scoreboard objectives add ec_cd1 dummy
scoreboard objectives add ec_cd2 dummy
scoreboard objectives add ec_cd3 dummy
scoreboard objectives add ec_cdult dummy
scoreboard objectives add ec_ultcharge dummy
scoreboard objectives add ec_awake_time dummy
scoreboard objectives add ec_timer dummy
scoreboard objectives add ec_anim dummy

scoreboard objectives add ec_rc_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ec_rc_wfoas minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ec_drop minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add ec_drop_ult minecraft.dropped:minecraft.warped_fungus_on_a_stick

scoreboard objectives add ec_mob_kills minecraft.custom:minecraft.mob_kills
scoreboard objectives add ec_zombies minecraft.killed:minecraft.zombie
scoreboard objectives add ec_diamonds minecraft.mined:minecraft.diamond_ore
scoreboard objectives add ec_deep_diamonds minecraft.mined:minecraft.deepslate_diamond_ore

bossbar add eclipse:boss_guardian "Eclipse Guardian"
bossbar add eclipse:boss_reaper "Void Reaper"
bossbar add eclipse:boss_titan "Celestial Titan"

bossbar add eclipse:event "Server Event"

# Give starting items if they don't have them
execute as @a unless score @s ec_level matches 1.. run function eclipse:init_player
