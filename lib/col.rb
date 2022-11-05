    STDOUT.sync = true
    
    def knock(hit)

   
      
        hit.any? {|hitbox| hitbox.contains?(@hero_hitbox.x1, @hero_hitbox.y1) || hitbox.contains?(@hero_hitbox.x2, @hero_hitbox.y2) || hitbox.contains?(@hero_hitbox.x3, @hero_hitbox.y3) || hitbox.contains?(@hero_hitbox.x4, @hero_hitbox.y4)}
         

      
    end
      
            
       
    
    @delay = 0 
    def enemy_knock(ehit)

   
     
        if  ehit.any? {|ehitbox| ehitbox.contains?(@walking_enemy_hitbox[0].x1, @walking_enemy_hitbox[0].y1) || ehitbox.contains?(@walking_enemy_hitbox[0].x2, @walking_enemy_hitbox[0].y2) || ehitbox.contains?(@walking_enemy_hitbox[0].x3, @walking_enemy_hitbox[0].y3) || ehitbox.contains?(@walking_enemy_hitbox[0].x4, @walking_enemy_hitbox[0].y4)}
          @walking_enemy_hitbox[0].y = 2000
          dies = Sprite.new(
              'assets\bfly.png',
              y: @groundguy[0].y,
              x: @groundguy[0].x,
              width:84,
              height: 84,
              clip_width: 84,
              time: 100,
              animations: {
                  die: 7..8,
                  }
            )
          dies.play animation: :die, flip: :horizontal 
          @groundguy[0].y = 2000 
        end
    
        
     
        if  ehit.any? {|ehitbox| ehitbox.contains?(@walking_enemy_hitbox[1].x1, @walking_enemy_hitbox[1].y1) || ehitbox.contains?(@walking_enemy_hitbox[1].x2, @walking_enemy_hitbox[1].y2) || ehitbox.contains?(@walking_enemy_hitbox[1].x3, @walking_enemy_hitbox[1].y3) || ehitbox.contains?(@walking_enemy_hitbox[1].x4, @walking_enemy_hitbox[1].y4)}
        @walking_enemy_hitbox[1].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[1].y,
            x: @groundguy[1].x,
            width:84,
            height: 84,
            clip_width: 84,
            time: 100,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
        @groundguy[1].y = 2000        
        end
     

     
        if  ehit.any? {|ehitbox| ehitbox.contains?(@walking_enemy_hitbox[2].x1, @walking_enemy_hitbox[2].y1) || ehitbox.contains?(@walking_enemy_hitbox[2].x2, @walking_enemy_hitbox[2].y2) || ehitbox.contains?(@walking_enemy_hitbox[2].x3, @walking_enemy_hitbox[2].y3) || ehitbox.contains?(@walking_enemy_hitbox[2].x4, @walking_enemy_hitbox[2].y4)}
        @walking_enemy_hitbox[2].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[2].y,
            x: @groundguy[2].x,
            width:84,
            height: 84,
            clip_width: 84,
            time: 100,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
        @groundguy[2].y = 2000 
        end
     
       
     
        if  ehit.any? {|ehitbox| ehitbox.contains?(@walking_enemy_hitbox[3].x1, @walking_enemy_hitbox[3].y1) || ehitbox.contains?(@walking_enemy_hitbox[3].x2, @walking_enemy_hitbox[3].y2) || ehitbox.contains?(@walking_enemy_hitbox[3].x3, @walking_enemy_hitbox[3].y3) || ehitbox.contains?(@walking_enemy_hitbox[3].x4, @walking_enemy_hitbox[3].y4)}
        @walking_enemy_hitbox[3].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[3].y,
            x: @groundguy[3].x,
            width:84,
            height: 84,
            clip_width: 84,
            time: 100,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
        @groundguy[3].y = 2000      
        end
      

     
        if  ehit.any? {|ehitbox| ehitbox.contains?(@walking_enemy_hitbox[4].x1, @walking_enemy_hitbox[4].y1) || ehitbox.contains?(@walking_enemy_hitbox[4].x2, @walking_enemy_hitbox[4].y2) || ehitbox.contains?(@walking_enemy_hitbox[4].x3, @walking_enemy_hitbox[4].y3) || ehitbox.contains?(@walking_enemy_hitbox[4].x4, @walking_enemy_hitbox[4].y4)}
        @walking_enemy_hitbox[4].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[4].y,
            x: @groundguy[4].x,
            width:84,
            height: 84,
            clip_width: 84,
            time: 100,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
        @groundguy[4].y = 2000 
        end
      
         
     
        if  ehit.any? {|ehitbox| ehitbox.contains?(@walking_enemy_hitbox[5].x1, @walking_enemy_hitbox[5].y1) || ehitbox.contains?(@walking_enemy_hitbox[5].x2, @walking_enemy_hitbox[5].y2) || ehitbox.contains?(@walking_enemy_hitbox[5].x3, @walking_enemy_hitbox[5].y3) || ehitbox.contains?(@walking_enemy_hitbox[5].x4, @walking_enemy_hitbox[5].y4)}
        @walking_enemy_hitbox[5].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[5].y,
            x: @groundguy[5].x,
            width:84,
            height: 84,
            clip_width: 84,
            time: 100,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
        @groundguy[5].y = 2000   
        end
     

     
        if  ehit.any? {|ehitbox| ehitbox.contains?(@walking_enemy_hitbox[6].x1, @walking_enemy_hitbox[6].y1) || ehitbox.contains?(@walking_enemy_hitbox[6].x2, @walking_enemy_hitbox[6].y2) || ehitbox.contains?(@walking_enemy_hitbox[6].x3, @walking_enemy_hitbox[6].y3) || ehitbox.contains?(@walking_enemy_hitbox[6].x4, @walking_enemy_hitbox[6].y4)}
        @walking_enemy_hitbox[6].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[6].y,
            x: @groundguy[6].x,
            width:84,
            height: 84,
            clip_width: 84,
            time: 100,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
        @groundguy[6].y = 2000      
        end
     

     
        if  ehit.any? {|ehitbox| ehitbox.contains?(@walking_enemy_hitbox[7].x1, @walking_enemy_hitbox[7].y1) || ehitbox.contains?(@walking_enemy_hitbox[7].x2, @walking_enemy_hitbox[7].y2) || ehitbox.contains?(@walking_enemy_hitbox[7].x3, @walking_enemy_hitbox[7].y3) || ehitbox.contains?(@walking_enemy_hitbox[7].x4, @walking_enemy_hitbox[7].y4)}
        @walking_enemy_hitbox[7].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[7].y,
            x: @groundguy[7].x,
            width:84,
            height: 84,
            clip_width: 84,
            time: 100,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
        @groundguy[7].y = 2000    
        end
      
    
    end

   



    