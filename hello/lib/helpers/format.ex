defmodule Helpers.Format do

@moduledoc """

    Documention For `helpers.Format` .
    """
    @doc"""
    Trim text.
    What ever I write here
    exmple usage
    tim("   fooo   ")
    result -> "foo"
    ##Exmples
    iex>create_course(%{filed: value})
    """



def trim(text) do
  String.trim(text)

end

@spec fix_slug(String) ::String
def fix_slug(text) do
   # dont put any parmas
   # inside the funcs
   # cauz by default it
   #pass the result to next func
   #when finish
    text |> String.trim()
    #IO.inspect() for debug
    |> String.downcase()
    |> String.replace(" ","-")
    # |>dbg()

end

#Pattern matching

def patter_matching do
  user = {"ghaith",21}
  {name,age}   = user
  IO.puts("Hello mr #{name} my age #{age}")
  listUser = ["ghath","fff"]
  [x,y]  = listUser
  IO.puts("#{x} => #{y}")
  foo  = [side: 100]
  [side: x ] = foo
  IO.puts(x)
  pattern = [{:elixir ,100}]
  [{:elixir , y11}] = pattern
  #[elixir: y] = pattern
  #y
  IO.inspect(y11)
  user11 = %{:name=>"ghaith" , :age => 29}
  %{name: x,age: y} = user11

  userOther = %{n: "ghaith",a: 29}
  %{n: n,a: a} =  userOther



end

end
