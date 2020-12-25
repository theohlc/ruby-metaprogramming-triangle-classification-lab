class Triangle
  attr_accessor :a, :b, :c 
  
  def initialize(side_a, side_b, side_c)
    @a = side_a
    @b = side_b
    @c = side_c
  end

  def kind
    if a + b <= c || b + c <= a || c + a <= b || a == 0 || b == 0 || c == 0
      raise TriangleError
    elsif a == b && b == c 
      :equilateral
    elsif a == b || b == c || c == a 
      :isosceles
    else  
      :scalene
    end
  end

  class TriangleError < StandardError
    
  end
end
