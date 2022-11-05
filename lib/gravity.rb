

class Physics

def initialize
  @fallspeed = 0
  $jump_speed = -40
  @time = 0 
  @time2 = 0
  @floatytime = 0
  @floaty = 1
  
  @groundfloor = $grounded
  @velocity = 0


end


  
      

    def gravity(thing) 
        @time = @time + 0.15 if thing.y < @groundfloor
        @time = 0 if thing.y >= @groundfloor  
        

        @velocity = (1 * @time)*2 if @time >= 1
       
        if (thing.y + @velocity) > @groundfloor
          @velocity = (@groundfloor - thing.y)
        end
        if thing.y <= @groundfloor
        thing.y += (@velocity)
        
        end
        
       
        
      
      end

    def jump(thing)
      @time2 = @time2 + 0.01 if thing.y < @groundfloor
      @time2 = 0 if thing.y >= @groundfloor
      # $jump_speed = -30 if thing.y >= @groundfloor

        
      $jump_speed  =  ($jump_speed + @time2) if  $jump_speed <= 0
      if ($jump_speed + @time2) > 0 
        $jump_speed = 0
      end
     

      
      thing.y += $jump_speed
      
      
    end

    def flying(thing2, updown, bounce, start)    
      @floatytime += 1
      thing2.x -= 7
      thing2.y += updown if @floaty == start
      thing2.y -= updown if @floaty == -start
      @floaty = -@floaty if @floatytime %  bounce == 0
    end

 end
