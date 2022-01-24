#02_calculator.rb - Coded with love by JBV for THP Développeur Winter 2022

# add - add a and b
def add(a,b)
  a+b
end

# substract - substract b from a
def substract(a,b)
  a-b
end

# sum - sum all items of an array
def sum (tab)
  tab.sum
  #tab.inject(0,:+)
end

# multiply - multiply all items of an array
def multiply (a,b)
  a*b
end

# power - raises number x to the power of n
def power (x,n)
  x**n
end

# factorial - computes n!
def factorial(n)
  (1..n).inject(:*) || 1
end

#02_calculator.rb - Coded with love by JBV for THP Développeur Winter 2022