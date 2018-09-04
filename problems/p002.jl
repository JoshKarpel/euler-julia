using BenchmarkTools

function solve()
    fib_nm1 = 1
    fib_n = 1
    even_fib_sum = 0

    while fib_n < 4_000_000
        fib_n, fib_nm1 = fib_n + fib_nm1, fib_n
        if fib_n % 2 == 0
            even_fib_sum += fib_n
        end
    end

    return even_fib_sum
end

r = @btime solve()
println(r)
