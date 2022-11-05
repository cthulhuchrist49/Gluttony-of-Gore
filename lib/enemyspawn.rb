    @spawncounter = 0
    @delaytimer = 0 
    @spawndelay = true
    
    def spawner
        picker = rand(0..150)
        if @spawndelay == false
            @delaytimer += 1
            if @delaytimer == 30
                @delaytimer = 0
                @spawndelay = true     
            end
        end
        
        if picker % 150 == 0 && @spawndelay == true
            flyinglocate = rand(203..503)
            @spawncounter = 0 if @spawncounter == 8
            @guy[@spawncounter] = flyingspawn(flyinglocate)
            @flying_enemy_hitbox[@spawncounter] = hitboxgen(flyinglocate)        
            @spawncounter += 1 
            @spawndelay = false
        end


    end
    
    @inny = 0 
    def flyingspawn(location)

          
        $floatvalue[@inny] = rand(1..6)
        $bouncevalue[@inny] = rand(150...300)
        $flyingvalue[@inny] = [1, -1].sample

        @inny += 1
        if @inny > 7
            @inny = 0
        end
           
           flyingbaddy = Sprite.new(
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
            flyingbaddy.play animation: :walk,  loop: true
    end


    def hitboxgen(location)
              Rectangle.new(
                y: location,
                x: 620,
                width: 75,
                height: 80,
                opacity: 0.5,
                color: 'red',
                

            )
    end
        


    def ground_spawner
        picker = rand(0..150)
        if @spawndelay == false
            @delaytimer += 1
            if @delaytimer == 30
                @delaytimer = 0
                @spawndelay = true     
            end
        end
        
        if picker % 150 == 0 && @spawndelay == true
            @spawncounter = 0 if @spawncounter == 8
            @groundguy[@spawncounter] = walkingspawn
            @walking_enemy_hitbox[@spawncounter] = walkinghitboxgen       
            @spawncounter += 1 
            @spawndelay = false
        end


    end
    

    def walkingspawn

          
    
           
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


    def walkinghitboxgen
             Rectangle.new(
                y: 816,
                x: 620,
                width: 75,
                height: 80,
                opacity: 0.5,
                color: 'red',
                

            )
    end
  

   


