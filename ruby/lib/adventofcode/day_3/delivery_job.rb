require 'set'

class DeliveryJob
  attr_accessor :x, :y, :presents

  def initialize
    @x = 0
    @y = 0
    @presents = Set.new([[0, 0]])
  end

  def move_up
    drop_present_after { @y += 1 }
  end

  def move_down
    drop_present_after { @y -= 1 }
  end

  def move_left
    drop_present_after { @x -= 1 }
  end

  def move_right
    drop_present_after { @x += 1 }
  end

  private

  def drop_present_after
    yield
    @presents.add([@x, @y])
  end
end
