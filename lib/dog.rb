require "pry"

class Dog
  @@all = []

  def self.all
    @@all
  end

  def self.print_all
    Dog.all.each do |dog|
      puts dog.name
    end
  end

  def self.clear_all
    @@all.clear
  end

  attr_reader :name

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end
end
