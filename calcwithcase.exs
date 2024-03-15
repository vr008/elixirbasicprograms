IO.puts("enter the operation you want to perform")
opp = IO.gets("") |> String.trim()
res = case opp do
    "+" ->
    IO.puts("enter input 1")
    a= IO.gets("") |> String.trim() |>String.to_integer()
    IO.puts("enter input 2")
    b= IO.gets("") |> String.trim() |>String.to_integer()
    a+b
    "-" ->
    IO.puts("enter input 1")
    a= IO.gets("") |> String.trim() |>String.to_integer()
    IO.puts("enter input 2")
    b= IO.gets("") |> String.trim() |>String.to_integer()
    a-b
    "*" ->
        IO.puts("enter input 1")
        a= IO.gets("") |> String.trim() |>String.to_integer()
        IO.puts("enter input 2")
        b= IO.gets("") |> String.trim() |>String.to_integer()
        a*b
    "/" ->
            IO.puts("enter input 1")
            a= IO.gets("") |> String.trim() |>String.to_integer()
            IO.puts("enter input 2")
            b= IO.gets("") |> String.trim() |>String.to_integer()
            if b==0 do
              "zero division error"
            else
                a/b
            end
    "%" ->
                IO.puts("enter input 1")
                a= IO.gets("") |> String.trim() |>String.to_integer()
                IO.puts("enter input 2")
                b= IO.gets("") |> String.trim() |>String.to_integer()
                if b==0 do
                  "zero division error"
                else
                    rem(a,b)
                end
    _ ->
        "invalid operation"
    end
IO.puts("result error")
IO.puts(res)
