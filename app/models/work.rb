class Work < ActiveRecord::Base
	belongs_to :hacker
	belongs_to :sprint
end
