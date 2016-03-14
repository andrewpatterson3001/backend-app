class StudentsController < ApplicationController
  def index
    #list students within a class
    @students = Student.where(classroom_id: params[:classroom_id])
    render json: @students
  end

  def show
    #list the email and classroom of a student as well as how many points accumulated
    p params
    @student = Student.where(classroom_id: params[:classroom_id], id: params[:id])
    render json: @student
  end
end
