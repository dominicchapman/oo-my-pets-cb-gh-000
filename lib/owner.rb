class Owner
  # code goes here

  @@owners = []

  attr_accessor :name
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
    "I am a #{self.species}."
  end

  def pets
    { :fishes => [], :dogs => [], :cats => [] }
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

end


# Owner Class methods keeps track of the owners that have been created
# Owner Class methods can reset the owners that have been created
# Owner Class methods can count how many owners have been created
# Owner instance methods #species initializes with a species
# Owner instance methods #species can't change its species
# Owner instance methods #say_species  can say its species
# Owner instance methods #name can have a name
# Owner instance methods #pets is initialized with a pets attribute as a hash with 3 keys
# Owner instance methods #buy_fish can buy a fish that is an instance of the Fish class
