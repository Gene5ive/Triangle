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
      test_triangle = Triangle.new(1,1,4)
      expect(test_triangle.isosceles).to(eq(true))
    end
  end
end
