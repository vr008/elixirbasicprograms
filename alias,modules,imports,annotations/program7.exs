defmodule Example do
  @my_greeting "Welcome "


  @set_status true
  def get_greeting(mess) do
    @my_greeting <> mess <>"!"
  end

  def check_status do
    @set_status
  end
end
mess=IO.gets("enter the person name ") |>String.trim()
IO.puts Example.get_greeting(mess)
IO.inspect Example.check_status()
