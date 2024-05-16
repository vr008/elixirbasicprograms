defprotocol Utility do
  @spec type(t) :: String.t()
  def type(value)

end

defimpl Utility, for: BitString do
  def type(_value), do: "string"
end

defimpl Utility, for: Integer do
  def type(_value), do: "integer"
end
defimpl Utility, for: Float do
  def type(_value), do: "float"
end
defimpl Utility, for: Atom do
  def type(_value), do: "Atom"
end

defimpl Utility, for: Map do
  def type(_value), do: "Map"
end
defimpl Utility, for: List do
  def type(_value), do: "List"
end
defimpl Utility, for: Tuple do
  def type(_value), do: "Tuple"
end
IO.inspect(Utility.type("foo"));
IO.inspect(Utility.type(123));
IO.inspect(Utility.type(123.67));
IO.inspect(Utility.type(:ok));

IO.inspect(Utility.type(%{a: 1, b: 2}));
IO.inspect(Utility.type([1, 2, 3]));
IO.inspect(Utility.type({1, 2, 3}));
