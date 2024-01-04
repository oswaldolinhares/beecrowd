# Problem 1002

using Printf

const pi = 3.14159
r = parse(Float64, readline())
a = pi * r^2

println("A=", @sprintf("%.4f", a))
