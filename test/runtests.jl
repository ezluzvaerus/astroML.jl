using Test
include("../src/Fourier.jl")
include("../src/SumOfNorms.jl")
include("../src/astroML.jl")
using .Fourier
using .SumOfNorms
using .astroML

@test hello("Julia") == "Hello, Julia"
@test sinegauss(3,1,2,2) ≈ 9.045238274381776e-6
@test sinegauss_PSD(3,1,2,2) ≈ 1.8709943196961264e118
@test norm(1,2,3) ≈ 0.13710326745732856
@test sinegauss_FT(3,1,2,2) ≈ 1.266905008632257e7
