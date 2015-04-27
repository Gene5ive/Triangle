class Triangle

  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  define_method(:triangle_type) do
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


#if side_a == side_b
  #not
  #equal
  #iso
  #if side_b == side_c
    #equalateral
  #elsif side_b != side_c
    #not
    #iso
    #if
