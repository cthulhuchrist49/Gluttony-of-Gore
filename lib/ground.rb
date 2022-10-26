@groundcounter = 0
def startingground
    @ground = Image.new(
        'assets\ground.png',
        x: 0, y: 900,
        width: 636, height: 84,
      
       
        z: 3
      )
      
      @ground2 = Image.new(
        'assets\ground.png',
        x: 636, y: 900,
        width: 636, height: 84,
        # opacity: 0,
       
        z: 3
      )
      
end

def groundspawn1
    picker = rand(1..4)

    if picker == 1

        @ground2 = Image.new(
    'assets\ground.png',
    x: 636, y: 900,
    width: 636, height: 84,
    color: 'red',
    # opacity: 0,
   
    z: 3
  )

    elsif picker == 2

        @ground2 = Image.new(
            'assets\ground.png',
            x: 636, y: 900,
            width: 636, height: 84,
            color: 'blue',
            # opacity: 0,
           
            z: 3
          )
    elsif picker == 3 

        @ground2 = Image.new(
            'assets\ground.png',
            x: 636, y: 900,
            width: 636, height: 84,
            color: 'green',
            # opacity: 0,
           
            z: 3
          )

    else

        @ground2 = Image.new(
            'assets\ground.png',
            x: 636, y: 900,
            width: 636, height: 84,
            color: 'purple',
            
            # opacity: 0,
           
            z: 3
          )
    end



end

def groundspawn2
    picker = rand(1..4)

    if picker == 1

        @ground = Image.new(
    'assets\ground.png',
    x: 636, y: 900,
    width: 636, height: 84,
    color: 'red',
    # opacity: 0,
   
    z: 3
  )

    elsif picker == 2

        @ground = Image.new(
            'assets\ground.png',
            x: 636, y: 900,
            width: 636, height: 84,
            color: 'blue',
            # opacity: 0,
           
            z: 3
          )

          
    elsif picker == 3 

        @ground = Image.new(
            'assets\ground.png',
            x: 636, y: 900,
            width: 636, height: 84,
            color: 'green',
            # opacity: 0,
           
            z: 3
          )

    else

        @ground = Image.new(
            'assets\groundpit.png',
            x: 636, y: 900,
            width: 636, height: 84,
            color: 'purple',
            
            # opacity: 0,
           
            z: 3
          )

          @groundhit[@groundcounter] = Rectangle.new(
            y: 896,
            x: 832,
            width: 212,
            height: 84,
            opacity: 0.5,
            color: 'red',

        )
        @groundcounter += 1
        @groundcounter = 0 if @groundcounter == 8
    end



end