execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_block"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count
execute if score @s count_in1 matches 3.. if score @s count_in2 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add anvil_crafting
execute as @s[tag=anvil_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:anvil 1
execute as @s[tag=anvil_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_block"}].Count double 1 run scoreboard players remove @s count_in1 3
execute as @s[tag=anvil_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count double 1 run scoreboard players remove @s count_in2 4
tag @s remove anvil_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
