
def setup_game
#sets up all the background and enviroment assets
  @moon_backdrop = Image.new(
      'assets\moonback.png',
      x: 0, y: 0,
      width: 640, height: 960,
      z: 0
    )
    @lower_clouds = Image.new(
      'assets\lowercloud.png',
      x: 0, y: 0,
      z:1,
      width: 3200, height: 960
    )
    @upper_clouds = Image.new(
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
   
    @mountains_lit = Sprite.new(
      'assets\mountainslit.png',
      x: 0, y: 0,
      z: 4,
      width:3200,
      height: 960,
      clip_width: 3200,
      time: 75,
      animations: 
      {
      lightning: 1..4,
      }       
    )
    @front_backdrop = Image.new(
      'assets\frontback.png',
      x: 0, y: 0,
      z:5,
      width: 3200, height: 960   
    )
    @foreground_corpses = Image.new(
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
      animations: 
      {
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
      animations: 
      {
      lightning: 1..4,
      }       
    )
    
  #sets up all the intial instances of the hitboxes and enemy units   
  @flying_enemy = []
  @flying_enemy_hitbox = []
  @ground_hitbox = []
  @walking_enemy = []
  @walking_enemy_hitbox = []

  badguycounter = 0

  while badguycounter <= 7
    @flying_enemy[badguycounter] = Sprite.new(
      'assets\bfly.png',
        y: -989,
        x:0,
        width:84,
        height: 84,
        opacity: 0,
        clip_width: 84,
        time: 100,
        animations: 
        {
        walk: 1..7,
        }       
        )
    @flying_enemy_hitbox[badguycounter] = Sprite.new(
      'assets\bfly.png',
        y: -600,
        x: 1000,
        width:84,
        height: 84,
        opacity: 0,
        clip_width: 84,
        time: 100,
        animations: 
        {
        walk: 1..7,
        }       
        )
    @walking_enemy[badguycounter] = Sprite.new(
      'assets\bfly.png',
        y: -600,
        x:0,
        width:84,
        height: 84,
        opacity: 0,
        clip_width: 84,
        time: 100,
        animations: 
        {
        walk: 1..7,
        }       
        )
    @walking_enemy_hitbox[badguycounter] = Square.new(
        y: -999,
        x: 0,
        size: 1,
        opacity: 0,     
        )
    @ground_hitbox[badguycounter] = Square.new(
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
    animations: 
    {
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
    @score_timer = 0
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
    $float_value = []
    $float_value[0] = 5
    $float_value[1] = 5
    $float_value[2] = 5
    $float_value[3] = 5
    $float_value[4] = 5
    $float_value[5] = 5
    $float_value[6] = 5
    $float_value[7] = 5
    
    $bounce_value = []
    $bounce_value[0] = 250
    $bounce_value[1] = 250
    $bounce_value[2] = 250
    $bounce_value[3] = 250
    $bounce_value[4] = 250
    $bounce_value[5] = 250
    $bounce_value[6] = 250
    $bounce_value[7] = 250
    
    $flying_direction = []
    $flying_direction[0] = 1
    $flying_direction[1] = 1
    $flying_direction[2] = 1
    $flying_direction[3] = 1
    $flying_direction[4] = 1
    $flying_direction[5] = 1
    $flying_direction[6] = 1
    $flying_direction[7] = 1

    @punch_hitbox = Rectangle.new(
    x: 800,
    y: @hero.y + 10,
    z:8,
    width: 100,
    height: 30,
    opacity: 0.5,
    color: 'green',
    )

end