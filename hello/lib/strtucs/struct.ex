defmodule Player do
  #mendatory  =required
  #for ensure fileds name created ❤✔✔
  @enforce_keys [:name]
  defstruct  [:name, :age,:is_cool,:can_drink]


  def check(%Player{} = _player),do: true
  def check(_player) ,do: false



  def createPlayer(name,age,is_cool,can_drink),do: %Player{name: name ,age: age,is_cool: is_cool,can_drink: can_drink}

  #_Createuser


end
