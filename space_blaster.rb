require 'gosu'
require_relative 'player'

class SpaceBlaster < Gosu::Window
  def initialize
    super(800, 600)
    self.caption = 'Space Blaster'
    @player = Player.new(self)
  end
  def update
    @player.turn_left if button_down?(Gosu::KbLeft)
    @player.turn_right if button_down?(Gosu::KbRight)
    @player.accelerate if button_down?(Gosu::KbUp)
    @player.move
  end
  def draw
    @player.draw
  end


  window = SpaceBlaster.new
  window.show
end
