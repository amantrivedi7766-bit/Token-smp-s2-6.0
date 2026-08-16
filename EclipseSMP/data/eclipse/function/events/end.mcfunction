scoreboard players set #event_active ec_timer 0
scoreboard players set #event_type ec_timer 0
bossbar set eclipse:event players
tellraw @a ["",{"text":"[EVENT] ","color":"red","bold":true},{"text":"The event has ended.","color":"gray"}]
