def punching(phit)

    #ground guy
      
    if @walking_enemy_hitbox[0].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[0].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[0].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[0].contains?(phit.x4, phit.y4)     
        @walking_enemy_hitbox[0].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @walking_enemy[0].y,
            x: @walking_enemy[0].x,
            z:201,
            width:84,
            height: 84,
            clip_width: 84,
            time: 500,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
        
        @walking_enemy[0].y = 2000
      @highscore += 500
      
         
    end   
    if @walking_enemy_hitbox[1].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[1].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[1].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[1].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[1].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @walking_enemy[1].y,
            x: @walking_enemy[1].x,
            z:201,
            width:84,
            height: 84,
            clip_width: 84,
            time: 500,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal
      @walking_enemy[1].y = 2000
      @highscore += 500
     
    end
    if @walking_enemy_hitbox[2].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[2].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[2].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[2].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[2].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @walking_enemy[2].y,
            x: @walking_enemy[2].x,
            z:201,
            width:84,
            height: 84,
            clip_width: 84,
            time: 500,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
        @walking_enemy[2].y = 2000
        @highscore += 500
    
    end
    if @walking_enemy_hitbox[3].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[3].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[3].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[3].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[3].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @walking_enemy[3].y,
            x: @walking_enemy[3].x,
            z:201,
            width:84,
            height: 84,
            clip_width: 84,
            time: 500,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
      @walking_enemy[3].y = 2000
      @highscore += 500
    
    end
    if @walking_enemy_hitbox[4].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[4].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[4].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[4].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[4].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @walking_enemy[4].y,
            x: @walking_enemy[4].x,
            z:201,
            width:84,
            height: 84,
            clip_width: 84,
            time: 500,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
      @walking_enemy[4].y = 2000
      @highscore += 500
    
    end
    if @walking_enemy_hitbox[5].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[5].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[5].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[5].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[5].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @walking_enemy[5].y,
            x: @walking_enemy[5].x,
            z:201,
            width:84,
            height: 84,
            clip_width: 84,
            time: 500,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
      @walking_enemy[5].y = 2000
      @highscore += 500
        
    end
    if @walking_enemy_hitbox[6].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[6].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[6].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[6].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[6].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @walking_enemy[6].y,
            x: @walking_enemy[6].x,
            z:201,
            width:84,
            height: 84,
            clip_width: 84,
            time: 500,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal
      @walking_enemy[6].y = 2000
      @highscore += 500
       
    end
    if @walking_enemy_hitbox[7].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[7].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[7].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[7].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[7].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @walking_enemy[7].y,
            x: @walking_enemy[7].x,
            z:201,
            width:84,
            height: 84,
            clip_width: 84,
            time: 500,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
      @walking_enemy[7].y = 2000
      @highscore += 500
      
    end    
    
    # flying guy

    if @flying_enemy_hitbox[0].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[0].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[0].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[0].contains?(phit.x4, phit.y4)     
        @flying_enemy_hitbox[0].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @flying_enemy[0].y,
            x: @flying_enemy[0].x,
            z: 200,
            width:84,
            height: 84,
            clip_width: 84,
            time: 500,
            animations: {
                die: 7..8,
                }
                )
                dies.play animation: :die, flip: :horizontal 
        @flying_enemy[0].y = 2000
        @highscore += 1000
         
    end   
    if @flying_enemy_hitbox[1].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[1].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[1].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[1].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[1].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @flying_enemy[1].y,
        x: @flying_enemy[1].x,
        z: 200,
        width:84,
        height: 84,
        clip_width: 84,
        time: 500,
        animations: {
            die: 7..8,
            }
            )
            dies.play animation: :die, flip: :horizontal 
      @flying_enemy[1].y = 2000
      @highscore += 1000
     
    end
    if @flying_enemy_hitbox[2].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[2].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[2].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[2].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[2].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @flying_enemy[2].y,
        x: @flying_enemy[2].x,
        z: 200,
        width:84,
        height: 84,
        clip_width: 84,
        time: 500,
        animations: {
            die: 7..8,
            }
            )
            dies.play animation: :die, flip: :horizontal 
      @flying_enemy[2].y = 2000
      @highscore += 1000
    
    end
    if @flying_enemy_hitbox[3].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[3].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[3].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[3].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[3].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @flying_enemy[3].y,
        x: @flying_enemy[3].x,
        z: 200,
        width:84,
        height: 84,
        clip_width: 84,
        time: 500,
        animations: {
            die: 7..8,
            }
            )
            dies.play animation: :die, flip: :horizontal 
      @flying_enemy[3].y = 2000
      @highscore += 1000
    
    end
    if @flying_enemy_hitbox[4].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[4].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[4].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[4].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[4].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @flying_enemy[4].y,
        x: @flying_enemy[4].x,
        z: 200,
        width:84,
        height: 84,
        clip_width: 84,
        time: 500,
        animations: {
            die: 7..8,
            }
            )
            dies.play animation: :die, flip: :horizontal 
      @flying_enemy[4].y = 2000
      @highscore += 1000
    
    end
    if @flying_enemy_hitbox[5].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[5].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[5].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[5].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[5].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @flying_enemy[5].y,
        x: @flying_enemy[5].x,
        z: 200,
        width:84,
        height: 84,
        clip_width: 84,
        time: 500,
        animations: {
            die: 7..8,
            }
            )
            dies.play animation: :die, flip: :horizontal 
      @flying_enemy[5].y = 2000
      @highscore += 1000
        
    end
    if @flying_enemy_hitbox[6].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[6].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[6].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[6].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[6].y = 200
      dies = Sprite.new(
        'assets\bfly.png',
        y: @flying_enemy[6].y,
        x: @flying_enemy[6].x,
        z: 200,
        width:84,
        height: 84,
        clip_width: 84,
        time: 500,
        animations: {
            die: 7..8,
            }
            )
            dies.play animation: :die, flip: :horizontal 
      @flying_enemy[6].y = 2000
      @highscore += 1000
       
    end
    if @flying_enemy_hitbox[7].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[7].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[7].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[7].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[7].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @flying_enemy[7].y,
        x: @flying_enemy[7].x,
        z: 200,
        width:84,
        height: 84,
        clip_width: 84,
        time: 500,
        animations: {
            die: 7..8,
            }
            )
            dies.play animation: :die, flip: :horizontal 
      @flying_enemy[7].y = 2000
      @highscore += 1000
    end
  end
  
 






