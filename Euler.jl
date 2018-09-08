#!/usr/bin/env julia

using BenchmarkTools

cmd, problem = ARGS

include("problems/p$(problem).jl")

if cmd == "run"
    answer = solve()
else cmd == "bench"
    answer = @btime solve()
end

println("Answer for Problem $(problem): $(answer)")
