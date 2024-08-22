/// @description data
/*
This object has all the data needed to make the skills in an array and then goes through a loop to make all the skills. */
#region // DATA tree (old)

skillname[0] = "Skill1"
skillimage[0] = 1
skillneeds[0,0] = -1  // -1 always available 
skillx[0] = obj_skillspawner.x+lengthdir_x(70, 90)
skilly[0] = obj_skillspawner.x+lengthdir_y(70, 90)

skillname[1] = "Skill2"
skillimage[1] = 4
skillneeds[1,0] = -1  // -1 always available 
skillx[1] = obj_skillspawner.x+lengthdir_x(70, 220)
skilly[1] = obj_skillspawner.x+lengthdir_y(70, 220)

skillname[2] = "Skill3"
skillimage[2] = 7
skillneeds[2,0] = -1  // -1 always available 
skillx[2] = obj_skillspawner.x+lengthdir_x(70, 330)
skilly[2] = obj_skillspawner.x+lengthdir_y(70, 330)

skillname[3] = "Skill1.1"
skillimage[3] = 2
skillneeds[3,0] = 0 
skillx[3] = 221
skilly[3] = 176

skillname[4] = "Skill1.2"
skillimage[4] = 0
skillneeds[4,0] = 0 
skillx[4] = obj_skillspawner.x+lengthdir_x(130, 90-30)
skilly[4] = obj_skillspawner.x+lengthdir_y(130, 90-30)

skillname[5] = "Skill2.1"
skillimage[5] = 5
skillneeds[5,0] = 1 
skillx[5] = 244
skilly[5] = 410

skillname[6] = "Skill2.2"
skillimage[6] = 3
skillneeds[6,0] = 1 
skillx[6] = 162
skilly[6] = 311

skillname[7] = "Skill3.1"
skillimage[7] = 8
skillneeds[7,0] = 2 
skillx[7] = obj_skillspawner.x+lengthdir_x(130, 330+30)
skilly[7] = obj_skillspawner.x+lengthdir_y(130, 330+30)

skillname[8] = "Skill3.2"
skillimage[8] = 6
skillneeds[8,0] = 2 
skillx[8] = obj_skillspawner.x+lengthdir_x(130, 330-30)
skilly[8] = obj_skillspawner.x+lengthdir_y(130, 330-30)

skillname[9] = "Skill between yellow and blue"
skillimage[9] = 9
skillneeds[9,0] = 4 
skillneeds[9,1] = 7 
skillx[9] = obj_skillspawner.x+lengthdir_x(150, 30)
skilly[9] = obj_skillspawner.x+lengthdir_y(150, 30)

skillname[10] = "Skill2 grid"
skillimage[10] = 5
skillneeds[10,0] = 5 
skillx[10] = 244
skilly[10] = 480

skillname[11] = "Skill2 grid"
skillimage[11] = 5
skillneeds[11,0] = 10 
skillx[11] = 244
skilly[11] = 550

skillname[12] = "Skill2.1"
skillimage[12] = 5
skillneeds[12,0] = 5 
skillx[12] = 170
skilly[12] = 410

skillname[13] = "Skill2 grid"
skillimage[13] = 5
skillneeds[13,0] = 10 
skillneeds[13,1] = 12 
skillx[13] = 170 
skilly[13] = 480

skillname[14] = "Skill2 grid"
skillimage[14] = 5
skillneeds[14,0] = 11 
skillneeds[14,1] = 13 
skillx[14] = 170 
skilly[14] = 550

skillname[15] = "Skill2 grid"
skillimage[15] = 5
skillneeds[15,0] = 12 
skillx[15] = 100 
skilly[15] = 410

skillname[16] = "Skill2 grid"
skillimage[16] = 5
skillneeds[16,0] = 15 
skillneeds[16,1] = 13 
skillx[16] = 100 
skilly[16] = 480

skillname[17] = "Skill2 grid"
skillimage[17] = 5
skillneeds[17,0] = 14 
skillneeds[17,1] = 16 
skillx[17] = 100 
skilly[17] = 550

skillname[18] = "Skill Circle start"
skillimage[18] = 6
skillneeds[18,0] = 8 
skillx[18] = 479 
skilly[18] = 487

skillname[19] = "Skill Circle"
skillimage[19] = 6
skillneeds[19,0] = 18 
skillx[19] = 479 + lengthdir_x(80,54)
skilly[19] = 487 + lengthdir_y(80,54)

skillname[20] = "Skill Circle"
skillimage[20] = 6
skillneeds[20,0] = 18 
skillx[20] = 479 + lengthdir_x(80,114)
skilly[20] = 487 + lengthdir_y(80,114)

skillname[21] = "Skill Circle"
skillimage[21] = 6
skillneeds[21,0] = 18 
skillx[21] = 479 + lengthdir_x(80,174)
skilly[21] = 487 + lengthdir_y(80,174)

skillname[22] = "Skill Circle"
skillimage[22] = 6
skillneeds[22,0] = 18 
skillx[22] = 479 + lengthdir_x(80,234)
skilly[22] = 487 + lengthdir_y(80,234)

