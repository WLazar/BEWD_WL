class Story < ActiveRecord::Base
	validates :title, :link, :category, presence: true


end
