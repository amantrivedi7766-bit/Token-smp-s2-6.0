tellraw @a ["",{"text":"[!] ","color":"red","bold":true},{"text":"The Celestial Titan descends!","color":"yellow"}]
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5
summon warden ~ ~1 ~ {Tags:["celestial_titan"],CustomName:'{"text":"Celestial Titan","color":"yellow","bold":true}',Health:800,Attributes:[{Name:"generic.max_health",Base:800},{Name:"generic.attack_damage",Base:25},{Name:"generic.movement_speed",Base:0.2}]}
bossbar set eclipse:boss_titan players @a
bossbar set eclipse:boss_titan value 100
