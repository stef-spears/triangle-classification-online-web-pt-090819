class Triangle
  
  attr_reader :side_1, :side_2, :side_3, :lengths
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
   # @lengths = [side_3, side_2, side_1].sort!
  end
  
  def kind
    
    
    # if any side < 0 or any two sides are less than the third side raise error
    
      if side <= 0 || (@side_1 + @side_2 < @side_3) || (@side_2 + @side_3 < @side_1) || (@side_1 + @side_3 < @side_2)
        #begin
        raise TriangleError
        #rescue TriangleError => error
        #end
        #puts error.message
        
    # elsif all 3 sides have same length
    # i.e. if side_1 == side_2 && side_2 == side_3
    # :equilateral
    
        elsif @side_1 == @side_2 && @side_2 == @side_3
          "#{:equilateral}"
         
    # elsif only 2 sides are equivalent 
    # :isosceles
    
        elsif (@side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3)
          "#{:scalene}"
          
        else "#{:isosceles}"
      end
    end
    
     

    
    # if all 3 are different
    #
    # scalene
  
    
    
  end
  
end

  class TriangleError < StandardError
    #def message
    #  "you done goofed!"
    #end
  end
