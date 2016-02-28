require './mash_game'

describe 'mash' do 
	#mash = ["Mansion", "Alley way", "Shed", "House"]
	#cars = ["Honda", "Audi", "Golf", "Mercedes"]
	#children = [1, 2, 3, 4] 
	#Partner = ["Kate", "William", "Harry", "Phillip"]
#mash_ary = [["Mansion", "Alley way", "Shed", "House"], ["Honda", "Audi", "Golf", "Mercedes"], [1, 2, 3, 4], ["Kate", "William", "Harry", "Phillip"]]
	#mash_ary = [mash, cars, children, partner]

	it 'delete correctly when 16 or below' do
		expect(mashy(5)).to eq 'Honda'
		expect(mashy(16)).to eq 'Phillip'
	end

	it 'delete correctly when greater than 16' do
		expect(mashy(17)).to eq 'Mansion'
		expect(mashy(21)).to eq 'Honda'
		expect(mashy(40)).to eq 'Mercedes'
	end


end