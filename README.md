# Custom-Items-Vanilla

General Information

    A user is a player
        You are able to store some textures under a user so that only that user can access thouse textures
    	generic is able to be accessed by all minecrafters regardless of who makes the textures
    
    Things that You Need to Know
        Name of the new item that you are making
        The Name of what you are replacing, (diamond_sword, wooden_hoe), 
	    to see what it is called type /give @s minecraft:(name of item)
            	this will show you the minecraft cmd name for the item, generaly using _ instead of spaces
        Name of the item texture file (.png)
        Name of Icon Texture file (.png), only for entitys
        Who it belongs to, generic or player(num)
        What number item it is (generic,item4   player1,item6)
        Custom Model Data, 000000 digit number, must be unique and not used before in this pack, 000001 & ^



How To use Pack

    Download Repository, and move the corisponding version folder from final to your desktop or wherever
        final/1.17
    This should give you a folder with the Data Pack, the Reasouce Pack, and the compiler.
    
    Open the Folder (1.17 or 1.16) in VS code or an equivelance of it.
    If you have a CSV file, move it into the 1.17 or 1.16 folder so it is in the same folder as the Compiler
    
    Run the Compiler with either the CSV file or puting in the Info via python terminal
        If you have an error invovling not finding the right files, then you opened the wrong folder or something
        
    After the Compiler has run with out any errors, the data pack and the reasource pack should be updated with the new code
        Don't forget to move the Png into the right folder, its quite important
       
       Once the Compiler Has finished, Move the Data pack into the minecraft world, you may have to type /reload to reset the pack
       Move the Reasouce Pack to your Reasource Pack folder
       
       t + f3 will reload the pack
       
    Use /function items-101:station_creation/create   to summon the Church of God
        Then flip the Lever to start the command block
        This building will change the base item into its custom varient
            ex.    put wooden_hoe into the Chest = custom wooden_hoe generated
        Hit the Start Button and then click in the text box to choose what item you want

    Warning, The Church of God will only spawn in one direction from the player, regardless of where the player is looking, 
        i Would recommend summoning it in the sky to find that direct, so you dont screw it up


       

How to make a CSV file for the compiler

	For New User
		u,{Name of Player Exactly},{player(num)}

		ex.    _u,Waffledog1000,player3_ (remove _, don't add spaces)

	For New Entity (Like elytra or shields)
		e,{item being changed},{Name of New Item},{name of entity texture file, add .png},{who owns the item},
		{What Item Number is it},{Custom Model Data},{Name of Icon Texture File, add .png}     (remove the new line)

		ex.    _e,elytra,Super Wings,superwings.png,generic,item5,111101,superwingsicon.png_

	For New Item	
		i,{item being changed},{Name of New Item},{name of Item texture file, add .png},{who owns the item},
		{What Item Number is it},{Custom Model Data}     (remove new line)

		ex.    _i,wooden_hoe,Super Hoe,superhoe.png,generic,item6,111102_



Closing Remarks

    That should be enough info on how to use it, make sure to test your textures on your own before using my pack,
    it would be sad if you put all that effort of adding it to the pack and it doesn't look good

    I might change some formating with the text box and I have not texted the different players method extensivly,
    but it should work


    If it doesnt work, its probly your fault not mine
    
    
    
    


