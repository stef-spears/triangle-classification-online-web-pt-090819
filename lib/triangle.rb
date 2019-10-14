class Triangle
  
  attr_reader :side_1, :side_2, :side_3, :lengths
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @lengths = [side_3, side_2, side_1].sort!
  end
  
  def kind
    
    # put sides in an array, iterate thru
    # if any side < 0
    # throw error
    
    @lengths.each do |side|
      if side < 0 || (@lengths[0] + @lengths[1] < @lengths[2]) || (@lengths[1] + @lengths[2] < @lengths[0]) || (@lengths[0] + @lengths[2] < @lengths[1])
        begin
        raise TriangleError
        rescue TriangleError => error
        end
        puts error.message
        
        
        elsif side_1 == side_2 && side_2 == side_3
          #{:equilateral}
          
        
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
  
    
    
  end
  
end

  class TriangleError < StandardError
    def message
      "you done goofed!"
    end
  end
