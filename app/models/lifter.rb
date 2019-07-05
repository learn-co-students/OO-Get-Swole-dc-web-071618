
class Lifter

  attr_reader :name, :lift_total

  @@all = []
  @@all_lifters_total = 0

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
    @@all_lifters_total += lift_total
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |m|
      m.lifter == self
    end
  end

  def gyms
    memberships.map do |m|
      m.gym
    end
  end

  def total_cost
    sum = 0
    cost_array = memberships.map do |m|
      m.cost
    end
    cost_array.each do |c|
      sum += c
    end
    sum
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

  def self.avg_lift
    @@all_lifters_total/(@@all.size)
  end
end
