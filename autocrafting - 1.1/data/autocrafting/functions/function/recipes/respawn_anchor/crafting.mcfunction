execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:crying_obsidian"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:glowstone"}].Count
execute if score @s count_in1 matches 6.. if score @s count_in2 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add respawn_anchor_crafting
execute as @s[tag=respawn_anchor_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:respawn_anchor 1
execute as @s[tag=respawn_anchor_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:crying_obsidian"}].Count double 1 run scoreboard players remove @s count_in1 6
execute as @s[tag=respawn_anchor_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:glowstone"}].Count double 1 run scoreboard players remove @s count_in2 3
tag @s remove respawn_anchor_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
