class Triangle

  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  define_method(:equal) do
    @side_a == @side_b &&
    @side_b == @side_c
    "Equilateral"
  end

  define_method(:isosceles) do
    @side_a == @side_b ||
    @side_b == @side_c ||
    @side_c == @side_a
    "Isosceles"
  end

  define_method(:scalene) do
    @side_a != @side_b &&
    @side_b != @side_c &&
    @side_c != @side_a
    "Scalene"
  end

  define_method(:not) do
    @side_a == @side_b + @side_c ||
    @side_b == @side_a + @side_c ||
    @side_c == @side_a + @side_b
    "Not a triangle"
  end

end
