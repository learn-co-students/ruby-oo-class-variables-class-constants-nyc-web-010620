class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    unless BRANDS.include? brand
      BRANDS << brand
    end
    puts "#{BRANDS}"
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def self.brands
    BRANDS
  end

end