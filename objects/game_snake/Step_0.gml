 if(global.money==100){room_goto(room_Menu)}
//Input handling
//We're handling this OUTSIDE the interval so that the input will be smooth and lagfree.
//if we were to put it inside the interval, we could only ever use the input exactly at the time when the interval occurs-
if (keyboard_check_pressed(vk_left))  {dir = -1} //The value 1 denotes a horisontal axis, while the negative sign denotes a "backwards" direction along that axis 
if (keyboard_check_pressed(vk_right)) {dir =  1} //1 denotes horisontal, positive sign denotes "forwards" direction
if (keyboard_check_pressed(vk_up))    {dir = -2} //The value 2 denotes the VERTICAL axis, while the negative sign still denotes a backwards direction
if (keyboard_check_pressed(vk_down))  {dir =  2} //And the value 2 denotes vertical, and positive sign denotes forwards
if interval = maxinterval //If we are at an interval (step) where we ought move, we will handle movement in this block. This interval block is only handled every "maxinterval" step
   {  //We start by looking up at the array
       for (iv=0; iv<room_h; iv+=1)
         {for (ih=0; ih<room_w; ih+=1) 
             {if Tabel[ih,iv] == 2 //if we've found the snake's head
                 {snakex = ih; //store the head's x position (x, i.e. horisontal or column)
                 snakey = iv;}}} //and its y position (i.e. vertical or row)
     Tabel[snakex,snakey] = -(score+5); //We're going to move the head later, so for now, we can safely assume that this entry is a segment of the snake's body, and the "youngest" one at that.
     //As explained in the create event, negative values in Tabel[] refer generally to the segments of the snake's body and serve individually as each segment's timer counting down to its removal
     //The number of segments is direction proportional to our score. If you want to start with more or fewer segments than 5, change the 5 in above "-(score+5) to your desired number
     switch (abs(dir)) //We're checking the absolute value of the direction, that is, the value regardless of sign. The absolute value of -2, for example, is 2
         {case 2: //if the absolute value of the direction is 2 - remember that 2 denotes the vertical axis
            if Tabel[snakex,snakey+(dir*0.5)] != 1 && Tabel[snakex,snakey+(dir*0.5)] > -1 //checking to see if we'd collide with a wall or our body
                 {snakey += dir*0.5} //if we don't, then we can set our next position. Because our value here is either 2 or -2, we can simply divide by two (or multiply by .5) and end up with either 1 or -1, which we can then add directly to our position
            else //However if we WOULD collide with a wall or our body
                 {//sound_play(snd_click); //optionally play a sound (must be defined in the resource tree)
                 show_message("Game over!"); //Show message
                 room_goto(room_Menu);} //And restart the game! GAME OVER!
             break;
         case 1: //if the absolute value of the direction is 1 - 1 denotes the horisontal axis
             if Tabel[snakex+dir,snakey] != 1 && Tabel[snakex+dir,snakey] > -1 //Check for collission with wall and body
                 { snakex += dir  } //we won't have to manipulate the dir variable since it is always either 1 or -1 in this case
             else
                 {//sound_play(snd_click); //optionally play a sound
                 show_message("Game over!"); //message
				 room_goto(room_Menu); }  //restart!
             break;}
     interval = 0 //reset the interval counter
     if Tabel[snakex,snakey] == 3 //if our new position has a pellet on it (that is, if we collided with a pellet)
         {//sound_play(snd_bounce); //optionally play a sound
         score +=1; //increase score
		  global.money+=5;
		  audio_play_sound(sound_hover,1,false)
         //Nowe we want to move the pellet, so as to make it appear that the one we just ate is gone and a new one has appeared
         while (Tabel[dice_w,dice_h] != 0) //while the random square we're looking at is not empty, keep rerolling both dice
             {dice_h = irandom_range(0, room_h-1);
             dice_w = irandom_range(0, room_w-1);}}
     else //if we didn't just collide with a pellet
         {for (iv=0; iv<room_h; iv+=1) //check all columns
             {for (ih=0; ih<room_w; ih+=1) // and rows
                 {if Tabel[ih,iv] < 0 //if the entry is less than 0, i.e. if it is negative, then it is a body segment
                     {Tabel[ih,iv] +=1;}}}}} //count UP (TO WARDS zero!) on that segment. Eventually, the segment will be equal to 0 and will thus simply be an empty square!
                     
//That was the end of the interval block!           
 interval += 1 //Count up the interval
 Tabel[snakex,snakey] = 2; //Move the snake's head to the new position
 Tabel[dice_w,dice_h] = 3; //Move the pellet to its new position - if dice_w and dice_h have not been changed, the pellet will be set to its same position! 
 
 
 

