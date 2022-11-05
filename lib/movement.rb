require '.\lib\gravity'

@physics = Physics.new


def movement
    
    @physics.flying(@guy[0], $floatvalue[0], $bouncevalue[0], $flyingvalue[0]) if @guy[0]  
    @physics.flying(@guy[1], $floatvalue[1], $bouncevalue[1], $flyingvalue[1]) if @guy[1]
    @physics.flying(@guy[2], $floatvalue[2], $bouncevalue[2], $flyingvalue[2]) if @guy[2]
    @physics.flying(@guy[3], $floatvalue[3], $bouncevalue[3], $flyingvalue[3]) if @guy[3]
    @physics.flying(@guy[4], $floatvalue[4], $bouncevalue[4], $flyingvalue[4]) if @guy[4]
    @physics.flying(@guy[5], $floatvalue[5], $bouncevalue[5], $flyingvalue[5]) if @guy[5]
    @physics.flying(@guy[6], $floatvalue[6], $bouncevalue[6], $flyingvalue[6]) if @guy[6]
    @physics.flying(@guy[7], $floatvalue[7], $bouncevalue[7], $flyingvalue[7]) if @guy[7]

    @flying_enemy_hitbox[0].x = @guy[0].x 
    @flying_enemy_hitbox[0].y = @guy[0].y

    @flying_enemy_hitbox[1].x = @guy[1].x 
    @flying_enemy_hitbox[1].y = @guy[1].y

    @flying_enemy_hitbox[2].x = @guy[2].x 
    @flying_enemy_hitbox[2].y = @guy[2].y

    @flying_enemy_hitbox[3].x = @guy[3].x 
    @flying_enemy_hitbox[3].y = @guy[3].y

    @flying_enemy_hitbox[4].x = @guy[4].x 
    @flying_enemy_hitbox[4].y = @guy[4].y

    @flying_enemy_hitbox[5].x = @guy[5].x 
    @flying_enemy_hitbox[5].y = @guy[5].y

    @flying_enemy_hitbox[6].x = @guy[6].x 
    @flying_enemy_hitbox[6].y = @guy[6].y

    @flying_enemy_hitbox[7].x = @guy[7].x 
    @flying_enemy_hitbox[7].y = @guy[7].y
   
    (@ground_hitbox[0]).x -= 6 if @ground_hitbox[0]
    (@ground_hitbox[1]).x -= 6 if @ground_hitbox[1]
    (@ground_hitbox[2]).x -= 6 if @ground_hitbox[2]
    (@ground_hitbox[3]).x -= 6 if @ground_hitbox[3]
    (@ground_hitbox[4]).x -= 6 if @ground_hitbox[4]
    (@ground_hitbox[5]).x -= 6 if @ground_hitbox[5]
    (@ground_hitbox[6]).x -= 6 if @ground_hitbox[6]
    (@ground_hitbox[7]).x -= 6 if @ground_hitbox[7]

    (@groundguy[0]).x -= 8 if @groundguy[0]
    (@groundguy[1]).x -= 8 if @groundguy[1]
    (@groundguy[2]).x -= 8 if @groundguy[2]
    (@groundguy[3]).x -= 8 if @groundguy[3]
    (@groundguy[4]).x -= 8 if @groundguy[4]
    (@groundguy[5]).x -= 8 if @groundguy[5]
    (@groundguy[6]).x -= 8 if @groundguy[6]
    (@groundguy[7]).x -= 8 if @groundguy[7]

    @walking_enemy_hitbox[0].x = @groundguy[0].x 
    @walking_enemy_hitbox[0].y = @groundguy[0].y

    @walking_enemy_hitbox[1].x = @groundguy[1].x 
    @walking_enemy_hitbox[1].y = @groundguy[1].y

    @walking_enemy_hitbox[2].x = @groundguy[2].x 
    @walking_enemy_hitbox[2].y = @groundguy[2].y

    @walking_enemy_hitbox[3].x = @groundguy[3].x 
    @walking_enemy_hitbox[3].y = @groundguy[3].y

    @walking_enemy_hitbox[4].x = @groundguy[4].x 
    @walking_enemy_hitbox[4].y = @groundguy[4].y

    @walking_enemy_hitbox[5].x = @groundguy[5].x 
    @walking_enemy_hitbox[5].y = @groundguy[5].y

    @walking_enemy_hitbox[6].x = @groundguy[6].x 
    @walking_enemy_hitbox[6].y = @groundguy[6].y

    @walking_enemy_hitbox[7].x = @groundguy[7].x 
    @walking_enemy_hitbox[7].y = @groundguy[7].y
  
end