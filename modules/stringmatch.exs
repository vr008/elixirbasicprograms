sample = fn str -> String.slice(str, 0, 20) end


str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
IO.puts(sample.(str))
