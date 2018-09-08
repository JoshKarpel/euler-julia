function solve()
#     return sum(x for x in 1:999 if (x % 3 == 0) || (x % 5 == 0))
    sum = 0
    for x in 1:999
        if (x % 3 == 0) || (x % 5 == 0)
            sum += x
        end
    end
    return sum
end
