class Fighter
  attr_reader :name
  attr_accessor :health, :power

  def initialize(name, health, power)
    @name = name
    @health = health
    @power = power
  end

  def attack(enemy)
    enemy.lose_health(self.power)
  end

  def lose_health(power_attacker)
    self.health -= power_attacker
    #self.health = self.health - power_attacker
  end
end

#self is used to in regards to the object that calls the method

rocky = Fighter.new("rocky", 110, 15)
ali = Fighter.new("mohammed ali", 100, 20)
puts rocky.attack(ali)
puts ali.inspect

puts ali.attack(rocky)
puts rocky.inspect

puts rocky.attack(ali)
puts ali.inspect
