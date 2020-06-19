using Test
include("../src/Fourier.jl")
include("../src/SumOfNorms.jl")
using .Fourier
using .SumOfNorms

@test sinegauss(3,1,2,2) ≈ 9.045238274381776e-6
@test sinegauss_PSD(3,1,2,2) ≈ 1.8709943196961264e118
@test norm(1,2,3) ≈ 0.13710326745732856
