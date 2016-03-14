class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
    render json: @classrooms
  end

  def show
    @classroom = Classroom.find_by_id(params[:id])
    render json: @classroom
  end
end
