#write your code here 
def add (a, b)
  a + b 
end

def subtract (a, b)
  a - b
end 

def sum (a)
  a.reduce(0, :+ )
end 

def multiplies (numbers)
  numbers.reduce(1, :* )
end

def power (a, b)
  a**b 
end

def factorial(n)
  return 1 if n == 0
  
  n * factorial(n - 1)
end

def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1
  
  fibonacci(n - 1) + fibonacci(n - 2)
end