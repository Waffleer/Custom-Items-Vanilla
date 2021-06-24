execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:light_gray_wool"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 3.. if score @s count_in2 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add light_gray_bed_crafting
execute as @s[tag=light_gray_bed_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:light_gray_bed 1
execute as @s[tag=light_gray_bed_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:light_gray_wool"}].Count double 1 run scoreboard players remove @s count_in1 3
execute as @s[tag=light_gray_bed_crafting] run scoreboard players set @s adder 3
execute as @s[tag=light_gray_bed_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove light_gray_bed_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:white_bed"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:light_gray_dye"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add light_gray_bed_crafting
execute as @s[tag=light_gray_bed_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:light_gray_bed 1
execute as @s[tag=light_gray_bed_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:white_bed"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=light_gray_bed_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:light_gray_dye"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove light_gray_bed_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
