x=case {11, 22, 33,8} do

  {4, 5, 6,7} ->

    "This clause won't match"
  {11,22,33,y} ->
    "This clause will match and bind y to 8 in this clause"
  {11, x, 33,8} ->

    "This clause will match and bind x to 22 in this clause"

  _ ->

    "This clause would match any value"

end

IO.puts(x)
