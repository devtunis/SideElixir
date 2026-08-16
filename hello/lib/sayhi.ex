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
def introduce(option) do
  username  = option[:username]
  lastname =  option[:lastname]
  job       = option[:job]
  active  = option[:active]
  isadmin = option[:isadmin]

  IO.puts("welcome #{username} and lastname is
  #{lastname} and your job #{job} and you current
  #{active} and current is admin  #{isadmin}
  ")
end

def usekey(option) do

  IO.puts("welcome user #{option[:name]}")

 end

def usekeywordkey(options) do
  name = Keyword.get(options, :name)
  IO.puts(name)
end

end
