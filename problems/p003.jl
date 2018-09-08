function solve()
    x = 600851475143
    factors = []

    while x % 2 == 0
        x = x / 2
        push!(factors, 2)
    end

    test = 3
    while x != 1
        if x % test == 0
            x = x / test
            push!(factors, test)
        else
            test += 2
        end
    end

    return factors[end]
end

