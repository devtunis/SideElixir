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


end
