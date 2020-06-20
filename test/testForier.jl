using Test
include("../src/Fourier.jl")
using .Fourier

@test sinegauss(3,1,2,2) ≈ 9.045238274381776e-6
@test sinegauss_PSD(3,1,2,2) ≈ 1.8709943196961264e118
@test ssinegauss_FT(3,1,2,2) ≈ 1.266905008632257e7
