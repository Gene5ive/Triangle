class Triangle

  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  define_method(:is_triangle) do
    if
      @side_a >= @side_b + @side_c ||
      @side_b >= @side_c + @side_a ||
      @side_c >= @side_a + @side_b
      false
    else
      true
    end
  end

  define_method(:equilateral) do
    if
      @side_a == @side_b &&
      @side_b == @side_c
      true
    else
      false
    end
  end
  
  define_method(:isoceles) do
    if  
      @side_a == @side_b ||
      @side_b == @side_c ||
      @side_c == @side_a
      true
    else
      false
    end
  end
  
  define_method(:scalene) do
    if
      @side_a != @side_b &&
      @side_b != @side_c &&
      @side_c != @side_a
      true
    end
      false
    end
  end
end
