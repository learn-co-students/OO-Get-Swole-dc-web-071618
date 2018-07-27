class Gym

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|m| m.gym == self}
  end

  def lifters
    memberships.map {|m| m.lifter}
  end

  def names
    lifters.map {|l| l.name}
  end

  def lift_total
    lifters.map {|l| l.lift_total}.inject(:+)
  end

end
