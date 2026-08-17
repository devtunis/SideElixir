defmodule Users do
  import   Helpers.Format,only: [trim: 1]

  @baseurl "http://localhost:3000/user/v1"


  #new/2
  def new("Daniel",age)   do

    %{name: "Daniel"  ,age: age ,can_drink: true ,is_cool: true}
  end
  #new/2
  def new(name,age) when age>=18 and is_number(age)   do
    formatedd_name = trim(name)
    %{name: formatedd_name  ,age: age ,can_drink: true ,is_cool: true}
  end


  def new(name,age) when  is_number(age)   do
    formatedd_name = trim(name)
    %{name: formatedd_name  ,age: age ,can_drink: false ,is_cool: true}
  end

  def new(_,_) do
    IO.puts("INVALID AGE")
  end

  #new/0
  def new  , do: genreate_default_user()

  defp genreate_default_user do
      %{name: "Default John doe",age: 30 ,can_drink: false ,is_cool: false}
  end
  def base() do
    @baseurl
  end

  def  devidebyzero(value) when value>0 and is_integer(value) do
    value/10
  end


end

Users.new()
