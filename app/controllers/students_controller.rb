class StudentsController < ApplicationController

  def index
    # if params[:first_name]
    #   render json: Student.all.filter {|student| student.to_s.include?(params[:first_name])}
    # elsif params[:last_name]
    #   render json: Student.all.filter {|student| student.to_s.include?(params[:last_name])}
    # else
    students = Student.all
    render json: students
  end

  def show
    render json: Student.find(params[:id])
  end

end
