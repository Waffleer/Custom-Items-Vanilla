execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:paper"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:leather"}].Count
execute if score @s count_in1 matches 3.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add book_crafting
execute as @s[tag=book_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:book 1
execute as @s[tag=book_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:paper"}].Count double 1 run scoreboard players remove @s count_in1 3
execute as @s[tag=book_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:leather"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove book_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
