  cd(@__DIR__)
  using Pkg
  pkg"activate ."

  function main()
    include(joinpath("src", "Ogdon.io.api.jl"))
  end; main()
