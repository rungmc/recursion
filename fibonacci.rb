def fib(count)
  numbers = [1, 1, 2]

  return puts numbers if count <= 3

  count = count-3
  while count > 0
    numbers.push(numbers[-1] + numbers[-2])
    count -= 1
  end

  puts numbers
end

def fib_rec(count, numbers = [1, 1, 2])
  return puts numbers if count <= 3

  numbers.push(numbers[-1] + numbers[-2])
  fib_rec(count-1, numbers)
end

fib(15)
fib_rec(15)
