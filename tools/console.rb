require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# LIFTERS
chad = Lifter.new("Chad", 250)
brad = Lifter.new("Brad", 200)
sara = Lifter.new("Sara", 170)
# GYMS
gym1 = Gym.new("Gym 1")
gym2 = Gym.new("Gym 2")
gym3 = Gym.new("Gym 3")

# MEMBERSHIPS
mem1 = Membership.new(chad, gym3, 100)
mem2 = Membership.new(brad, gym2, 70)
mem3 = Membership.new(chad, gym1, 150)
mem4 = Membership.new(sara, gym1, 150)
binding.pry
puts nil
