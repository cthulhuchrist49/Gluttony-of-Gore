@ground_counter = 0
def starting_ground
  @ground = Image.new(
      'assets\ground.png',
      x: 0, y: 900,
      z:5,
      width: 636, height: 84 
    )
    
    @ground_2 = Image.new(
      'assets\ground.png',
      x: 636, y: 900,
      z: 5,
      width: 636, height: 84
    )  
end

def ground_spawn_1
    picker = rand(1..4)

    if picker == 1
   
      @ground_2 = Image.new(
        'assets\ground.png',
        x: 636, y: 900,
        z: 5,
        width: 636, height: 84,
      )

    elsif picker == 2

      @ground_2 = Image.new(
          'assets\ground.png',
          x: 636, y: 900,
          z: 5,
          width: 636, height: 84,
      )

    elsif picker == 3 

      @ground_2 = Image.new(
          'assets\ground.png',
          x: 636, y: 900,
          z: 5,
          width: 636, height: 84,
      )

    else

      @ground_2 = Image.new(
          'assets\ground.png',
          x: 636, y: 900,
          z: 5,
          width: 636, height: 84,
      )

    end
end

def ground_spawn_2
    picker = rand(1..4)

    if picker == 1

      @ground = Image.new(
        'assets\ground.png',
        x: 636, y: 900,
        z: 5,
        width: 636, height: 84,
      )

    elsif picker == 2

      @ground = Image.new(
          'assets\ground.png',
          x: 636, y: 900,
          z: 5,
          width: 636, height: 84,
      )

    elsif picker == 3 

      @ground = Image.new(
          'assets\ground.png',
          x: 636, y: 900,
          z: 5,
          width: 636, height: 84,
      )

    else

      @ground = Image.new(
          'assets\groundpit.png',
          x: 636, y: 900,
          z: 5,
          width: 636, height: 84,
      )

      @ground_hitbox[@ground_counter] = Rectangle.new(
        y: 896,
        x: 832,
        width: 212,
        height: 84,
        opacity: 0.5,
        color: 'red',
      )
      
      @ground_counter += 1
      @ground_counter = 0 if @ground_counter == 8
     
    end
end