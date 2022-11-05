def punching(phit)

    #ground guy
      
    if @walking_enemy_hitbox[0].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[0].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[0].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[0].contains?(phit.x4, phit.y4)     
        @walking_enemy_hitbox[0].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[0].y,
            x: @groundguy[0].x,
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
        
        @groundguy[0].y = 2000
      @highscore += 500
      
         
    end   
    if @walking_enemy_hitbox[1].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[1].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[1].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[1].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[1].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[1].y,
            x: @groundguy[1].x,
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
      @groundguy[1].y = 2000
      @highscore += 500
     
    end
    if @walking_enemy_hitbox[2].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[2].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[2].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[2].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[2].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[2].y,
            x: @groundguy[2].x,
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
        @groundguy[2].y = 2000
        @highscore += 500
    
    end
    if @walking_enemy_hitbox[3].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[3].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[3].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[3].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[3].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[3].y,
            x: @groundguy[3].x,
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
      @groundguy[3].y = 2000
      @highscore += 500
    
    end
    if @walking_enemy_hitbox[4].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[4].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[4].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[4].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[4].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[4].y,
            x: @groundguy[4].x,
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
      @groundguy[4].y = 2000
      @highscore += 500
    
    end
    if @walking_enemy_hitbox[5].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[5].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[5].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[5].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[5].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[5].y,
            x: @groundguy[5].x,
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
      @groundguy[5].y = 2000
      @highscore += 500
        
    end
    if @walking_enemy_hitbox[6].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[6].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[6].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[6].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[6].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[6].y,
            x: @groundguy[6].x,
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
      @groundguy[6].y = 2000
      @highscore += 500
       
    end
    if @walking_enemy_hitbox[7].contains?(phit.x1, phit.y1) || @walking_enemy_hitbox[7].contains?(phit.x2, phit.y2) || @walking_enemy_hitbox[7].contains?(phit.x3, phit.y3) || @walking_enemy_hitbox[7].contains?(phit.x4, phit.y4)     
      @walking_enemy_hitbox[7].y = 2000
      dies = Sprite.new(
            'assets\bfly.png',
            y: @groundguy[7].y,
            x: @groundguy[7].x,
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
      @groundguy[7].y = 2000
      @highscore += 500
      
    end    
    
    # flying guy

    if @flying_enemy_hitbox[0].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[0].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[0].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[0].contains?(phit.x4, phit.y4)     
        @flying_enemy_hitbox[0].y = 2000
        dies = Sprite.new(
            'assets\bfly.png',
            y: @guy[0].y,
            x: @guy[0].x,
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
        @guy[0].y = 2000
        @highscore += 1000
         
    end   
    if @flying_enemy_hitbox[1].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[1].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[1].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[1].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[1].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @guy[1].y,
        x: @guy[1].x,
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
      @guy[1].y = 2000
      @highscore += 1000
     
    end
    if @flying_enemy_hitbox[2].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[2].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[2].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[2].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[2].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @guy[2].y,
        x: @guy[2].x,
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
      @guy[2].y = 2000
      @highscore += 1000
    
    end
    if @flying_enemy_hitbox[3].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[3].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[3].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[3].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[3].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @guy[3].y,
        x: @guy[3].x,
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
      @guy[3].y = 2000
      @highscore += 1000
    
    end
    if @flying_enemy_hitbox[4].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[4].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[4].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[4].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[4].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @guy[4].y,
        x: @guy[4].x,
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
      @guy[4].y = 2000
      @highscore += 1000
    
    end
    if @flying_enemy_hitbox[5].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[5].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[5].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[5].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[5].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @guy[5].y,
        x: @guy[5].x,
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
      @guy[5].y = 2000
      @highscore += 1000
        
    end
    if @flying_enemy_hitbox[6].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[6].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[6].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[6].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[6].y = 200
      dies = Sprite.new(
        'assets\bfly.png',
        y: @guy[6].y,
        x: @guy[6].x,
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
      @guy[6].y = 2000
      @highscore += 1000
       
    end
    if @flying_enemy_hitbox[7].contains?(phit.x1, phit.y1) || @flying_enemy_hitbox[7].contains?(phit.x2, phit.y2) || @flying_enemy_hitbox[7].contains?(phit.x3, phit.y3) || @flying_enemy_hitbox[7].contains?(phit.x4, phit.y4)     
      @flying_enemy_hitbox[7].y = 2000
      dies = Sprite.new(
        'assets\bfly.png',
        y: @guy[7].y,
        x: @guy[7].x,
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
      @guy[7].y = 2000
      @highscore += 1000
    end
      


  end
  
 






