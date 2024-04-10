defmodule ProductChecker do
  def check_product(products, name) do
    Enum.any?(products, & &1.pname == name)
    |> IO.puts()
  end

  def check_product_quantity(products, tquan) do
    Enum.all?(products, & &1.quantity > tquan)
    |> IO.puts()
  end

  def filterproduct(products, alp) do
    Enum.filter(products, &(&1.pname =~ alp))
  end

  def rejectproduct(products, alp) do
    Enum.reject(products, &(&1.pname =~ alp))
  end

  def mapproducts(products) do
    Enum.map(products, & &1.pname)
  end

  def sum(products) do
    Enum.reduce(products, 0, fn item, acc ->
      item.quantity + acc
    end)
  end

  def while_sum(products) do
    Enum.reduce_while(products, 0, fn item, acc ->
      if item.pname == "scale" do
        {:halt, acc}
      else
        {:cont, item.quantity + acc}
      end
    end)
  end

  def prodcounts(products, alp) do
    Enum.count(products, &(&1.pname =~ alp))
  end
  def sort(products) do
    products |> Enum.map(& &1.pname) |> Enum.sort()
  end
  def minimum(products) do
    products |> Enum.map(& &1.quantity) |> Enum.min()
  end
  def maximum(products) do
    products |> Enum.map(& &1.quantity) |> Enum.max()
  end
  def getelement(products,ind) do
    Enum.at(products,ind)
  end
end

product = [
  %{pname: "pencil", quantity: 10},
  %{pname: "rubber", quantity: 12},
  %{pname: "scale", quantity: 1}
]

threshold_quantity = 5
name = "scale"
alp = "p"
al = "r"
ProductChecker.check_product(product, name)
ProductChecker.check_product_quantity(product, threshold_quantity)
IO.inspect(ProductChecker.filterproduct(product, alp))
IO.inspect(ProductChecker.rejectproduct(product, al))
ProductChecker.mapproducts(product) |> IO.puts()
ProductChecker.sum(product) |> IO.puts()
ProductChecker.while_sum(product) |> IO.puts()
ProductChecker.prodcounts(product, alp) |> IO.puts()
ProductChecker.sort(product) |> IO.puts()
ProductChecker.minimum(product) |> IO.puts()
ProductChecker.maximum(product) |> IO.puts()
left=[1,2,3]
right=[4,5]
IO.inspect((Enum.concat(left, right)))
l=[1,2,3,4,5,6,1,2,3]
IO.inspect((Enum.uniq(l)))
IO.inspect((Enum.dedup([1, 2, 2, 3, 3, 3, 1, 2, 3])))
IO.inspect(ProductChecker.getelement(product,0))
IO.inspect(Enum.find(product, &(&1.pname =~ "e")))
IO.inspect(Enum.join(["a", "b", "c"], "__"))
IO.inspect(Enum.slice(product,0..1))
IO.inspect(Enum.reverse(product))
IO.inspect(Enum.random(product))
IO.inspect(Enum.split(product, 2))
IO.inspect(Enum.drop(product,1))
