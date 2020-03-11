class Owner
  @@all = []
  @@pets = {:dogs => [], :cats => []}
  @@count = 0 
  
  attr_reader :name, :species
  attr_accessor :pets, :cats, :dogs 
  
  def initialize(name, species = "human")
    @name = name 
    @species = species
    @@all << self 
    @@count +=1 
  end 

  def say_species
    "I am a #{@species}."
  end 
 
  def self.all
    @@all 
  end 
  
  def self.count 
    @@all.size 
  end 
  
  def self.reset_all  
    @@all.clear
  end 
  
  
  
   def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end
    
   
end