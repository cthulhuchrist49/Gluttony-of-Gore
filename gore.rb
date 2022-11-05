require 'ruby2d'
require '.\lib\gravity'
require '.\lib\enemyspawn'
require '.\lib\col.rb'
require '.\lib\ground.rb'
require '.\lib\movement.rb'
require '.\lib\gameover.rb'
require '.\lib\setup.rb'
require '.\lib\punchcol.rb'

STDOUT.sync = true

set title: 'Gluttony of Gore', background: 'black'
set diagnostics: true
set width: 640
set height: 960
set viewport_width: 640
set viewport_height: 960
set resizable: true


setup_game

#Title screen
title_screen = Image.new(
  'assets\startback.png',
  x: 0,
  y: 0,
  z: 10,
)

@playing = false
@gravity_is = true

on :key_down do |event| 
  # A key was pressed
  case event.key 
    when 'space'
      if @playing == false 
        clear
        setup_game
        @hero_hitbox.y = 2000
      end
    end

  case event.key
    when 'p'
      @punch = true
    end   
end

on :key_held do |event|
  case event.key
    when 'space' 
      @physics.jump(@hero) if @jump_stop == 0 && @playing == true
      @physics.jump(@hero_hitbox) if @jump_stop == 0 && @playing == true
      @gravity_is = false 
    end
end

on :key_up do |event|
  case event.key
    when 'space'
      if @hero.y <= $grounded
        @jump_stop = 1
        @gravity_is = true
        $jump_speed = -30 
      end  
    end
end

update do |i|
  if @playing
    
    if rand(1..250) == 250
     @lightning.play animation: :lightning 
     @mountains_lit.play animation: :lightning 
    end

    @score_timer += 1
    @highscore = @highscore + 1 if @score_timer % 5 == 0 && !knock(@flying_enemy_hitbox)
    @score.text = "Gore: #{@highscore}"

    @upper_clouds.x -= 2
    @upper_clouds.x = 0  if @upper_clouds.width - 640  + @upper_clouds.x  <= 0

    @lower_clouds.x -= 1
    @lower_clouds.x = 0  if @lower_clouds.width - 640  + @lower_clouds.x  <= 0

    @mountain.x -= 3
    @mountain.x = 0  if @mountain.width - 640  + @mountain.x  <= 0

    @mountains_lit.x = @mountain.x
   

    @front_backdrop.x -= 6
    @front_backdrop.x = 0  if @front_backdrop.width - 640  + @front_backdrop.x  <= 0
    
    @ground.x -= 6
    @ground_2.x -= 6

    @foreground_corpses.x -= 10
    @foreground_corpses.x = 0  if @foreground_corpses.width - 640  + @foreground_corpses.x  <= 0

    ground_spawn_1 if @ground_2.x == -636
    ground_spawn_2 if @ground.x == -636

    @physics.gravity(@hero)
    @hero_hitbox.x = @hero.x 
    @hero_hitbox.y = @hero.y
    @punch_hitbox.y = @hero.y + 10
    @jump_stop = 0 if @hero.y == $grounded

    spawner if Time.now >= @spawner_delay + 3
    ground_spawner if Time.now >= @spawner_delay + 1.5
    enemy_knock(@ground_hitbox)
    punching(@punch_hitbox)

    movement
      
    if @punch == true
      @delay += 1
      if @delay.%(get(:fps).div(8)).zero? 
        @punch_hitbox.x = 60  
      end    
      if @delay.%(get(:fps).div(4)).zero? && @hero.y >= $grounded -20
        @punch_hitbox.x = 800
        @delay = 0
        @punch = false
      end
    end

    if knock(@flying_enemy_hitbox) && @flying_enemy_hitbox 
      gameover
    end

    if knock(@ground_hitbox)  
      gameover
    end

    if knock(@walking_enemy_hitbox) && @walking_enemy_hitbox
      gameover
    end  
  end
end



show