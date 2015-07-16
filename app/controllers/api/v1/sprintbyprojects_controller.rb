
class Api::V1::SprintbyprojectsController < ApplicationController

	def index
		puts "HOLA"
		#@projectsByBp=Project.find(:all, :conditions => ["business_partner_id=?",params[:bpid]])
		@sprintsByProject=Sprint.where("project_id = ?", params[:projectId])
		respond_to do |format|
			format.html
			format.json  { render :json => @sprintsByProject} 
		end
	end

end