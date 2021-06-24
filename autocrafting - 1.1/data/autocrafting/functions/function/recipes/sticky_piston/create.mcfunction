tag @s remove unset
tag @s add sticky_piston
scoreboard players set @s type 558
particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0.002 10 force
playsound minecraft:block.anvil.use master @a[distance=..10]
replaceitem entity @s weapon.mainhand paper
execute as @e[type=item, nbt={Item:{id:"minecraft:sticky_piston"}}, limit=1, sort=nearest, distance=..1.5] run tag @s add checked
execute as @e[type=item, nbt={Item:{id:"minecraft:sticky_piston"}}, limit=1, sort=nearest, distance=..1.5] run data modify entity @s Motion set value [0.0d, 0.3d, 0.0d]
