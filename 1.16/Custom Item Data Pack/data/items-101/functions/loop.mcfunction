
#adds tags from username to player num
#Checks Current user and player number - to find what personal items can be accessed
#Removes Current User










tag @a[name="waffledog1000"] add player1 
execute as @a[tag=user,tag=player1] run scoreboard players set player1 list 1 
execute as @a[tag=!user,tag=player1] run scoreboard players set player1 list 0

