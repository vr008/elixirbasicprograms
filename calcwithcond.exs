IO.puts("enter the operation you want to perform")
opp = IO.gets("") |> String.trim()
add=&+/2

sub=&-/2
mul=&(&1*&2)
div =fn a,b ->
  if b==0 do
    "zero error"
  else
    a/b
  end
end
mod =fn a,b ->
 if b==0 do
   "zero error"
 else
    rem(a,b)
 end
end
res =cond do
  opp=="+"->
  IO.puts("enter input 1")
  x= IO.gets("") |> String.trim() |>String.to_integer()
  IO.puts("enter input 2")
  y= IO.gets("") |> String.trim() |>String.to_integer()
  add.(x,y)
  opp=="-"->
  IO.puts("enter input 1")
  x= IO.gets("") |> String.trim() |>String.to_integer()
  IO.puts("enter input 2")
  y= IO.gets("") |> String.trim() |>String.to_integer()
  sub.(x,y)
  opp=="*"->
  IO.puts("enter input 1")
  x= IO.gets("") |> String.trim() |>String.to_integer()
  IO.puts("enter input 2")
  y= IO.gets("") |> String.trim() |>String.to_integer()
  mul.(x,y)
  opp=="/"->
  IO.puts("enter input 1")
  x= IO.gets("") |> String.trim() |>String.to_integer()
  IO.puts("enter input 2")
  y= IO.gets("") |> String.trim() |>String.to_integer()
  div.(x,y)
  opp=="%"->
  IO.puts("enter input 1")
  x= IO.gets("") |> String.trim() |>String.to_integer()
  IO.puts("enter input 2")
  y= IO.gets("") |> String.trim() |>String.to_integer()
  mod.(x,y)
end
IO.puts("the result is")
IO.puts(res)
