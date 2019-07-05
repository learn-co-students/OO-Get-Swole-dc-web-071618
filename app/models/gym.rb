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
    Membership.all.select do |m|
      m.gym == self
    end
  end

  def lifters
    memberships.map do |m|
      m.lifter
    end
  end

  def lifter_names
    lifters.map do |l|
      l.name
    end
  end

  def lift_total_for_gym
    total = 0
    lifters.each do |l|
      total += l.lift_total
    end
    total
  end
end
