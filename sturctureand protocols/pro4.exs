defprotocol Size do

  def size(value)

end

defimpl Size, for: BitString do
  def size(string), do: byte_size(string)
end



defimpl Size, for: Map do
  def size(map), do: map_size(map)
end
defimpl Size, for: List do
  def size(list), do: length(list)
end
defimpl Size, for: Tuple do
  def size(tuple), do: tuple_size(tuple)
end
IO.inspect(Size.size("foo"));



IO.inspect(Size.size(%{a: 1, b: 2}));
IO.inspect(Size.size([1, 2, 3]));
IO.inspect(Size.size({1, 2, 3}));
IO.inspect(Size.size(%{}));
