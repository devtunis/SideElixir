defmodule Sayhi do


#   def greet(name,option) do
#     if(option[:admin]) do

#       IO.puts("wlecome #{name} user admin")

#      else
#     IO.puts("this not a software devs")

#   end
#   end

# def from(option) do
#   IO.inspect(option[:where])
#   end
# def introduce(option) do
#   username  = option[:username]
#   lastname =  option[:lastname]
#   job       = option[:job]
#   active  = option[:active]
#   isadmin = option[:isadmin]

#   IO.puts("welcome #{username} and lastname is
#   #{lastname} and your job #{job} and you current
#   #{active} and current is admin  #{isadmin}
#   ")
# end

# def usekey(option) do

#   IO.puts("welcome user #{option[:name]}")

#  end

# def usekeywordkey(options) do
#   name = Keyword.get(options, :name)
#   IO.puts("welcome from use keyword #{name}")
# end

# def dustructvalue(options) do
#   isNil = Keyword.get(options,:error)
#   if isNil do
#     IO.puts("has error")

#     throw("their error")
#   end
#   IO.puts("continue event loop")
# end


# def validateuser( ) do


#   user = [
#   name: "Ahmed",
#   age: 12
# ]

# schema = [
#   name: [is: :binary, required: true],
#   age: [is: :integer, required: true]
# ]

# res = KeywordValidator.validate(user, schema)
# IO.puts(res)

# if(Keyword.get(res,:error)) do
#   throw("error nike" )
# end




# end

def middlewaremap() do
  map =%{name: "ghaith",age: 21}
  # IO.puts(map[:name])
  # IO.puts(map.name)
  # IO.puts(Map.get(map,:name))
  # IO.inspect(Map.fetch(map,:name))
  #if you want to change map do
  map = Map.put(map,:profession,"software eng")
  IO.inspect(map)
end

end


#iex.bat -S mix run -e "Main.go()"
