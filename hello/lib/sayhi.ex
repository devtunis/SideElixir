defmodule Sayhi do
  def greet(name,option) do
    if(option[:admin]) do

      IO.puts("wlecome #{name} user admin")

     else
    IO.puts("this not a software devs")

  end
end

def from(option) do
  IO.inspect(option[:where])
end
end
