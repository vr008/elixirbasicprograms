defmodule Check do
  def add(a,b) when is_integer(a) and is_integer(b) do
    a+b
  end
  def add(a,b) when is_float(a) and is_float(b) do
    a+b
  end
  def add(a,b) when is_binary(a) and is_binary(b) do
    a<>b
  end
  def add(a,b) when is_list(a) and is_list(b) do
    a ++ b
  end
end
IO.puts(Check.add(1,2))
IO.puts(Check.add(1.3,2.6))
IO.puts(Check.add("ji","hj"))
IO.inspect(Check.add([1,2,3],[4,5,6]))
