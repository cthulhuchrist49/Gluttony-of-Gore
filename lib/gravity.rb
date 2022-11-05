class Physics

  def initialize
    $jump_speed = -40
    @gravity_timer = 0 
    @jump_timer = 0
    @floaty_time = 0
    @floaty = 1
    @ground_floor = $grounded
    @velocity = 0
  end    

  def gravity(thing) 
    @gravity_timer = @gravity_timer + 0.15 if thing.y < @ground_floor
    @gravity_timer = 0 if thing.y >= @ground_floor  
    @velocity = (1 * @gravity_timer)*2 if @gravity_timer >= 1

    if (thing.y + @velocity) > @ground_floor
      @velocity = (@ground_floor - thing.y)
    end
    
    if thing.y <= @ground_floor
      thing.y += (@velocity)
    end
  end

  def jump(thing)
    @jump_timer = @jump_timer + 0.01 if thing.y < @ground_floor
    @jump_timer = 0 if thing.y >= @ground_floor 
    $jump_speed  =  ($jump_speed + @jump_timer) if  $jump_speed <= 0
    
    if ($jump_speed + @jump_timer) > 0 
      $jump_speed = 0
    end

    thing.y += $jump_speed

  end

  def flying(thing2, updown, bounce, start)    
    @floaty_time += 1
    thing2.x -= 7
    thing2.y += updown if @floaty == start
    thing2.y -= updown if @floaty == -start
    @floaty = -@floaty if @floaty_time %  bounce == 0
  end
  
 end
