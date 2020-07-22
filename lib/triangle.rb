class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end 

  def kind 
    if side_a < 0 || side_b < 0 || side_c < 0
      raise TriangleError
    elsif side_a == 0 || side_b == 0 || side_c == 0 
      raise TriangleError
    elsif side_a + side_b <= side_c || side_b + side_c <= side_a || side_a + side_c <= side_b
      raise TriangleError
    elsif side_a == side_b  && side_b == side_c 
      "equilateral".to_sym
    elsif   side_a == side_b || side_b == side_c || side_c == side_a
      "isosceles".to_sym
    else side_a != side_b && side_b != side_c && side_c != side_a
      "scalene".to_sym
    end 
  end 

  class TriangleError < StandardError
    def message
      "This triangle is invalid but I'm hoping that learn gives me the custom error message it wants" 
    end 
  end 
end
