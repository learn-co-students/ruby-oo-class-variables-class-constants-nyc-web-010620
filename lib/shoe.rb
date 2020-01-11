require "pry"
class Shoe
  attr_accessor :color, :size, :material, :condition, :brand

#[3,4,3,5,6,8,3,2,1] = exmaple

  BRANDS = []
  def initialize(brand)
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)

  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
