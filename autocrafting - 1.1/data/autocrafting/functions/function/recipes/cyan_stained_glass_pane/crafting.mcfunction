execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:cyan_stained_glass"}].Count
execute if score @s count_in1 matches 6.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add cyan_stained_glass_pane_crafting
execute as @s[tag=cyan_stained_glass_pane_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:cyan_stained_glass_pane 16
execute as @s[tag=cyan_stained_glass_pane_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:cyan_stained_glass"}].Count double 1 run scoreboard players remove @s count_in1 6
tag @s remove cyan_stained_glass_pane_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:glass_pane"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:cyan_dye"}].Count
execute if score @s count_in1 matches 8.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add cyan_stained_glass_pane_crafting
execute as @s[tag=cyan_stained_glass_pane_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:cyan_stained_glass_pane 8
execute as @s[tag=cyan_stained_glass_pane_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:glass_pane"}].Count double 1 run scoreboard players remove @s count_in1 8
execute as @s[tag=cyan_stained_glass_pane_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:cyan_dye"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove cyan_stained_glass_pane_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
