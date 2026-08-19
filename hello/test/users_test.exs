defmodule UsersTest do

  use ExUnit.Case ,async: true

 setup_all   do

    [name: "Daniel",is_cool: true]


 end
 describe "User module" do
  test "new/0" ,context do
    IO.inspect(context)
    default_user = Users.new()
    refute default_user.can_drink
  end
  test "new/2 with daniel name" do
    user = Users.new("Daniel",20)
    assert user.is_cool
  end
 end

end
