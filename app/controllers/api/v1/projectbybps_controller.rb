
class Api::V1::ProjectbybpsController < ApplicationController

	def index
		puts "HOLA"
		#@projectsByBp=Project.find(:all, :conditions => ["business_partner_id=?",params[:bpid]])
		@projectsByBp=Project.where("business_partner_id = ?", params[:bpid])
		respond_to do |format|
			format.html
			format.json  { render :json => @projectsByBp} 
		end
	end

end