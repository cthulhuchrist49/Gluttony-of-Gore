def punching(phit)

    #ground guy
      
    if @walkinghit[0].contains?(phit.x1, phit.y1) || @walkinghit[0].contains?(phit.x2, phit.y2) || @walkinghit[0].contains?(phit.x3, phit.y3) || @walkinghit[0].contains?(phit.x4, phit.y4)     
        @walkinghit[0].y = 2000
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
    if @walkinghit[1].contains?(phit.x1, phit.y1) || @walkinghit[1].contains?(phit.x2, phit.y2) || @walkinghit[1].contains?(phit.x3, phit.y3) || @walkinghit[1].contains?(phit.x4, phit.y4)     
      @walkinghit[1].y = 2000
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
    if @walkinghit[2].contains?(phit.x1, phit.y1) || @walkinghit[2].contains?(phit.x2, phit.y2) || @walkinghit[2].contains?(phit.x3, phit.y3) || @walkinghit[2].contains?(phit.x4, phit.y4)     
      @walkinghit[2].y = 2000
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
    if @walkinghit[3].contains?(phit.x1, phit.y1) || @walkinghit[3].contains?(phit.x2, phit.y2) || @walkinghit[3].contains?(phit.x3, phit.y3) || @walkinghit[3].contains?(phit.x4, phit.y4)     
      @walkinghit[3].y = 2000
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
    if @walkinghit[4].contains?(phit.x1, phit.y1) || @walkinghit[4].contains?(phit.x2, phit.y2) || @walkinghit[4].contains?(phit.x3, phit.y3) || @walkinghit[4].contains?(phit.x4, phit.y4)     
      @walkinghit[4].y = 2000
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
    if @walkinghit[5].contains?(phit.x1, phit.y1) || @walkinghit[5].contains?(phit.x2, phit.y2) || @walkinghit[5].contains?(phit.x3, phit.y3) || @walkinghit[5].contains?(phit.x4, phit.y4)     
      @walkinghit[5].y = 2000
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
    if @walkinghit[6].contains?(phit.x1, phit.y1) || @walkinghit[6].contains?(phit.x2, phit.y2) || @walkinghit[6].contains?(phit.x3, phit.y3) || @walkinghit[6].contains?(phit.x4, phit.y4)     
      @walkinghit[6].y = 2000
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
    if @walkinghit[7].contains?(phit.x1, phit.y1) || @walkinghit[7].contains?(phit.x2, phit.y2) || @walkinghit[7].contains?(phit.x3, phit.y3) || @walkinghit[7].contains?(phit.x4, phit.y4)     
      @walkinghit[7].y = 2000
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

    if @hit[0].contains?(phit.x1, phit.y1) || @hit[0].contains?(phit.x2, phit.y2) || @hit[0].contains?(phit.x3, phit.y3) || @hit[0].contains?(phit.x4, phit.y4)     
        @hit[0].y = 2000
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
    if @hit[1].contains?(phit.x1, phit.y1) || @hit[1].contains?(phit.x2, phit.y2) || @hit[1].contains?(phit.x3, phit.y3) || @hit[1].contains?(phit.x4, phit.y4)     
      @hit[1].y = 2000
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
    if @hit[2].contains?(phit.x1, phit.y1) || @hit[2].contains?(phit.x2, phit.y2) || @hit[2].contains?(phit.x3, phit.y3) || @hit[2].contains?(phit.x4, phit.y4)     
      @hit[2].y = 2000
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
    if @hit[3].contains?(phit.x1, phit.y1) || @hit[3].contains?(phit.x2, phit.y2) || @hit[3].contains?(phit.x3, phit.y3) || @hit[3].contains?(phit.x4, phit.y4)     
      @hit[3].y = 2000
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
    if @hit[4].contains?(phit.x1, phit.y1) || @hit[4].contains?(phit.x2, phit.y2) || @hit[4].contains?(phit.x3, phit.y3) || @hit[4].contains?(phit.x4, phit.y4)     
      @hit[4].y = 2000
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
    if @hit[5].contains?(phit.x1, phit.y1) || @hit[5].contains?(phit.x2, phit.y2) || @hit[5].contains?(phit.x3, phit.y3) || @hit[5].contains?(phit.x4, phit.y4)     
      @hit[5].y = 2000
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
    if @hit[6].contains?(phit.x1, phit.y1) || @hit[6].contains?(phit.x2, phit.y2) || @hit[6].contains?(phit.x3, phit.y3) || @hit[6].contains?(phit.x4, phit.y4)     
      @hit[6].y = 200
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
    if @hit[7].contains?(phit.x1, phit.y1) || @hit[7].contains?(phit.x2, phit.y2) || @hit[7].contains?(phit.x3, phit.y3) || @hit[7].contains?(phit.x4, phit.y4)     
      @hit[7].y = 2000
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
  
 






