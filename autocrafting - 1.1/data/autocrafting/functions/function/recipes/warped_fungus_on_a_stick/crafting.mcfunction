execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:fishing_rod"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:warped_fungus"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add warped_fungus_on_a_stick_crafting
execute as @s[tag=warped_fungus_on_a_stick_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:warped_fungus_on_a_stick 1
execute as @s[tag=warped_fungus_on_a_stick_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:fishing_rod"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=warped_fungus_on_a_stick_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:warped_fungus"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove warped_fungus_on_a_stick_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
