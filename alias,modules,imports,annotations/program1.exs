{:ok, file} = File.open("sample.txt", [:write]);
IO.binwrite(file, IO.gets("enter some text:  "));

File.close(file)

{:ok,s}=File.read("/home/vignesh/Desktop/alias imports/sample.txt")
IO.puts(s)
IO.inspect(File.read("/home/vignesh/Desktop/alias imports/sample.txt"))
IO.puts(File.read!("/home/vignesh/Desktop/alias imports/sample.txt"))
IO.inspect(File.read("unknown.txt"))
file="sampl.txt"
case  File.read(file) do
  {:ok, body} -> IO.puts(body)
  {:error, enoent} -> IO.puts(enoent)
end
IO.puts(Path.join("alias imports","sample.txt"))
IO.puts(Path.expand("~/sample.txt"))
