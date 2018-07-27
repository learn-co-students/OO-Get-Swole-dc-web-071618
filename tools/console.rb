require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

l1 = Lifter.new("John Cena", 50)
l2 = Lifter.new("Larry Lobster", 100)
l3 = Lifter.new("Molly", 10)

g1 = Gym.new("WWE")
g2 = Gym.new("Bikini Bottom")
g3 = Gym.new("Downstairs")

m1 = Membership.new(50, g1, l1)
m2 = Membership.new(100, g2, l2)
m3 = Membership.new(10, g3, l3)
m4 = Membership.new(50, g2, l1)


binding.pry
