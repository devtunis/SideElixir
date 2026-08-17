defmodule Users do
  import   Helpers.Format,only: [trim: 1]

  @baseurl "http://localhost:3000/user/v1"

  def new(name,age) do
    formatedd_name = trim(name)
    %{name: formatedd_name  ,age: age}
  end

  def new  , do: genreate_default_user()

  defp genreate_default_user do
      %{name: "Default John doe",age: 30}
  end
  def base() do
    @baseurl
  end


end

Users.new()
