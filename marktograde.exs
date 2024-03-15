IO.puts("Enter the mark:")
mark = IO.gets("") |> String.trim() |> String.to_integer()
if mark>100 ||mark<0 do
  IO.puts"invalid mark"
else
  y=case mark do
    mark when mark in 91..100 ->"A"
    mark when mark in  81..90 -> "B"
    mark when mark in  71..80 -> "C"
    mark when mark in  61..70 -> "D"
    mark when mark in  51..60 -> "E"
    _  -> "Fail"
  end
  IO.puts(y)

end
