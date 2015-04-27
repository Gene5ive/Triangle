require 'triangles'
require 'rspec'

describe(Triangle) do
  describe("#equal") do
    it("returns 'equilateral' if the side are equal") do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.equal).to(eq(true))
    end
  end
end
