IO.puts("enter the year")
year= IO.gets("") |> String.trim() |>String.to_integer()
res= cond do

  rem(year,4)==0 && rem(year,100)!=0||rem(year,400)==0 ->
  "leap year"
  rem(year,4)!=0||rem(year,4)==0 && rem(year,100)==0 ->
    "not a leap year"
end
IO.puts(res)
