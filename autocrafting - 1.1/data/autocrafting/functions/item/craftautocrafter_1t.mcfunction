
#Reset
execute as @a[tag=crafting] run advancement revoke @s only autocrafting:autocrafter
execute as @a[tag=crafting] run recipe take @s autocrafting:autocrafter


execute as @a[tag=crafting] at @s run function autocrafting:item/give
execute as @a[tag=crafting] run clear @s knowledge_book
execute as @a[tag=crafting] run tag @s remove crafting


