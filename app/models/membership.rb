class Membership
  attr_accessor :cost, :gym, :lifter

  ALL = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    ALL << self
  end

  def self.all
    ALL
  end
end
