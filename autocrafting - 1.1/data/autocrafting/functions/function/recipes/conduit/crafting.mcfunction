execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:nautilus_shell"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:heart_of_the_sea"}].Count
execute if score @s count_in1 matches 8.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add conduit_crafting
execute as @s[tag=conduit_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:conduit 1
execute as @s[tag=conduit_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:nautilus_shell"}].Count double 1 run scoreboard players remove @s count_in1 8
execute as @s[tag=conduit_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:heart_of_the_sea"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove conduit_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
