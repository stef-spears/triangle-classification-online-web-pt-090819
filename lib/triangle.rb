class Triangle
  
  attr_reader :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    
    
    # put sides in an array, iterate thru
    # if any side < 0
    # throw error 
    # elsif all 3 sides have same length
    # i.e. if side_1 == side_2 && side_2 == side_3
    # :equilateral
    # elsif only 2 sides are equivalent 
    #
    # :isosceles
    # if all 3 are different
    #
    # scalene
  
    class TriangleError < StandardError
    end
    
  end
  
  
  
end
