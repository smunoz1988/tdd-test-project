class Solver
    def solve(number)
        1
    end

    def factorial(number) # takes one argument, an integer N, and returns the factorial for that number. The factorial is the multiplication of all integers from 1 to N and has the special case that the factorial of 0 is 1. This method only accepts 0 and positive integers, so if a negative integer is given it should raise an exception
        if number < 0
            raise "Number must be positive"
        end
        if number == 0
            return 1
        else
            return number * factorial(number - 1)
        end
    end

    def reverse(word)
        word.reverse
    end

    def fizzbuzz(number)
        if number % 3 == 0 && number % 5 == 0
            return "fizzbuzz"
        elsif number % 3 == 0
            return "fizz"
        elsif number % 5 == 0
            return "buzz"
        elsif
            number
        end
    end
end
