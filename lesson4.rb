numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
puts new_numbers


numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map { |n| n * 10 }
p new_numbers

numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? }
puts even_numbers

numbers = [1, 2, 3, 4, 5, 6]
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
puts non_multiples_of_three

numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find do |n|
                n.even?
              end
puts even_number

numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find { |n| n.even? }
puts even_number

numbers = [1, 2, 3, 4]
puts numbers.sum

numbers = [1, 2, 3, 4]
puts numbers.sum { |n| n * 2 }

numbers = [1, 2, 3, 4]
puts numbers.sum(5)

chars = ['a', 'b', 'c']
puts chars.sum(' ')
puts chars.join
puts chars.join('-')

data = ['a', 2, 'b', 4]
puts data.join

chars = ['a', 'b', 'c']
puts chars.sum('>') {|c| c.upcase }