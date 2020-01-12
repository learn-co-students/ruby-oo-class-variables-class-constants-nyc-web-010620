class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  # Think about it! When does the BRANDS constant need to be
  # made aware of the brands of the shoes that are being created? => upon initialization 
  # With assistance from https://repl.it/@seanoughton/OO-Basics-with-Class-Constants
  def initialize(brand)
    @brand = brand
    if !(BRANDS.include? (@brand))
      BRANDS << brand
    end 
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end