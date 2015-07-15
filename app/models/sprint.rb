class Sprint < ActiveRecord::Base
	belongs_to :hacker
	belongs_to :project
	has_many :works
end
