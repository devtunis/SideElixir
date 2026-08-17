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

def fix_slug(text) do
   # dont put any parmas
   # inside the funcs
   # cauz by default it
   #pass the result to next func
   #when finish
   text |> String.trim()
    |> String.downcase()
    |> String.replace(" ","-")

end


end
