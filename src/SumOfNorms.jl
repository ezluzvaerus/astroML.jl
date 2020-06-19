module SumOfNorms
export norm

"""
    norm(x::Number, x0::Number, sigma::Number)

Return (1. / sqrt(2 * pi) / sigma * Base.MathConstants.eulergamma ^ (-0.5 * (x - x0) ^ 2 / sigma ^ 2))
"""
norm(x::Number, x0::Number, sigma::Number) = (1. / sqrt(2 * pi) / sigma * Base.MathConstants.eulergamma ^ (-0.5 * (x - x0) ^ 2 / sigma ^ 2))
end
