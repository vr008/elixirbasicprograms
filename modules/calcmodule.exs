defmodule Calci do
  def add(a,b) do
    a+b
  end
  def sub(a,b) do
    a-b
  end
  def mul(a,b) do
    a*b
  end
  def div(a,b) do
    if b==0 do
      "zero division error"
    else
      a/b
    end
  end
  def mod(a,b) do
    if b==0 do
      "zero mod error"
    else
      rem(a,b)
    end
  end
end
IO.puts("enter the operation you want to perform")
opp = IO.gets("") |> String.trim()
res =cond do
  opp=="+"->
  IO.puts("enter input 1")
  x= IO.gets("") |> String.trim() |>String.to_integer()
  IO.puts("enter input 2")
  y= IO.gets("") |> String.trim() |>String.to_integer()
  Calci.add(x,y)
  opp=="-"->
  IO.puts("enter input 1")
  x= IO.gets("") |> String.trim() |>String.to_integer()
  IO.puts("enter input 2")
  y= IO.gets("") |> String.trim() |>String.to_integer()
  Calci.sub(x,y)

  opp=="*"->
  IO.puts("enter input 1")
  x= IO.gets("") |> String.trim() |>String.to_integer()
  IO.puts("enter input 2")
  y= IO.gets("") |> String.trim() |>String.to_integer()
  Calci.mul(x,y)
  opp=="/"->
  IO.puts("enter input 1")
  x= IO.gets("") |> String.trim() |>String.to_integer()
  IO.puts("enter input 2")
  y= IO.gets("") |> String.trim() |>String.to_integer()
  Calci.div(x,y)
  opp=="%"->
  IO.puts("enter input 1")
  x= IO.gets("") |> String.trim() |>String.to_integer()
  IO.puts("enter input 2")
  y= IO.gets("") |> String.trim() |>String.to_integer()
  Calci.mod(x,y)

end
IO.puts("the result is")
IO.puts(res)
