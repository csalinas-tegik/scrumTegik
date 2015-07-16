class Api::V1::WorksController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    puts "CARLOS APARAM -- ", params[:date]
    #work = Work.new(:date => params[:date], :time => params[:time], :sprint_id => params[:sprint_id], :hacker_id => params[:hacker_id])
    work = Work.new(works_params)

      if work.save
        render :json => work, status: :ok
      else
        render json: work.errors, status: :unprocessable_entity 
      end

  end

  private
  def works_params
  	params.require(:work).permit(:hacker_id, :date, :sprint_id, :time)
  end


end
