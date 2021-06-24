execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:white_wool"}]} run tag @s add add_white_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:orange_wool"}]} run tag @s add add_orange_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:magenta_wool"}]} run tag @s add add_magenta_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:light_blue_wool"}]} run tag @s add add_light_blue_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:yellow_wool"}]} run tag @s add add_yellow_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:lime_wool"}]} run tag @s add add_lime_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:pink_wool"}]} run tag @s add add_pink_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:gray_wool"}]} run tag @s add add_gray_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:light_gray_wool"}]} run tag @s add add_light_gray_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:cyan_wool"}]} run tag @s add add_cyan_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:purple_wool"}]} run tag @s add add_purple_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:blue_wool"}]} run tag @s add add_blue_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:brown_wool"}]} run tag @s add add_brown_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:green_wool"}]} run tag @s add add_green_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:red_wool"}]} run tag @s add add_red_wool
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:black_wool"}]} run tag @s add add_black_wool

execute if entity @s[tag=add_white_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_orange_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_magenta_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_light_blue_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_yellow_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_lime_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_pink_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_gray_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_light_gray_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_cyan_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_purple_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_blue_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_brown_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_green_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_red_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_black_wool] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_white_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:white_wool"}].Count
execute if entity @s[tag=add_orange_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:orange_wool"}].Count
execute if entity @s[tag=add_magenta_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:magenta_wool"}].Count
execute if entity @s[tag=add_light_blue_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:light_blue_wool"}].Count
execute if entity @s[tag=add_yellow_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:yellow_wool"}].Count
execute if entity @s[tag=add_lime_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:lime_wool"}].Count
execute if entity @s[tag=add_pink_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:pink_wool"}].Count
execute if entity @s[tag=add_gray_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:gray_wool"}].Count
execute if entity @s[tag=add_light_gray_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:light_gray_wool"}].Count
execute if entity @s[tag=add_cyan_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:cyan_wool"}].Count
execute if entity @s[tag=add_purple_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:purple_wool"}].Count
execute if entity @s[tag=add_blue_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:blue_wool"}].Count
execute if entity @s[tag=add_brown_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:brown_wool"}].Count
execute if entity @s[tag=add_green_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:green_wool"}].Count
execute if entity @s[tag=add_red_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_wool"}].Count
execute if entity @s[tag=add_black_wool] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:black_wool"}].Count

execute if entity @s[tag=add_white_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:white_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_orange_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:orange_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_magenta_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:magenta_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_light_blue_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:light_blue_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_yellow_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:yellow_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_lime_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:lime_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_pink_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:pink_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_gray_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:gray_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_light_gray_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:light_gray_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_cyan_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:cyan_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_purple_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:purple_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_blue_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:blue_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_brown_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:brown_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_green_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:green_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_red_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:red_wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_black_wool] store result entity @s HandItems[0].tag.content[{id:"minecraft:black_wool"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"wool"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"wool"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_white_wool] run tag @s remove add_white_wool
execute if entity @s[tag=add_orange_wool] run tag @s remove add_orange_wool
execute if entity @s[tag=add_magenta_wool] run tag @s remove add_magenta_wool
execute if entity @s[tag=add_light_blue_wool] run tag @s remove add_light_blue_wool
execute if entity @s[tag=add_yellow_wool] run tag @s remove add_yellow_wool
execute if entity @s[tag=add_lime_wool] run tag @s remove add_lime_wool
execute if entity @s[tag=add_pink_wool] run tag @s remove add_pink_wool
execute if entity @s[tag=add_gray_wool] run tag @s remove add_gray_wool
execute if entity @s[tag=add_light_gray_wool] run tag @s remove add_light_gray_wool
execute if entity @s[tag=add_cyan_wool] run tag @s remove add_cyan_wool
execute if entity @s[tag=add_purple_wool] run tag @s remove add_purple_wool
execute if entity @s[tag=add_blue_wool] run tag @s remove add_blue_wool
execute if entity @s[tag=add_brown_wool] run tag @s remove add_brown_wool
execute if entity @s[tag=add_green_wool] run tag @s remove add_green_wool
execute if entity @s[tag=add_red_wool] run tag @s remove add_red_wool
execute if entity @s[tag=add_black_wool] run tag @s remove add_black_wool
