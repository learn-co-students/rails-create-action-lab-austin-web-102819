class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @newbie = Student.new 
    @newbie.first_name = params[:first_name]
    @newbie.last_name = params[:last_name]
    @newbie.save
    redirect_to student_path(@newbie)
  end

end
