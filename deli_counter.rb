# Write your code here.
require 'pry'
katz_deli = []

def line(deli)
    if deli.empty?
       puts "The line is currently empty."
    else 
        resp = "The line is currently:"
        deli.each.with_index(1) do |cust, i|
             resp << " #{i}. #{cust}"
        end
        puts resp
    end
end

def take_a_number(deli, name)
    deli.push(name)
    puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
    if deli.empty?
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{deli[0]}."
        deli.shift()
    end
end