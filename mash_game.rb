mash = ["mansion", "alley way", "shed", "house"]
puts "You are playing MASH!!!"

# -----------------------------------------------------------------
cars = []
puts "Name a car you like"
cars << gets.chomp
until cars.length==4
	puts "Name another car you like"
	cars << gets.chomp
end

# -----------------------------------------------------------------
children = []
puts "How many children might you want?"
children << gets.chomp
until children.length==4
	puts "How many children might you want?"
	children << gets.chomp
end

# -----------------------------------------------------------------
partner = []
puts "Give me the name of someone you might want to marry."
partner << gets.chomp
until partner.length==4
	puts "Give me another name of someone you might want to marry."
	partner << gets.chomp
end

# -----------------------------------------------------------------
mash_ary = [mash, cars, children, partner]




def mashy2(num, mash, cars, children, partner)

	mash_ary = [mash, cars, children, partner]

	if num <= mash_ary.flatten.length
		which_arr = (num-1)/4
		which_arr = testing(mash_ary, which_arr)
		rem = (num-1)%4		
	else
		which_arr = (((num-1)%mash_ary.flatten.length)/4)
		which_arr = testing(mash_ary, which_arr)
		rem = ((num-1)%4)%4
	end

	return mash_ary[which_arr].delete_at(rem)
end	


def testing(mash_ary, which_arr)
    if mash_ary[which_arr].length!=1
        which_arr
    elsif mash_ary[which_arr+1].length!=1
        which_arr +=1
    elsif mash_ary[which_arr+2].length!=1
        which_arr +=2
    elsif mash_ary[which_arr+3].length!=1
        which_arr +=3
    end
     which_arr
end

while mash_ary.flatten.length >4
	numbers = rand(0..50)
	mashy2(numbers, mash, cars, children, partner)
end

if children[0]=="1" 
puts "You will live in a " + mash.join + ", drive a " + cars.join + " car, have " + children.join + " child and marry " + partner.join + "!"
else
puts "You will live in a " + mash.join + ", drive a " + cars.join + " car, have " + children.join + " children and marry " + partner.join + "!"
end
=begin 
I used the below method for my spec when testing whether my code was deleting the correct index

def mashy(num)

	mash = ["Mansion", "Alley way", "Shed", "House"]
	cars = ["Honda", "Audi", "Golf", "Mercedes"]
	children = [1, 2, 3, 4] 
	partner = ["Kate", "William", "Harry", "Phillip"]

	mash_ary = [mash, cars, children, partner]

	if num <= mash_ary.flatten.length
		which_arr = (num-1)/4
		rem = (num-1)%4		
	else
		which_arr = (((num-1)%mash_ary.flatten.length)/4)#/4
		rem = ((num-1)%4)%4
	end
	return mash_ary[which_arr].delete_at(rem)
end	
=end