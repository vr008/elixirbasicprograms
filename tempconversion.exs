celtofer =fn c ->
  (c*9/5)+32
end
celtokel =fn c ->
   (c+273.15)
end
fartocen =fn f ->
  (f-32)*5/9
end
fartokel =fn f ->
  (f-32)*5/9+273.15
end
keltocel=fn k ->
  (k-273.15)
end
keltofer=fn k ->
  (k - 273.15) * 9/5 + 32
end
IO.puts("in which unit you want to enter the temperature-celcius(C),farenheit(F),kelvin(K)")
temp= IO.gets("") |> String.trim()
res=case temp do
  "C"->
    IO.puts("enter the temperature in celcius")
    c=IO.gets("") |> String.trim() |>String.to_integer()
    IO.puts("enter the unit You want to convert into farenheit(F),kelvin(K)")
    con=IO.gets("") |> String.trim()
    cond  do
       con=="F" ->
       celtofer.(c)
       con =="K"->
      celtokel.(c)
    end
    "F"->
      IO.puts("enter the temperature in farenheit")
      f=IO.gets("") |> String.trim() |>String.to_integer()
      IO.puts("enter the unit You want to convert into celcius(C),kelvin(K)")
      con=IO.gets("") |> String.trim()
      cond  do
         con=="C" ->
         fartocen.(f)
         con =="K"->
        fartokel.(f)
      end
      "K"->
        IO.puts("enter the temperature in kelvin")
        k=IO.gets("") |> String.trim() |>String.to_integer()
        IO.puts("enter the unit You want to convert into celcius(C),Farenheit(F),")
        con=IO.gets("") |> String.trim()
        cond  do
           con=="C" ->
           keltocel.(k)
           con =="F"->
          keltofer.(k)
        end
end
IO.puts("result is")
IO.puts(res)
