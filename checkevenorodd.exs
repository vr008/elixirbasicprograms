check_even=fn a->
  rem(a,2)==0
end
IO.puts("Enter a number:")
input_number = IO.gets("") |> String.trim() |> String.to_integer()
res=check_even.(input_number)
if res==true do
  IO.puts("The number is even")
else
  IO.puts("The number is odd")
end
