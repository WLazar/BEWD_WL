#Person Class.
class Person
	attr_accessor :name, :credit_score, :gender

	def initialize(name, credit_score, gender)
		@name = name
		@credit_score = credit_score
		@gender = gender
	end

	def to_s
    	"Name: #{@name} \n Credit Score: #{@credit_score} \t Gender: #{@gender}"
  	end

end
