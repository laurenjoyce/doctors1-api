class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    render 'index.json.jbuilder'
  end

  def show
    @doctor = Doctor.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @doctor = Doctor.new(first_name: params[:first_name],
                         last_name: params[:last_name],
                         practice: params[:practice],
                         university: params[:university])
    if @doctor.save
      render 'show.json.jbuilder'
    else
      render json: {message: "Could not create a doctor!"}
    end  
  end
end
