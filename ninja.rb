require_relative 'fighter'
require_relative 'bear'

class Ninja < Fighter
  def attack(enemy)
    puts "...silence"
    enemy.lose_health(self.power)
  end
end

ninja = Ninja.new("ninja", 100, 7)
bear = Bear.new("bear", 110, 12)

puts ninja.attack(bear)
puts bear.inspect
puts ninja.inspect
