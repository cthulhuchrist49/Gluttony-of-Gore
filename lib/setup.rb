
def setup_game
#sets up all the background and enviroment assets
  @backmoon = Image.new(
      'assets\moonback.png',
      x: 0, y: 0,
      width: 640, height: 960,
      z: 0
    )
    @back2 = Image.new(
      'assets\lowercloud.png',
      x: 0, y: 0,
      z:1,
      width: 3200, height: 960
    )
    @back = Image.new(
      'assets\uppercloud.png',
      x: 0, y: 0,
      z: 2,
      width: 3200, height: 960
    )
    @mountain = Image.new(
      'assets\mountains.png',
      x: 0, y: 0,
      z:3,
      width: 3200, height: 960      
    )
   
    @mountainslit = Sprite.new(
      'assets\mountainslit.png',
      x: 0, y: 0,
      z: 4,
      width:3200,
      height: 960,
      clip_width: 3200,
      time: 75,
      animations: {
          lightning: 1..4,
          }       
    )
    @frontback = Image.new(
      'assets\frontback.png',
      x: 0, y: 0,
      z:5,
      width: 3200, height: 960   
    )
    @frontbodies = Image.new(
      'assets\frontbodies.png',
      x: 0, y: 0,
      z:9,
      width: 3200, height: 960   
    )
    @rain = Sprite.new(
      'assets\rain.png',
      x: 0, y: 0,
      z: 200,
      width:640,
      height: 960,
      clip_width: 640,
      time: 50,
      animations: {
          rain: 1..4,
          }       
    )
    @rain.play animation: :rain, loop: true
    @lightning = Sprite.new(
      'assets\lightning.png',
      x: 0, y: 0,
      z: 100,
      opacity: 0.5,
      width:640,
      height: 960,
      clip_width: 640,
      time: 25,
      animations: {
          lightning: 1..4,
          }       
    )
    
  #sets up all the intial instances of the hitboxes and enemy units   
  @guy = []
  @hit = []
  @groundhit = []
  @groundguy = []
  @walkinghit = []

  badguycounter = 0

  while badguycounter <= 7
    @guy[badguycounter] = Sprite.new(
      'assets\bfly.png',
        y: -989,
        x:0,
        width:84,
        height: 84,
        opacity: 0,
        clip_width: 84,
        time: 100,
        animations: {
            walk: 1..7,
            }       
        )
    @hit[badguycounter] = Sprite.new(
      'assets\bfly.png',
        y: -600,
        x: 1000,
        width:84,
        height: 84,
        opacity: 0,
        clip_width: 84,
        time: 100,
        animations: {
            walk: 1..7,
            }       
        )
    @groundguy[badguycounter] = Sprite.new(
      'assets\bfly.png',
        y: -600,
        x:0,
        width:84,
        height: 84,
        opacity: 0,
        clip_width: 84,
        time: 100,
        animations: {
            walk: 1..7,
            }       
        )
    @walkinghit[badguycounter] = Square.new(
        y: -999,
        x: 0,
        size: 1,
        opacity: 0,     
        )
    @groundhit[badguycounter] = Square.new(
        y: -999,
        x: 0,
        size: 1,
        opacity: 0,     
        )

    badguycounter += 1
  end

  @hero = Sprite.new(
    'assets\heroguy.png',
    y: 703,
    z: 6,
    width:84,
    height: 84,
    clip_width: 84,
    time: 100,
    animations: {
      walk: 1..6,
      die: 7..8,
       }  
  )
  @hero.play animation: :walk, flip: :horizontal, loop: true
  
  @hero_hitbox = Rectangle.new(
    y: 703,
    width: 75,
    height: 80,
    opacity: 0.5,
    color: 'red',
  )
  
    startingground
    
    $grounded = 816
    
    @punch = false
    @jump_stop = 0 
    @highscore = 0000000
    @physics = Physics.new
    @playing = true
    @scoretimer = 0
    @delay = 0 
    @spawner_delay = Time.now
    @score = Text.new(
      "Gore: #{@highscore}",
      x: 10, y: 0,
      font: 'assets\shogun.ttf',
      size: 50,
      color: '#4d0e0e', 
      z: 10,
    )
    #establishes initial values before random spawn kicks in
    $floatvalue = []
    $floatvalue[0] = 5
    $floatvalue[1] = 5
    $floatvalue[2] = 5
    $floatvalue[3] = 5
    $floatvalue[4] = 5
    $floatvalue[5] = 5
    $floatvalue[6] = 5
    $floatvalue[7] = 5
    
    $bouncevalue = []
    $bouncevalue[0] = 250
    $bouncevalue[1] = 250
    $bouncevalue[2] = 250
    $bouncevalue[3] = 250
    $bouncevalue[4] = 250
    $bouncevalue[5] = 250
    $bouncevalue[6] = 250
    $bouncevalue[7] = 250
    
    $flyingvalue = []
    $flyingvalue[0] = 1
    $flyingvalue[1] = 1
    $flyingvalue[2] = 1
    $flyingvalue[3] = 1
    $flyingvalue[4] = 1
    $flyingvalue[5] = 1
    $flyingvalue[6] = 1
    $flyingvalue[7] = 1

    @punchbox = Rectangle.new(
    x: 800,
    y: @hero.y + 10,
    z:8,
    width: 100,
    height: 30,
    opacity: 0.5,
    color: 'green',
    )

end