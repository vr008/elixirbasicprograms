defmodule Geomentry do
  defmodule Circle do
    def area(radius) do
    :math.pi * radius * radius
  end
end
defmodule Rectangle do
  def area(x,y) do
x*y
end
end
end
IO.puts(Geomentry.Circle.area(10))
IO.puts(Geomentry.Rectangle.area(10,6))
