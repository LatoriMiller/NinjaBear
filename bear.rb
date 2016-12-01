require_relative 'fighter'

class Bear < Fighter
  def attack(enemy)
    puts "RAWRR!!!"
    enemy.lose_health(self.power)
  end
end

# bear = Bear.new("bear", 100, 12)
# ninja = Fighter.new("ninja", 120, 7)
# puts ninja.inspect
# puts bear.attack(ninja)
