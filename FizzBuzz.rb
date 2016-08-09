range = 1..100
numbers = range.to_a

for num in numbers 

    result = ""

    if (num % 3 == 0)
        result += "Fizz"
    end    
    if (num % 5 == 0)
        result += "Buzz"
    end
    if (num.to_s[0].to_i == 1)
        result += "Bang"
    end
    if result == ""
      puts num
    else
      puts result
    end

end

