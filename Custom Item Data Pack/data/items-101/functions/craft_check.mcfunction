#this file is looped via a repeating command block to give coords to command line
# execute if true and reasources are in the chest then run summon function




execute if score player1_item1 list matches 1 run execute if block ~3 ~1 ~-2 chest{Items:[{id:"minecraft:elytra",Count:1b,tag:{Damage:0}}]} run function items-101:user_items/player1/item1


execute if score player1_item2 list matches 1 run execute if block ~3 ~1 ~-2 chest{Items:[{id:"minecraft:iron_sword",Count:1b,tag:{Damage:0}}]} run function items-101:user_items/player1/item2

execute if score generic_item1 list matches 1 run execute if block ~3 ~1 ~-2 chest{Items:[{id:"minecraft:elytra",Count:1b,tag:{Damage:0}}]} run function items-101:user_items/generic/item1
