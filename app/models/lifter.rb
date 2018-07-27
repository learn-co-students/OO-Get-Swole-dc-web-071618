class Lifter
  attr_reader :name, :lift_total

  ALL = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    ALL << self
  end

  def self.all
    ALL
  end

  def self.average_lift
    total_lifts = all.map do |lifter|
      lifter.lift_total
    end
    total_lifts.inject(:+) / total_lifts.size
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  def sign_up(cost, gym)
    Membership.new(self, gym, cost)
  end

  def total_cost
    memberships.map do |membership|
      membership.cost
    end.inject(:+)
  end
end
