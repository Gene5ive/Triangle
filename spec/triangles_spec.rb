require 'triangles'
require 'rspec'

describe(Triangle) do
  describe("#equal") do
    it("returns true if the side are equal") do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.equal).to(eq(true))
    end
  end

  describe("#isosceles") do
    it("returns true if two sides are equal") do
      test_triangle = Triangle.new(9,9,14)
      expect(test_triangle.isosceles).to(eq(true))
    end
  end

  describe("#scalene") do
    it("returns true if no side are equal") do
      test_triangle = Triangle.new(3,4,5)
      expect(test_triangle.scalene).to(eq(true))
    end
  end

  describe('#not') do
    it("returns true if one side is at least as long as the other two combined") do
      test_triangle = Triangle.new(3,3,6)
      expect(test_triangle.not).to(eq(true))
    end
  end
end
