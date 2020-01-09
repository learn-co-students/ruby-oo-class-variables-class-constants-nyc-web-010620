class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)
    # https://stackoverflow.com/questions/14004325/add-element-to-an-array-if-its-not-there-already
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end