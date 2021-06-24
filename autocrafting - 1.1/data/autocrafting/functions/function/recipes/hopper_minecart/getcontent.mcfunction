#Item: minecraft:hopper
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:hopper"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:hopper"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:hopper"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

#Item: minecraft:minecart
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:minecart"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:minecart"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:minecart"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run replaceitem block ~ ~ ~ container.0 air
tag @s remove content

scoreboard players reset @s adder
