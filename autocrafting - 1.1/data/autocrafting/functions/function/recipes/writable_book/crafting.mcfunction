execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:book"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:ink_sac"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:feather"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. if score @s count_in3 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add writable_book_crafting
execute as @s[tag=writable_book_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:writable_book 1
execute as @s[tag=writable_book_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:book"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=writable_book_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:ink_sac"}].Count double 1 run scoreboard players remove @s count_in2 1
execute as @s[tag=writable_book_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:feather"}].Count double 1 run scoreboard players remove @s count_in3 1
tag @s remove writable_book_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
