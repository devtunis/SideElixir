defmodule Users do
  import   Helpers.Format,only: [trim: 1]

  @baseurl "http://localhost:3000/user/v1"


  #new/2
  def new("Daniel",age)  do

    %{name: "Daniel"  ,age: age ,can_drink: true ,is_cool: true}
  end
  #new/2
  def new(name,age) when age>=18  do
    formatedd_name = trim(name)
    %{name: formatedd_name  ,age: age ,can_drink: true ,is_cool: true}
  end


    def new(name,age)    do
    formatedd_name = trim(name)
    %{name: formatedd_name  ,age: age ,can_drink: false ,is_cool: true}
  end

  #new/0
  def new  , do: genreate_default_user()

  defp genreate_default_user do
      %{name: "Default John doe",age: 30 ,can_drink: false ,is_cool: false}
  end
  def base() do
    @baseurl
  end



end

Users.new()
