execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:string"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count
execute store result score @s count_in4 run data get entity @s HandItems[0].tag.content[{id:"minecraft:tripwire_hook"}].Count
execute if score @s count_in1 matches 2.. if score @s count_in2 matches 3.. if score @s count_in3 matches 1.. if score @s count_in4 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add crossbow_crafting
execute as @s[tag=crossbow_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:crossbow 1
execute as @s[tag=crossbow_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:string"}].Count double 1 run scoreboard players remove @s count_in1 2
execute as @s[tag=crossbow_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in2 3
execute as @s[tag=crossbow_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count double 1 run scoreboard players remove @s count_in3 1
execute as @s[tag=crossbow_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:tripwire_hook"}].Count double 1 run scoreboard players remove @s count_in4 1
tag @s remove crossbow_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
scoreboard players reset @s count_in4
