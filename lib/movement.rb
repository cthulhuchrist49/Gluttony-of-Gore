require '.\lib\gravity'

@physics = Physics.new


def enemy_movement
    
    @physics.flying(@flying_enemy[0], $float_value[0], $bounce_value[0], $flying_direction[0]) if @flying_enemy[0]  
    @physics.flying(@flying_enemy[1], $float_value[1], $bounce_value[1], $flying_direction[1]) if @flying_enemy[1]
    @physics.flying(@flying_enemy[2], $float_value[2], $bounce_value[2], $flying_direction[2]) if @flying_enemy[2]
    @physics.flying(@flying_enemy[3], $float_value[3], $bounce_value[3], $flying_direction[3]) if @flying_enemy[3]
    @physics.flying(@flying_enemy[4], $float_value[4], $bounce_value[4], $flying_direction[4]) if @flying_enemy[4]
    @physics.flying(@flying_enemy[5], $float_value[5], $bounce_value[5], $flying_direction[5]) if @flying_enemy[5]
    @physics.flying(@flying_enemy[6], $float_value[6], $bounce_value[6], $flying_direction[6]) if @flying_enemy[6]
    @physics.flying(@flying_enemy[7], $float_value[7], $bounce_value[7], $flying_direction[7]) if @flying_enemy[7]

    @flying_enemy_hitbox[0].x = @flying_enemy[0].x 
    @flying_enemy_hitbox[0].y = @flying_enemy[0].y

    @flying_enemy_hitbox[1].x = @flying_enemy[1].x 
    @flying_enemy_hitbox[1].y = @flying_enemy[1].y

    @flying_enemy_hitbox[2].x = @flying_enemy[2].x 
    @flying_enemy_hitbox[2].y = @flying_enemy[2].y

    @flying_enemy_hitbox[3].x = @flying_enemy[3].x 
    @flying_enemy_hitbox[3].y = @flying_enemy[3].y

    @flying_enemy_hitbox[4].x = @flying_enemy[4].x 
    @flying_enemy_hitbox[4].y = @flying_enemy[4].y

    @flying_enemy_hitbox[5].x = @flying_enemy[5].x 
    @flying_enemy_hitbox[5].y = @flying_enemy[5].y

    @flying_enemy_hitbox[6].x = @flying_enemy[6].x 
    @flying_enemy_hitbox[6].y = @flying_enemy[6].y

    @flying_enemy_hitbox[7].x = @flying_enemy[7].x 
    @flying_enemy_hitbox[7].y = @flying_enemy[7].y
   
    (@ground_hitbox[0]).x -= 6 if @ground_hitbox[0]
    (@ground_hitbox[1]).x -= 6 if @ground_hitbox[1]
    (@ground_hitbox[2]).x -= 6 if @ground_hitbox[2]
    (@ground_hitbox[3]).x -= 6 if @ground_hitbox[3]
    (@ground_hitbox[4]).x -= 6 if @ground_hitbox[4]
    (@ground_hitbox[5]).x -= 6 if @ground_hitbox[5]
    (@ground_hitbox[6]).x -= 6 if @ground_hitbox[6]
    (@ground_hitbox[7]).x -= 6 if @ground_hitbox[7]

    (@walking_enemy[0]).x -= 8 if @walking_enemy[0]
    (@walking_enemy[1]).x -= 8 if @walking_enemy[1]
    (@walking_enemy[2]).x -= 8 if @walking_enemy[2]
    (@walking_enemy[3]).x -= 8 if @walking_enemy[3]
    (@walking_enemy[4]).x -= 8 if @walking_enemy[4]
    (@walking_enemy[5]).x -= 8 if @walking_enemy[5]
    (@walking_enemy[6]).x -= 8 if @walking_enemy[6]
    (@walking_enemy[7]).x -= 8 if @walking_enemy[7]

    @walking_enemy_hitbox[0].x = @walking_enemy[0].x 
    @walking_enemy_hitbox[0].y = @walking_enemy[0].y

    @walking_enemy_hitbox[1].x = @walking_enemy[1].x 
    @walking_enemy_hitbox[1].y = @walking_enemy[1].y

    @walking_enemy_hitbox[2].x = @walking_enemy[2].x 
    @walking_enemy_hitbox[2].y = @walking_enemy[2].y

    @walking_enemy_hitbox[3].x = @walking_enemy[3].x 
    @walking_enemy_hitbox[3].y = @walking_enemy[3].y

    @walking_enemy_hitbox[4].x = @walking_enemy[4].x 
    @walking_enemy_hitbox[4].y = @walking_enemy[4].y

    @walking_enemy_hitbox[5].x = @walking_enemy[5].x 
    @walking_enemy_hitbox[5].y = @walking_enemy[5].y

    @walking_enemy_hitbox[6].x = @walking_enemy[6].x 
    @walking_enemy_hitbox[6].y = @walking_enemy[6].y

    @walking_enemy_hitbox[7].x = @walking_enemy[7].x 
    @walking_enemy_hitbox[7].y = @walking_enemy[7].y
  
end

def ground_scenery_movement
    @upper_clouds.x -= 2
    @upper_clouds.x = 0  if @upper_clouds.width - 640  + @upper_clouds.x  <= 0

    @lower_clouds.x -= 1
    @lower_clouds.x = 0  if @lower_clouds.width - 640  + @lower_clouds.x  <= 0

    @mountain.x -= 3
    @mountain.x = 0  if @mountain.width - 640  + @mountain.x  <= 0

    @mountains_lit.x = @mountain.x
   

    @front_backdrop.x -= 6
    @front_backdrop.x = 0  if @front_backdrop.width - 640  + @front_backdrop.x  <= 0
    
    @ground.x -= 6
    @ground_2.x -= 6

    @foreground_corpses.x -= 10
    @foreground_corpses.x = 0  if @foreground_corpses.width - 640  + @foreground_corpses.x  <= 0
end
