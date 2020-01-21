require "pry"
class Owner
  @@all_owners = []
  @@all_pets = {:fish => [], :dog => [], :cat=> []}
  attr_accessor :pets, :fish, :dog, :cat 
  attr_reader  :name
  def initialize(name)
    @name = name
    @@all_owners << self
  end
  
  
 def species(species = "human")
   @species = species
   @species
 end 
 
 
 def say_species
   return "I am a #{species}."
 end
 
 
 def self.all
   @@all_owners
 end 
 
 
 def self.count
   @@all_owners.size 
   end 
   
   
   def self.reset_all
     @@all_owners.clear
   end 
   
   
   def cats
     Cat.all.select do |c|
       c.owner == self
     end
   end 
   
   
   def dogs
     Dog.all.select do |d|
       d.owner == self
     end
   end 
   
   
   def buy_cat(name)
     Cat.new(name, self)
   end
   
   
   def buy_dog(name)
     Dog.new(name, self)
   end
   
   
   def walk_dogs
     Dog.all.each do |d|
       d.mood = "happy"
     end
   end 
   
   
   def feed_cats
     Cat.all.each do |c|
       c.mood = "happy"
     end
   end 
   
   
  def sell_pets
    # self.cats.clear {|c| c.mood = "nervous"}
    # self.dogs.clear {|d| d.mood = "nervous"}
    @@all_pets{:cats} << self.cats
    
  
   end
end