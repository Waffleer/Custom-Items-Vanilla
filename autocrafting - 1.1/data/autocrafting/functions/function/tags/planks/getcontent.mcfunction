execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:oak_planks"}]} run tag @s add add_oak_planks
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:spruce_planks"}]} run tag @s add add_spruce_planks
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:birch_planks"}]} run tag @s add add_birch_planks
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:jungle_planks"}]} run tag @s add add_jungle_planks
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:acacia_planks"}]} run tag @s add add_acacia_planks
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:dark_oak_planks"}]} run tag @s add add_dark_oak_planks
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:crimson_planks"}]} run tag @s add add_crimson_planks
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:warped_planks"}]} run tag @s add add_warped_planks

execute if entity @s[tag=add_oak_planks] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_spruce_planks] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_birch_planks] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_jungle_planks] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_acacia_planks] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_dark_oak_planks] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_crimson_planks] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_warped_planks] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_oak_planks] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:oak_planks"}].Count
execute if entity @s[tag=add_spruce_planks] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:spruce_planks"}].Count
execute if entity @s[tag=add_birch_planks] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:birch_planks"}].Count
execute if entity @s[tag=add_jungle_planks] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:jungle_planks"}].Count
execute if entity @s[tag=add_acacia_planks] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:acacia_planks"}].Count
execute if entity @s[tag=add_dark_oak_planks] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_planks"}].Count
execute if entity @s[tag=add_crimson_planks] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:crimson_planks"}].Count
execute if entity @s[tag=add_warped_planks] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:warped_planks"}].Count

execute if entity @s[tag=add_oak_planks] store result entity @s HandItems[0].tag.content[{id:"minecraft:oak_planks"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_spruce_planks] store result entity @s HandItems[0].tag.content[{id:"minecraft:spruce_planks"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_birch_planks] store result entity @s HandItems[0].tag.content[{id:"minecraft:birch_planks"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_jungle_planks] store result entity @s HandItems[0].tag.content[{id:"minecraft:jungle_planks"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_acacia_planks] store result entity @s HandItems[0].tag.content[{id:"minecraft:acacia_planks"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_dark_oak_planks] store result entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_planks"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_crimson_planks] store result entity @s HandItems[0].tag.content[{id:"minecraft:crimson_planks"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_warped_planks] store result entity @s HandItems[0].tag.content[{id:"minecraft:warped_planks"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"planks"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_oak_planks] run tag @s remove add_oak_planks
execute if entity @s[tag=add_spruce_planks] run tag @s remove add_spruce_planks
execute if entity @s[tag=add_birch_planks] run tag @s remove add_birch_planks
execute if entity @s[tag=add_jungle_planks] run tag @s remove add_jungle_planks
execute if entity @s[tag=add_acacia_planks] run tag @s remove add_acacia_planks
execute if entity @s[tag=add_dark_oak_planks] run tag @s remove add_dark_oak_planks
execute if entity @s[tag=add_crimson_planks] run tag @s remove add_crimson_planks
execute if entity @s[tag=add_warped_planks] run tag @s remove add_warped_planks
