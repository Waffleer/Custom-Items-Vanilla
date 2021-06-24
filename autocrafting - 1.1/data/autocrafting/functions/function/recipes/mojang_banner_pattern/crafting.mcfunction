execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:paper"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:enchanted_golden_apple"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add mojang_banner_pattern_crafting
execute as @s[tag=mojang_banner_pattern_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:mojang_banner_pattern 1
execute as @s[tag=mojang_banner_pattern_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:paper"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=mojang_banner_pattern_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:enchanted_golden_apple"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove mojang_banner_pattern_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
