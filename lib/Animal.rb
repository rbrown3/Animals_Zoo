require 'pry'
class Animal
  @@all =[]
  attr_accessor :weight
  attr_reader :species, :nickname, :zoo
  def initialize(species,nickname,weight, zoo)
    @species=species
    @nickname=nickname
    @weight=weight
    @@all << self
    @zoo = zoo
  end
  def self.all
    @@all
  end
  def self.find_by_species(wanted_species)
    @@all.select do |animal|
     animal.species == wanted_species
   end
 end
end
