
class Lifter

  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select {|m| m.lifter == self}
  end

  def gyms
    memberships.map {|m| m.gym}
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

  def self.all
    @@all
  end

  def new_gym(cost, gym)
    Membership.new(cost, gym, self)
  end

end
