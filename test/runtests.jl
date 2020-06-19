using Test
include("../src/Fourier.jl")
using .Fourier

@test FT_continuous("Julia") == "Hello, Julia"
@test IFT_continuous(2.0) ≈ 7.0
