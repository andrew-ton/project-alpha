//Bounce off edge of room
if y < 0 or y > room_height {
    vspeed = -vspeed
    }
    
if x < 0 or x > room_width {
    hspeed = -hspeed
    }
    

//Bounce off solid objects    
CollisionChecks = 0
while place_meeting(x+hspeed,y+vspeed, oSolid) && CollisionChecks <= 4 {

    direction = direction + 45 
    CollisionChecks = CollisionChecks + 1
}
