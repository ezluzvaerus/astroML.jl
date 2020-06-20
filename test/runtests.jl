using Test
include("../src/SumOfNorms.jl")
include("../src/astroML.jl")
using .SumOfNorms
using .astroML

@test hello("Julia") == "Hello, Julia"
@test norm(1,2,3) ≈ 0.13710326745732856
