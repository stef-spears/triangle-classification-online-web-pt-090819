class Triangle
  
  attr_reader :side_1, :side_2, :side_3, :lengths
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @lengths = [side_3, side_2, side_1]
  end
  
  def kind
    
    # put sides in an array, iterate thru
    # if any side < 0
    # throw error
    
    @lengths.each do |side|
      if side < 0
        begin
        raise TriangleError
        rescue TriangleError => error 
        puts error.message
      end
    end
    
     
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
      def message
        "you done goofed!"
      end
    end
    
  end
  
  
  
end
