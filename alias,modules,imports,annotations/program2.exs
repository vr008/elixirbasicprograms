defmodule Math do
  def sum(a, b) do
    a + b
  end
  def dif(a,b) do
    a-b
  end
end

defmodule MyApp do
  alias Math, as: MyMath

  def calculate(a, b) do
    MyMath.sum(a, b)*MyMath.dif(a,b)
  end
end
a=String.to_integer(IO.gets("enter number 1 ") |> String.trim())
b=String.to_integer(IO.gets("enter number 2 ") |> String.trim())
IO.puts MyApp.calculate(a, b)
