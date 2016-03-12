


class Unit 

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

   def attack!(enemy)
    if self.health_points > 0
        if enemy.health_points > 0
          enemy.damage(@attack_power)
        end
    else
      nil
    end
  end

  def dead?
    @health_points == 0
  end

end