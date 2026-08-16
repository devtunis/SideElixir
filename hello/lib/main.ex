defmodule Main do
  def go do
   Sayhi.greet("ahmed",admin: true)
   Sayhi.from([{:where,true}])
   Sayhi.introduce(
    username: "ghaith",
    lastname: "nahdi",
    job: "software enginenr",
    active: true ,
    isadmin: false
   )

  Sayhi.usekey([{:name,"ghaith"}])
  Sayhi.usekeywordkey([name: "ghaith nahdi"])
  Sayhi.dustructvalue([ok: true , error: false ])


  end


end


# iex.bat -S mix
#Main.run
