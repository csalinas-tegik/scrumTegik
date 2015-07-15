class Hacker < ActiveRecord::Base
	has_many :sprints
	has_many :works
end
