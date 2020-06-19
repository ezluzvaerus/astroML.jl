module Fourier
export sinegauss, sinegauss_PSD

"""
    sinegauss(t::Number, t0::Number, f0::Number, Q::Number)

Return e ^ (-a * (t - t0) ** 2) * e ^(2j * pi * f0 * (t - t0))
"""

function sinegauss(t::Number,t0::Number,f0::Number,Q::Number)
    a = (f0 * 1 / Q) ^ 2
    # add j array
    return (Base.MathConstants.eulergamma ^ (-a * (t - t0) ^ 2) * Base.MathConstants.eulergamma ^ (2 * pi * f0 * (t - t0)))
end

"""Compute the PSD of the sine-gaussian function at frequency f
.. math::
   PSD(f) = |H(f)|^2 + |H(-f)|^2
"""
function sinegauss_PSD(f::Number,t0::Number,f0::Number,Q::Number)
    a = (f0 * 1. / Q) ^ 2
    Pf = pi / a * Base.MathConstants.eulergamma ^ (-2 * pi ^ 2 * (f - f0) ^ 2 / a)
    Pmf = pi / a * Base.MathConstants.eulergamma ^ (-2 * pi ^ 2 * (-f - f0) ^ 2 / a)
    return Pf + Pmf
end
end
