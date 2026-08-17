defmodule Users do
  def new(name,age) do
    %{name: name ,age: age}
  end

  def new  , do: genreate_default_user()


  defp genreate_default_user do
      %{name: "Default John doe",age: 30}
  end
end

Users.new()
