defmodule Hello do
  def useplay do
    IO.puts(String.upcase("hello"))
    IO.puts(String.downcase("HELLO"))
    IO.puts(String.length("hello"))
    name = "ghaith"
    upperCase = String.upcase(name)
    IO.puts(upperCase)
  end

  def usearr do

    list = [1,2,3]
    IO.inspect(list)
  end
end
