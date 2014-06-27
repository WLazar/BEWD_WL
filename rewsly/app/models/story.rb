class Story < ActiveRecord::Base
	validates :title, :link, :upvotes, :category, presence: true


	# def self.search_for(query)
	# 	where('name LIKE :query OR description LIKE :query', query:"%#{query}%")
	# end

end
