defmodule MyList do
  def doubled(list) do
    import Enum, only: [map: 2]
    map(list, &(&1 * 2))
  end
  def tripled(list) do
    import Enum, only: [map: 2]
    map(list, &(&1 * 3))
  end
  def sum(list,list1) do
    import Enum, only: [map: 2]
    map(doubled(list)++tripled(list1) ,&(&1))
  end
end

IO.inspect MyList.sum([1, 2, 3],[4,5,6])
