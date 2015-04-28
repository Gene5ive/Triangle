class Triangle

  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  define_method(:triangle_type) do
    unless
       @side_a + @side_b > @side_c &&
       @side_b + @side_c > @side_a &&
       @side_c + @side_a > @side_b
       "Not a triangle"
    else
      if
        @side_a == @side_b &&
        @side_b == @side_c
        "Equilateral"
      elsif
        @side_a == @side_b ||
        @side_b == @side_c ||
        @side_c == @side_a
        "Isosceles"
      else
        @side_a != @side_b &&
        @side_b != @side_c &&
        @side_c != @side_a
        "Scalene"
      end
    end
  end
end
