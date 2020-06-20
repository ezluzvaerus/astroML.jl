module Ogdon.io.api

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = Ogdon.io.api))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = Ogdon.io.api.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
