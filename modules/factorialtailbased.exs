defmodule Math do

  def fib(n,r\\1) do

    if n==1 do
      r
    else
      fib(n-1,r*n)
    end
  end

  end
  n= String.to_integer(IO.gets("Enter the number") |> String.trim())

  IO.puts(Math.fib(n))
