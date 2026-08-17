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
  Enum.reduce(arryOfMap,0,fn x,acc ->x.price+acc end)

end
end
