  scale = 70 //scale is the scale (duh) of each piece of the grid, in pixels - the size of the room must be divisible by scale 
room_w = room_width/scale; //number of "columns" in our grid
room_h = room_height/scale; //number of "rows" in our grid
dice_h = 0; //Dice (randomizer) for determining a random "row"
dice_w = 0; //Dice for determining a random "column"
snakex = floor(room_w/2) //used to store which "column" the snake's head is in
snakey = floor(room_h/2)-2 //used to store which "row" the snake's head is in
dir = 0 //the direction of the snake; 0 = not moving, 1 or -1 = horisontal movement, 2 or -2 = vertical movement, where positive or negative denotes axial direction
interval = 0 //this is a counter we use to time when to check for movement
maxinterval = scale*.5 //this is the number the interval variable counts to, at which point movement is handled and the interval variable is reset. It must be an integer. It is based off of our scale to more easily control a lenient speed given an arbitrary game size
//The following double For loop creates our array, Tabel[], which handles all of the game logic. "iv" is vertical, "ih" is horisontal.
for  (iv=0; iv<room_h; iv+=1) //repeat for each row
 { for (ih=0; ih<room_w; ih+=1) //repeat for each column
    { if (ih == 0 || ih == room_w-1 || iv == 0 || iv == room_h-1) //If the current array entry is along the edge of our room
        Tabel[ih,iv] = 1 //then it should be a wall
    else if (ih == floor((room_w+1)*0.5) && iv == floor((room_h+1)*0.5)-1) //If the current array entry is in the middle of our room
        {Tabel[ih,iv] = 2 //then it should be the snake's head!
        snakex = ih; //now we store which column the snake's head is in
        snakey = iv;} //and which row it is in! Now we know where it is without always looking it up in the array
    else //if neither of these conditions are true
        Tabel[ih,iv] = 0} } //then make an empty entry. This is simply a square on the playfield where there is nothing.
//Now we was to procedurally place a pellet, which the snake must gobble up to gain points
//I say procedurally, but it's a simple procedure, yet it is not random. We don't want the pellet to appear in a wall or on the snake's head!
while (Tabel[dice_w,dice_h] != 0) //While the random entry we're looking at is not empty
    {dice_h = irandom_range(0, room_h-1) //reroll this die
    dice_w = irandom_range(0, room_w-1)} //reroll that die
Tabel[dice_w,dice_h] = 3 //Then assign a pellet to the final chosen entry

/* quick note about values stored in Tabel[]:
    0 = This square is empty!
    1 = This square is a wall; we lose the game if the snake's head collides with this
    2 = This is the snake's head. We control its direction with the arrow keys
    3 = This is a pellet. When the snake's head collides with this, this is moved to another random empty square and we gain a point and add a segment to the snake's body
    >3 = No values are defined above three to allow for experimentations with "special" pellets, such as for example power-ups. Feel free to experiment!
    <0 = All negative values are body segments; we lose the game if the snake's head collides with any of them. Further more, the actual value of each segment represents how many intervals before it will be set to 0 (an empty square) so as to move it. Double duty!
*/