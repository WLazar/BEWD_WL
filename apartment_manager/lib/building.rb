#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments
	
	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		puts "-------------------------#{@name} Apartment List-------------------------"
		@apartments.each do |apartment|
		puts apartment
      	puts (apartment.is_occupied? ? apartment.renter : "This apartment is vacant")
    	end
    end
 
	

	def view_renters
		puts "-------------------------#{@name} Apartment List-------------------------"
		@apartments.each do |apartment|
			if apartment.is_occupied?
				puts "NameL: #{apartment.renter} \t Unit: #{apartment.name}"
			else
				puts "Unit #{apartment.name} is empty"
			end
		end
	end	

	def to_s
    "Building #{name} at #{address} has #{@apartments.count}"
  	end

end
