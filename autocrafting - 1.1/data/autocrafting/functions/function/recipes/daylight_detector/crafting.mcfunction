execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:quartz"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.tags[{id:"wooden_slabs"}].Count
execute if score @s count_in1 matches 3.. if score @s count_in2 matches 3.. if score @s count_in3 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add daylight_detector_crafting
execute as @s[tag=daylight_detector_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:daylight_detector 1
execute as @s[tag=daylight_detector_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:quartz"}].Count double 1 run scoreboard players remove @s count_in1 3
execute as @s[tag=daylight_detector_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count double 1 run scoreboard players remove @s count_in2 3
execute as @s[tag=daylight_detector_crafting] run scoreboard players set @s adder 3
execute as @s[tag=daylight_detector_crafting] run function autocrafting:function/tags/wooden_slabs/remove
tag @s remove daylight_detector_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
