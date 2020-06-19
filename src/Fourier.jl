module Fourier
export FT_continuous, IFT_continuous

"""
    hello(who::String)

Return "Hello, `who`".
"""
FT_continuous(who::String) = "Hello, $who"

"""
    domath(x::Number)

Return `x + 5`.
"""
IFT_continuous(x::Number) = x + 5
end
