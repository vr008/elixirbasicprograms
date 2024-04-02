defmodule Math do

  def fib(n,a\\0,b\\1) do

    if n<=1 do
      b
    else
      fib(n-1,b,a+b)
    end
  end

  end
  n= String.to_integer(IO.gets("Enter the number") |> String.trim())

  IO.puts(Math.fib(n))
