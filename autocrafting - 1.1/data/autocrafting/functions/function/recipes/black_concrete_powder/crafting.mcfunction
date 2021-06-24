execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:black_dye"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:sand"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:gravel"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 4.. if score @s count_in3 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add black_concrete_powder_crafting
execute as @s[tag=black_concrete_powder_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:black_concrete_powder 8
execute as @s[tag=black_concrete_powder_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:black_dye"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=black_concrete_powder_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:sand"}].Count double 1 run scoreboard players remove @s count_in2 4
execute as @s[tag=black_concrete_powder_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:gravel"}].Count double 1 run scoreboard players remove @s count_in3 4
tag @s remove black_concrete_powder_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
