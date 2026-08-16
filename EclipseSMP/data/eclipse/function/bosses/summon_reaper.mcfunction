tellraw @a ["",{"text":"[!] ","color":"red","bold":true},{"text":"The Void Reaper has emerged!","color":"dark_gray"}]
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.5
summon wither_skeleton ~ ~1 ~ {Tags:["void_reaper"],CustomName:'{"text":"Void Reaper","color":"dark_gray","bold":true}',Health:400,Attributes:[{Name:"generic.max_health",Base:400},{Name:"generic.attack_damage",Base:20},{Name:"generic.movement_speed",Base:0.4}]}
bossbar set eclipse:boss_reaper players @a
bossbar set eclipse:boss_reaper value 100
