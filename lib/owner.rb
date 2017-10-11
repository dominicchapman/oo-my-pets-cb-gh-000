class Owner
  # code goes here

  @@owners = []

  attr_reader :species

  def initialize(species)
    @species = species
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def say_species
    self.species
  end

end


# Owner Class methods keeps track of the owners that have been created
# Owner Class methods can reset the owners that have been created
# Owner Class methods can count how many owners have been created
# Owner instance methods #species initializes with a species
# Owner instance methods #species can't change its species
