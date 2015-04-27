require 'triangles'
require 'rspec'
require 'pry'

describe(Triangle) do
  describe("#triangle_type") do
    it("returns true if the side are equal") do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.triangle_type).to(eq("Equilateral"))
    end
  end

  describe("#triangle_type") do
    it("returns true if two sides are equal") do
      test_triangle = Triangle.new(9,9,14)
      expect(test_triangle.triangle_type).to(eq("Isosceles"))
    end
  end

  describe("#triangle_type") do
    it("returns Scalene if no sides are equal") do
      test_triangle = Triangle.new(3,4,5)
      expect(test_triangle.triangle_type).to(eq("Scalene"))
    end
  end

  describe('#triangle_type') do
    it("returns true if one side is at least as long as the other two combined") do
      test_triangle = Triangle.new(3,6,9)
      expect(test_triangle.triangle_type).to(eq("Not a triangle"))
    end
  end
end
