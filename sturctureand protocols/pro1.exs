defmodule Student do
  defstruct name: nil, age: nil, height: nil, weight: nil
end

defmodule Main do

  def input(n) do
    list=[]
    updated_list = Enum.reduce(1..n, list, fn _, acc ->

      name = IO.gets("Enter name: ") |> String.trim()
      age = IO.gets("Enter age: ") |> String.trim() |> String.to_integer()
      height = IO.gets("Enter height: ") |> String.trim() |> String.to_integer()
      weight= IO.gets("Enter weight: ") |> String.trim() |> String.to_integer()

      user = %Student{name: name, age: age,height: height,weight: weight};


      [user | acc]
    end)

    updated_list
  end
  def traverse(list) do
    Enum.each(list, fn student ->
     IO.puts("Name : #{student.name}");
     IO.puts("Age : #{student.age}");
     IO.puts("height : #{student.height}");
     IO.puts("Weight : #{student.weight}");
    end)
  end
    def max_height(list) do


      Enum.max_by(list, & &1.height)
  end
  def min_weight(list) do


    Enum.min_by(list, & &1.weight)
end
  def avg_weight(list) do
    (list |> Enum.map(& &1.age) |> Enum.sum())/(Enum.count(list))



end
end


n = IO.gets("Enter the number of Student ") |> String.trim() |> String.to_integer()
updated_list=Main.input(n);
Main.traverse(updated_list);
max_student=Main.max_height(updated_list)
IO.puts("Max height student Name:#{max_student.name} Height:#{max_student.height}");
min_student=Main.min_weight(updated_list)
IO.puts("Min height student Name:#{min_student.name} Weight:#{min_student.weight}");
avg_age=Main.avg_weight(updated_list)
IO.puts("Avg age is #{avg_age}")
