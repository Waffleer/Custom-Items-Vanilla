#Item: minecraft:ghast_tear
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:ghast_tear"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:ghast_tear"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:ghast_tear"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

#Item: minecraft:ender_eye
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:ender_eye"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:ender_eye"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:ender_eye"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

#Item: minecraft:glass
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:glass"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

scoreboard players reset @s adder
