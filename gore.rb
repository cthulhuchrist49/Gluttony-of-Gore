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

set title: 'Howdy', background: 'navy'
set diagnostics: true
set width: 640
set height: 960

setuptime
#Title screen
startingback = Image.new(
  'assets\startback.png',
  x: 0,
  y: 0,
  z: 10,
)

@playing = false
@gravityis = true

on :key_down do |event| 
  # A key was pressed
  case event.key 
  when 'space'
    if @playing == false 
      clear
      setuptime
      @myhitbox.y = 2000
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
    @physics.jump(@hero) if @jumpstop == 0 && @playing == true
    @physics.jump(@myhitbox) if @jumpstop == 0 && @playing == true
    @gravityis = false 
  end
end

on :key_up do |event|
  case event.key
  when 'space'
    if @hero.y <= $grounded
      @jumpstop = 1
      @gravityis = true
      $jumpspeed = -30 
    end  
  end
end

update do |i|
  if @playing

    @lightning.play animation: :lightning  if rand(1..250) == 250

    @scoretimer += 1
    @highscore = @highscore + 1 if @scoretimer % 5 == 0 && !knock(@hit)
    @score.text = "Gore: #{@highscore}"

    @back.x -= 2
    @back.x = 0  if @back.width - 640  + @back.x  <= 0

    @back2.x -= 1
    @back2.x = 0  if @back2.width - 640  + @back2.x  <= 0

    @mountain.x -= 3
    @mountain.x = 0  if @mountain.width - 640  + @mountain.x  <= 0

    @frontback.x -= 6
    @frontback.x = 0  if @frontback.width - 640  + @frontback.x  <= 0
    
    @ground.x -= 6
    @ground2.x -= 6

    @frontbodies.x -= 8
    @frontbodies.x = 0  if @frontbodies.width - 640  + @frontbodies.x  <= 0

    groundspawn1 if @ground2.x == -636
    groundspawn2 if @ground.x == -636

    @physics.gravity(@hero)
    @myhitbox.x = @hero.x 
    @myhitbox.y = @hero.y
    @punchbox.y = @hero.y + 10
    @jumpstop = 0 if @hero.y == $grounded

    spawner if Time.now >= @spawner_delay + 3
    groundspawner if Time.now >= @spawner_delay + 1.5
    enemyknock(@groundhit)
    punching(@punchbox)

    movement
      
    if @punch == true
      @delay += 1
      if @delay.%(get(:fps).div(8)).zero? 
        @punchbox.x = 60  
      end    
      if @delay.%(get(:fps).div(4)).zero? && @hero.y >= $grounded -20
        @punchbox.x = 800
        @delay = 0
        @punch = false
      end
    end

    if knock(@hit) && @hit 
      gameover
    end

    if knock(@groundhit)  
      gameover
    end

    if knock(@walkinghit) && @walkinghit
      gameover
    end  
  end
end



show