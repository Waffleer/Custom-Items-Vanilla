execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count
execute if score @s count_in1 matches 6.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add glass_pane_crafting
execute as @s[tag=glass_pane_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:glass_pane 16
execute as @s[tag=glass_pane_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count double 1 run scoreboard players remove @s count_in1 6
tag @s remove glass_pane_crafting
scoreboard players reset @s count_in1
