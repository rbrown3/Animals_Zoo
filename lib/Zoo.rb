require 'pry'

class Zoo
  @@all = []
  attr_accessor :location, :name
  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

#class method. Returns an array of all zoos
  def self.find_by_location(wanted_location)
    @@all.select do |zoo|
      zoo.location == wanted_location
    end
  end

  def animals
    Animal.all.select do |animal|
      self == animal.zoo
    end
  end

  def animal_species
    array = []
    self.animals.each do |animal|
      array << animal.species
    end
    array.uniq!
  end

  def animal_nicknames
    array = []
    self.animals.each do |animal|
      array << animal.nickname
    end
    array
  end
end
