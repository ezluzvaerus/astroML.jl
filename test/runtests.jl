using Test
include("../src/Fourier.jl")
include("../src/SumOfNorms.jl")
include("../src/astroML.jl")
using .Fourier
using .SumOfNorms
using .astroML

@test hello("Julia") == "Hello, Julia"
@test norm(1,2,3) ≈ 0.13710326745732856
