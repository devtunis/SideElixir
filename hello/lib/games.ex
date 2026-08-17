defmodule Games do
   #   {:error  , "To Expensive! Can't buy"}    {:ok ,"Proceed with the Purchase"}
  def get do
    %{
      name: "Lost of Us",
      in_stock: true ,
      price: 4.99
      }
  end
  def validate_purchase(game)  do

    cond do
      !game.in_stock ->  {:error,"Game not availabe for purchase !"}
       game.price>50 ->   {:error  , "To Expensive! Can't buy"}
       true ->   {:ok , purchase_game(game) }
    end

 end

 def purchase_game(game) do
  text = "the name of the game you wanna get it is  #{game.name} with price #{game.price}"

 end
end
