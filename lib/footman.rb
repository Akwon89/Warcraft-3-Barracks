# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'

class Footman < Unit

  attr_reader :health_points, :attack_power

  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points = 60
    @attack_power = 10
  end


  def attack!(enemy)
    # if enemy = Barracks.new
    # enemy.damage(@attack_power / 2).ceil
    # else
    # enemy.damage(@attack_power)
    # end
    if enemy = Barracks.new
    enemy.damage(@attack_power / 2).ceil
    return (@attack_power / 2).ceil
    else
    enemy.damage(@attack_power)
    end
  end

  def damage(attack_power)
    @health_points -= attack_power
  end
end
