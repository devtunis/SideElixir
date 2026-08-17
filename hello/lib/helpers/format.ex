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

end
