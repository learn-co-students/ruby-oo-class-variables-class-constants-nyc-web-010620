class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    
    # brand_amount = []
    # brand_amount << brand
    
    # BRANDS <<brand_amount.map{|b| "#{b}"}.uniq.join(", ")
    BRANDS << brand unless BRANDS.include?(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end