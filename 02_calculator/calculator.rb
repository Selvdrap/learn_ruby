#write your code here
def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b 
end

def sum(nums)
  return nums.inject(0) {|sum, n| sum + n}
end

def multiply(*nums)
  return nums.inject(1) {|sum, n| sum * n}
end

def power(a, n)
  result = 1
  n.times do |i|
    result *= a
  end
  return result
end

def factorial(n)
  result = 1
  1.upto(n) {|i| result *= i}
  return result
end
