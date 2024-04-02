defmodule Shopping do
  def showlist(product) do
   IO.puts("list of items")
   IO.puts(" ")
    Enum.each(product, fn {product_key, product_value} ->
      IO.puts("productid: #{product_key}")
      IO.puts("product name: #{product_value[:pname]}")
      IO.puts("quantity: #{product_value[:quantity]}")
    end);
  end


  def additem(product, pid, pname, pquantity) do
    s=[{ pid, %{pname: pname, quantity: pquantity}}]
    products = product ++ s
    products
  end

  def updatequantity(product, pid, pquantity) do
    product = put_in product[pid].quantity, pquantity
    product
  end

  def deleteuser(product,pid) do
    product = Keyword.delete(product,pid)
    product
  end
end

product = [
  p1: %{pname: "pencil", quantity: 10},
  p2: %{pname: "rubber", quantity: 12},
  p3: %{pname: "scale", quantity: 1},
]



val = String.to_integer(IO.gets("What would you like to do?
  type
    1: to add product to list
    2: to view list
    3: to update quantity of a product
    4: to remove a product from list
    Enter: ") |> String.trim())

    case val do
      1 ->
        pid = String.to_atom(IO.gets("Enter productid: ") |> String.trim())

        if product[pid] do
          IO.puts("product already in exists")
        else

          name = IO.gets("Enter productname: ") |> String.trim()
          quanity = String.to_integer(IO.gets("Enter quantity: ") |> String.trim())
          up=Shopping.additem(product,pid,name,quanity)

          IO.puts("product add sucessfully")
          Shopping.showlist(up)
        end

      2 ->
        Shopping.showlist(product)

      3 ->


        pid = String.to_atom(IO.gets("Enter productid: ") |> String.trim())
        if product[pid] do

        quantity = String.to_integer(IO.gets("Enter the updated quantity") |> String.trim())
        updated=Shopping.updatequantity(product,pid,quantity)
        IO.puts("product updated sucessfully")
        IO.puts(" ")
        Shopping.showlist(updated)
        else
          IO.puts("product does not exist")
        end



      4 ->
        pid = String.to_atom(IO.gets("Enter productid: ") |> String.trim())
        deleted=Shopping.deleteuser(product,pid)
        Shopping.showlist(deleted)

      _ ->
        "Invalid operation"
    end
