=begin
MASH = mansion, alley way, shed, house
Cars
Babies
People
5 arrays with 4 in each section.
=end
=begin
mash_ary = ["mansion", "alley way", "shed", "house"]
puts "You are playing MASH"

# -----------------------------------------------------------------

puts "Give a car you like"
c1 = gets.chomp.downcase
mash_ary << c1
puts "Give a 2nd car you like"
c2 = gets.chomp.downcase
mash_ary << c2
puts "Give a 3rd car you like"
c3 = gets.chomp.downcase
mash_ary << c3
puts "Give a 4th car you like"
c4 = gets.chomp.downcase
mash_ary << c4

# -----------------------------------------------------------------

puts "Give a number of children that you would like"
b1 = gets.chomp
mash_ary << b1
puts "Give another number of children that you would like"
b2 = gets.chomp
mash_ary << b2
puts "Give another number of children that you would like"
b3 = gets.chomp
mash_ary << b3
puts "Give another number of children that you would like"
b4 = gets.chomp
mash_ary << b4

# -----------------------------------------------------------------

puts "Give the name of someone you have a crush on or would like to marry"
p1 = gets.chomp
mash_ary << p1
puts "Give another name of someone you have a crush on or would like to marry"
p2 = gets.chomp
mash_ary << p2
puts "Give another name of someone you have a crush on or would like to marry"
p3 = gets.chomp
mash_ary << p3
puts "Give another name of someone you have a crush on or would like to marry"
p4 = gets.chomp
mash_ary << p4

# -----------------------------------------------------------------
=end
mash_ary=["mansion", "alley way", "shed", "house","Mercedes","BMW","2","0","5","1","Ford","Nissan","Harry","William","Kate","Phillip",]
puts "Please give a number between 1 and 10"
num = gets.chomp.to_i

# -----------------------------------------------------------------

while mash_ary.length < num
       num -= mash_ary.length
end
mash_ary.delete_at(num-1)
puts mash_ary
=begin
Use that number given to iterate through each array and delete the item in the array that it stops at.
.delete_at(number) - delete from an index in an array


puts mash_ary.inspect
mash_ary.delete_at(number-1)
puts mash_ary.inspect
=end
