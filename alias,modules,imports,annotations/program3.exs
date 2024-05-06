defmodule MyConvertor do
  defmacro celtofar(message) do
    quote do
      c=String.to_integer(unquote(message))
      f=(c*9/5+32)
    end
  end
  defmacro celtokel(message) do
    quote do
      c=String.to_integer(unquote(message))
      f=(c+273)
    end
  end
end

defmodule MyApp do
  require MyConvertor

  def ctof(a) do
    MyConvertor.celtofar(a)
  end
  def ctok(b) do
    MyConvertor.celtokel(b)
  end
end
a="20"
b="30"
IO.inspect(MyApp.ctof(a))
IO.inspect(MyApp.ctok(b))
