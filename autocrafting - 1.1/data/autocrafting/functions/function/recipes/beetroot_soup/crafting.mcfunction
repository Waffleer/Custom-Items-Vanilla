execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:bowl"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:beetroot"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 6.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add beetroot_soup_crafting
execute as @s[tag=beetroot_soup_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:beetroot_soup 1
execute as @s[tag=beetroot_soup_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:bowl"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=beetroot_soup_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:beetroot"}].Count double 1 run scoreboard players remove @s count_in2 6
tag @s remove beetroot_soup_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
