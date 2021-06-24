#Item: minecraft:purple_dye
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:purple_dye"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:purple_dye"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:purple_dye"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

#Item: minecraft:sand
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:sand"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:sand"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:sand"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

#Item: minecraft:gravel
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:gravel"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:gravel"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:gravel"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

scoreboard players reset @s adder
