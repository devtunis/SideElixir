defmodule Games do
   #   {:error  , "To Expensive! Can't buy"}    {:ok ,"Proceed with the Purchase"}
  def get do
    %{
      name: "Lost of Us",
      in_stock: true ,
      price: 4.99
      }
  end

   def purchase_game(game) do

     case  validate_purchase(game) do
           {:error,res} -> "Error: #{res}"
           {:ok,_} -> "Successful pruchase"
     end
 end



  defp validate_purchase(game)  do

    cond do
      !game.in_stock ->  {:error,"Game not availabe for purchase !"}
       game.price>50 ->   {:error  , "To Expensive! Can't buy"}
       true ->   {:ok , "Proceed with the Purchase!"}
    end

 end

 def get_all do
    [
      %{id: 1 , name: "Lost of Us",in_stock: true ,price: 4.99},
      %{id: 2 , name: "GTA V",in_stock: false ,price: 5.99},
      %{id: 3 , name: "FIFA 2023",in_stock: true ,price: 6.99},
    ]
 end
# def count([]), do: 0
# def count([head|tail]) do

#   1 + count(tail)
# end

#manul recursive
def count(game) do



     if game==[]  do
       0
     else
      [head|tail] = game
      game  = tail
      1+count(game)

     end

end
def count2([]), do: 0
def count2([head|tail]) ,do: 1 + count2(tail)
def price([]), do: 0
def price([head|tail]) ,do: head.price + count2(tail)
#recompile
#Games.price(Games.get_all())

#Enum
def handel_filter(game_list) ,do:
  Enum.filter(game_list,fn item ->

    item.price>=6  && item.in_stock
  end)
def handel_map(game_list,id,newname) ,do:
  Enum.map(game_list,fn item ->
    cond do
      item.id==id -> %{item | name: newname}
      true ->   item
    end

  end)
def hande_reduce(arryOfMap) do
  Enum.reduce(arryOfMap,0,fn item,acc ->item.price+acc end)
end
def premuimFilter(array) do
  array

  |>Enum.filter(fn item->  item.price>0.55 end)
  |>Enum.map(fn item -> cond do item.id==1 -> %{item | name: "ghait"}
    true->   item end end )
  |>Enum.reduce(0, fn item,acc -> item.price+acc end)
  |>dbg()

# |>Enum.find(fn item-> item.id ==3 end)

end
def filter ,do:  fn arr ->   Enum.filter(arr,fn item->item.price>2 end ) end
def sum ,do:   &(&1+&2)
def display(v) do
    Enum.each(v, fn {key,value} ->
      IO.puts("key #{key} value #{value}")
    end)
end

def desrtuctParams(%{name: name ,age: age}) do
  IO.puts("#{name}  => #{age}")
end

def filter_premium_items(v), do: Enum.filter(v, &(&1.id >= 1 && &1.price > 0.33))
def extract_prices(v), do: Enum.map(v, & &1.price)
def find_item_by_id(v), do: Enum.find(v, &(&1.id === 1))
def calculate_total_price(v), do: Enum.reduce(v, 0, &(&1.price + &2))
def shortMap(v) do
   Enum.map(v, &
    cond do
       &1.id==1 -> %{&1 |name: "ghaiht"}
       true->&1

    end
   )
end



end
