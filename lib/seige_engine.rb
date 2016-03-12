class SeigeEngine < Unit

  def initialize
    super(400, 50)
  end

   def attack!(enemy)
    # if enemy = Barracks.new
    # enemy.damage(@attack_power / 2).ceil
    # else
    # enemy.damage(@attack_power)
    # end
    if enemy = Barracks.new
    enemy.damage(@attack_power * 2).ceil
    return (@attack_power * 2).ceil
    else
    enemy.damage(@attack_power)
    end
  end

end