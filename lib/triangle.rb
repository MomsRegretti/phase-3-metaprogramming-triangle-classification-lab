class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
  def kind
    if self.l1 && self.l2 && self.l3 == 0
      raise TriangleError
    elsif self.l1 + self.l2 <= self.l3 || self.l1 + self.l3 <= self.l2 || self.l3 + self.l2 <= self.l1
      raise TriangleError
    elsif self.l1 == self.l2 && self.l1 == self.l3
      :equilateral
    elsif self.l1 == self.l2 || self.l1 == self.l3 || self.l2 == self.l3 
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Triangle Error!"
    end
  end
end
