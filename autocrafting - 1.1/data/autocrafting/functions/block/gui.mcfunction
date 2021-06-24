#As Autocrafter
#At autocrafter

#execute if entity @a[nbt={Inventory:[{id:"minecraft:barrier", tag:{clear:1b}}]}, distance = ..7] run clear @a[distance = ..7] barrier{clear:1b}
kill @e[type=item, nbt={Item:{id:"minecraft:barrier", tag:{clear:1b}}}]

#Disable Hopper
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper run function autocrafting:block/remove


#Disable Hopper minecart
execute positioned ~ ~-1 ~ if entity @e[type=minecraft:hopper_minecart, distance=..1.5] as @e[type=minecraft:hopper_minecart, distance=..1.5] run data merge entity @s {Enabled:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} if block ~ ~ ~ dropper{Items:[{Slot:1b, id:"minecraft:barrier"}]} positioned ~ ~-1 ~ run execute as @e[type=minecraft:hopper_minecart, distance=..1] run data merge entity @s {Enabled:0b}

execute unless block ~ ~ ~ dropper{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:2b}]} run replaceitem block ~ ~ ~ container.2 barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:3b}]} run replaceitem block ~ ~ ~ container.3 barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:4b}]} run replaceitem block ~ ~ ~ container.4 barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:5b}]} run replaceitem block ~ ~ ~ container.5 barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:6b}]} run replaceitem block ~ ~ ~ container.6 barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:7b}]} run replaceitem block ~ ~ ~ container.7 barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:8b}]} run replaceitem block ~ ~ ~ container.8 barrier{clear:1b}
