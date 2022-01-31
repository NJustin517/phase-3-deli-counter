# Write your code here.
require 'pry'

def line(customers)
  str = 'The line is currently'
  if customers.length == 0
    puts str + ' empty.'
  else
    str += ':'
    count = 1
    customers.each do |client|
      str += " #{count}. #{client}"
      count += 1
    end
    puts str
  end
end

def take_a_number(customers, newCustomer)
  puts "Welcome, #{newCustomer}. You are number #{customers.length + 1} in line."
  customers << newCustomer
end

def now_serving(customers)
  if customers.empty?
    puts 'There is nobody waiting to be served!'
  else
    current = customers.shift
    puts "Currently serving #{current}."
    customers
  end
end
