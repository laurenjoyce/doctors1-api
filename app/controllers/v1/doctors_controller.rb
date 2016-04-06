class V1::DoctorsController < ApplicationController
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

  def update
    @doctor = Doctor.find_by(id: params[:id])
    @doctor.update(
      first_name: params[:first_name] || @doctor.first_name,
      last_name: params[:last_name] || @doctor.last_name,
      practice: params[:practice] || @doctor.practice,
      university: params[:university] || @doctor.university
    )
    render "show.json.jbuilder"
  end
  
  def destroy
    @doctor = Doctor.find_by(id: params[:id])
    @doctor.destroy
    render json: {message: "Doctor successfully destroyed!"}
  end
end
