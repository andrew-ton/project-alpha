/*Pick up weapons*/

//Do we have an owner already? If not, then proceed.
if instance_exists(Owner) = false { 
    if instance_exists(instance_place(x,y,oPlayer)) {
        //Remember who owns us
        Owner = oPlayer.id
        //Add us to our new owner's weapon array
        Owner.Weapon[Owner.WeaponCount] = self.id //WeaponCount is how many weps you have
        // Tell our owner that they have one more weapon than before
        Owner.WeaponCount = Owner.WeaponCount + 1
        
    }
}
