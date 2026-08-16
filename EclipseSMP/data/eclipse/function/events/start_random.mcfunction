scoreboard players set #event_timer ec_timer 0
scoreboard players set #event_active ec_timer 1

# Start Meteor Shower (Simple random selection for example)
scoreboard players set #event_type ec_timer 1
tellraw @a ["",{"text":"[EVENT] ","color":"red","bold":true},{"text":"Meteor Shower has started for 5 minutes!","color":"gold"}]
bossbar set eclipse:event players @a
bossbar set eclipse:event name "Meteor Shower"
