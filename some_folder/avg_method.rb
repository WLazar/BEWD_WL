#avg_method.rb

grades = [80, 85, 90, 92, 93, 95, 100]

def get_average(grades)
	total = 0
	grades.each do |x|
		total += x
	end
	avg = total / grades.length
end

get_average(grades)