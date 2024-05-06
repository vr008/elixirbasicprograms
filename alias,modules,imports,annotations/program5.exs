defmodule MyMacro do
  defmacro __using__(_) do
    quote do
      def welcome(name) do
        IO.puts("Welcome "<> name)
      end
    end
  end
end

defmodule MyModule do
  use MyMacro

  def greet(s) do
    welcome(s)
  end
end
s=IO.gets("Enter the name you want to send") |> String.trim()
MyModule.greet(s)
