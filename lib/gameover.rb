# def initialize
#   @topten = [10]
# end

def gameover
  @hero.play animation: :die, flip: :horizontal, loop: true
      @playing = false
      @score.z = -100
      finalscore = Text.new(
        "Your gore was #{@highscore}",
        x: 80, y: 470,
        font: 'assets\shogun.ttf',
        
        size: 50,
        color: '#4d0e0e', 
        z: 10
      )

    gameover = Text.new(
  "YOU DIED",
  x: 65, y: 350,
  font: 'assets\shogun.ttf',
  
  size: 120,
  color: '#a70101',  
  z: 10
)

again = Text.new(
  "Press any key to play again",
  x: 40, y: 550,
  font: 'assets\naughty.ttf',
 
  size: 30,
  color: '#4d0e0e', 
  z: 10
)

blackscreen = Rectangle.new(
    z: 9,
  width: 640,
  height: 960,
  opacity: 0.5,
  color: 'black',
  

)




end

