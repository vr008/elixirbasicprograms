defmodule Student do
  defstruct name: nil, age: nil, height: nil, weight: nil
end
defmodule Main do

  def input do
      john=%Student{ name: "john",age: 18,height: 20,weight: 40};
      IO.puts("Name : #{john.name}");
     IO.puts("Age : #{john.age}");
     IO.puts("height : #{john.height}");
     IO.puts("Weight : #{john.weight}");
      jane=%{john | name: "jane" ,age: 25, height: 30,weight: 50};
      IO.puts("Name : #{jane.name}");
      IO.puts("Age : #{jane.age}");
      IO.puts("height : #{jane.height}");
      IO.puts("Weight : #{jane.weight}");
  end
end
Main.input()
