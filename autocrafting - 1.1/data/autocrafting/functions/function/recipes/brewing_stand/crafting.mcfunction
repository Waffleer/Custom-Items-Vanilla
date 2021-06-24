execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:blaze_rod"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"stone_crafting_materials"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add brewing_stand_crafting
execute as @s[tag=brewing_stand_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:brewing_stand 1
execute as @s[tag=brewing_stand_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:blaze_rod"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=brewing_stand_crafting] run scoreboard players set @s adder 3
execute as @s[tag=brewing_stand_crafting] run function autocrafting:function/tags/stone_crafting_materials/remove
tag @s remove brewing_stand_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
