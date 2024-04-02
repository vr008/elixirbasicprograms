defmodule Math do

  def fib(n) do

    if n==1 do
      n
    else
      n*fib(n-1)
    end
  end

  end
  n= String.to_integer(IO.gets("Enter the number") |> String.trim())

  IO.puts(Math.fib(n))
