execute store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"wool"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"wool"}].Count double 1 run scoreboard players operation @s count -= @s adder

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:white_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:white_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:white_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:orange_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:orange_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:orange_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:magenta_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:magenta_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:magenta_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:light_blue_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:light_blue_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:light_blue_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:yellow_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:yellow_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:yellow_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:lime_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:lime_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:lime_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:pink_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:pink_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:pink_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:gray_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:gray_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:gray_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:light_gray_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:light_gray_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:light_gray_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:cyan_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:cyan_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:cyan_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:purple_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:purple_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:purple_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:blue_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:blue_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:blue_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:brown_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:brown_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:brown_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:green_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:green_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:green_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:red_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:red_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:black_wool"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:black_wool"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:black_wool"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

scoreboard players reset @s adder
scoreboard players reset @s count
scoreboard players reset @s dummy
