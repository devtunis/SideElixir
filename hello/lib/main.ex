defmodule Main do
  def go do
   Sayhi.greet("ahmed",admin: true)
   Sayhi.from([{:where,true}])


  end


end


# iex.bat -S mix
#Main.run
