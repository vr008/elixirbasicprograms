1..10|> Stream.map(&(&1 +2)) |> Stream.filter(&(rem(&1,2))==0) |> Enum.sum() |> IO.puts()
s = Stream.cycle([1, 2, 3,4])

a=Enum.take(s, 10)
IO.inspect(a)

stream = Stream.unfold("yelloe", &String.next_codepoint/1)
IO.inspect(stream)
IO.inspect(Enum.take(stream, 2))
file = File.stream!("sample.txt")
IO.inspect(Enum.take(file, 5))
stream1 = Stream.map(1..4, &(&1 * 7))
stream2 = Stream.map(1..6, &(&1 * 8))
IO.inspect((Stream.zip(stream1, stream2) |> Enum.to_list()))
