    @spawn_counter = 0
    @spawn_delay_timer = 0 
    @spawn_delay = true
    @flying_movement_value_counter = 0 
    
    def flying_enemy_spawner
        picker = rand(0..150)
        if @spawn_delay == false
            @spawn_delay_timer += 1
            if @spawn_delay_timer == 30
                @spawn_delay_timer = 0
                @spawn_delay = true     
            end
        end
        
        if picker % 150 == 0 && @spawn_delay == true
            @flying_spawn_location = rand(203..503)
            @spawn_counter = 0 if @spawn_counter == 8
            @flying_enemy[@spawn_counter] = flying_enemy_spawn(@flying_spawn_location)
            @flying_enemy_hitbox[@spawn_counter] = flying_enemy_hitbox_spawner(@flying_spawn_location)        
            @spawn_counter += 1 
            @spawn_delay = false
        end
    end

    def flying_enemy_spawn(location)

        $float_value[@flying_movement_value_counter] = rand(1..6)
        $bounce_value[@flying_movement_value_counter] = rand(150...300)
        $flying_direction[@flying_movement_value_counter] = [1, -1].sample

        @flying_movement_value_counter += 1
        if @flying_movement_value_counter > 7
            @flying_movement_value_counter = 0
        end
           
        flying_baddy = Sprite.new(
        'assets\bfly.png',
        y: location,
        x: 620,
        z: 6,
        width:84,
        height: 84,
        clip_width: 84,
        time: 100,
        animations:
        {
        walk: 1..6,
        }
        )
        flying_baddy.play animation: :walk,  loop: true
    end


    def flying_enemy_hitbox_spawner(location)
        
        Rectangle.new(
        y: location,
        x: 620,
        width: 75,
        height: 80,
        opacity: 0.5,
        color: 'red',
        )
    end
    
    def walking_enemy_spawner
        picker = rand(0..150)
        if @spawn_delay == false
            @spawn_delay_timer += 1
            if @spawn_delay_timer == 30
                @spawn_delay_timer = 0
                @spawn_delay = true     
            end
        end
        
        if picker % 150 == 0 && @spawn_delay == true
            @spawn_counter = 0 if @spawn_counter == 8
            @walking_enemy[@spawn_counter] = walking_enemy_spawn
            @walking_enemy_hitbox[@spawn_counter] = walking_enemy_hitbox_spawner       
            @spawn_counter += 1 
            @spawn_delay = false
        end
    end
    

    def walking_enemy_spawn
        
        walkingbaddy = Sprite.new(
        'assets\groundguy.png',
        y: 816,
        x: 620,
        z: 7,
        width:84,
        height: 84,
        clip_width: 84,
        time: 100,
        animations: 
        {
        die: 7..8,
        walk: 1..6,
        }
        )
        walkingbaddy.play animation: :walk,  loop: true
    end

    def walking_enemy_hitbox_spawner
        Rectangle.new(
        y: 816,
        x: 620,
        width: 75,
        height: 80,
        opacity: 0.5,
        color: 'red',
        )
    end
  

   