skillname[23] = "Skill Circle"
skillimage[23] = 6
skillneeds[23,0] = 18 
skillx[23] = 479 + lengthdir_x(80,294)
skilly[23] = 487 + lengthdir_y(80,294)

skillname[24] = "Skill Circle"
skillimage[24] = 6
skillneeds[24,0] = 18 
skillx[24] = 479 + lengthdir_x(80,354)
skilly[24] = 487 + lengthdir_y(80,354)

skillname[25] = "Skill Full Circle"
skillimage[25] = 0
skillneeds[25,0] = 4 
skillx[25] = 460 + lengthdir_x(66,240)
skilly[25] = 85 + lengthdir_y(66,240)

skillname[26] = "Skill Full Circle"
skillimage[26] = 0
skillneeds[26,0] = 25 
skillx[26] = 460 + lengthdir_x(66,300)
skilly[26] = 85 + lengthdir_y(66,300)

skillname[27] = "Skill Full Circle"
skillimage[27] = 0
skillneeds[27,0] = 26 
skillx[27] = 460 + lengthdir_x(66,0)
skilly[27] = 85 + lengthdir_y(66,0)

skillname[28] = "Skill Full Circle"
skillimage[28] = 0
skillneeds[28,0] = 27 
skillx[28] = 460 + lengthdir_x(66,60)
skilly[28] = 85 + lengthdir_y(66,60)

skillname[29] = "Skill Full Circle"
skillimage[29] = 0
skillneeds[29,0] = 28 
skillx[29] = 460 + lengthdir_x(66,120)
skilly[29] = 85 + lengthdir_y(66,120)

skillname[30] = "Skill Full Circle"
skillimage[30] = 0
skillneeds[30,0] = 29 
skillneeds[30,1] = 25
skillx[30] = 460 + lengthdir_x(66,180)
skilly[30] = 85 + lengthdir_y(66,180)

skillname[31] = "Diagonals"
skillimage[31] = 2
skillneeds[31,0] = 3 
skillx[31] = 221
skilly[31] = 106

skillname[32] = "Diagonals"
skillimage[32] = 2
skillneeds[32,0] = 3 
skillx[32] = 156
skilly[32] = 176

skillname[33] = "Diagonals"
skillimage[33] = 2
skillneeds[33,0] = 31 
skillneeds[33,1] = 32 
skillx[33] = 156
skilly[33] = 106

skillname[34] = "Diagonals"
skillimage[34] = 2
skillneeds[34,0] = 33 
skillx[34] = 86
skilly[34] = 106

skillname[35] = "Diagonals"
skillimage[35] = 2
skillneeds[35,0] = 33 
skillx[35] = 156
skilly[35] = 36

skillname[36] = "Diagonals"
skillimage[36] = 2
skillneeds[36,0] = 34 
skillneeds[36,1] = 35 
skillx[36] = 86
skilly[36] = 36

skillname[37] = "line"
skillimage[37] = 3
skillneeds[37,0] = 6 
skillx[37] = 162
skilly[37] = 251

skillname[38] = "line"
skillimage[38] = 3
skillneeds[38,0] = 6 
skillx[38] = 102
skilly[38] = 311

skillname[39] = "line"
skillimage[39] = 3
skillneeds[39,0] = 38 
skillx[39] = 102
skilly[39] = 251

skillname[40] = "line"
skillimage[40] = 3
skillneeds[40,0] = 38 
skillx[40] = 42
skilly[40] = 311

skillname[41] = "line"
skillimage[41] = 3
skillneeds[41,0] = 40 
skillx[41] = 42
skilly[41] = 251



#endregion
#region // make skills


for (i=0; i<array_length_1d(skillname); i++) // loop around for each skill
{

	var newskill = instance_create_layer(skillx[i], skilly[i],"instances",obj_skill); // Create an object that will be this skill 
	newskill.image_index = skillimage[i]
	newskill.skillname = skillname[i]
	newskill.skillid = i

	show_debug_message("We have made skill " +string(skillname[i]))
	
	// ASSERT – at this point the object skill has been made 
	
	with(newskill) { // we now want to pre record all the lines this skill is connected to so we dont have to work it out every time
	
		for (j=0; j<array_length_2d(other.skillneeds,other.i); j+=1) // loop around all the skills I connect to 
		{
			skillneeds[j] = other.skillneeds[other.i,j]
			show_debug_message("Skill "+ string(newskill.skillname) + " needs " + string(skillneeds[j]))
			
			if (skillneeds[j] == -1) { // This skill is always available so draw a line to the central object 
				
				status = 1
				linetox[0] = obj_skillspawner.x
				linetoy[0] = obj_skillspawner.y
				needcount = 1
				
			} else { // on the new skill record where its lines should be drawn so we don’t need to look it up every frame
				
				linetox[j] = other.skillx[skillneeds[j]]
				linetoy[j] = other.skilly[skillneeds[j]]
				  
				needcount++
			};
		}
	}
	

};

#endregion
#region // we are done with this object so delete it now (you could keep it if you still wanted to access the data)
//instance_destroy()
#endregion

