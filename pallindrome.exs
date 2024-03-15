checkp = fn s ->
  rev=String.reverse(s)
  (rev==s)
end
IO.puts("Enter a Input:")
s = IO.gets("") |> String.trim()
res=checkp.(s)
if res==true do
  IO.puts("It is pallindrome")
else
  IO.puts("It is not a pallindrome")
end
