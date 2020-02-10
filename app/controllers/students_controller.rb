class StudentsController < ApplicationController

  # GET /students
  def index
    @students = Student.includes(:house).order(:name)
  end

  # GET /students/:id
  def show
    @student = Student.includes(:house).find(params[:id])
  end
end
