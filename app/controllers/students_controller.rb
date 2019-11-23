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
    # Create a new student object
    @student= Student.new
    # Set the first_name attribute of @student equal to what was entered as #first_name in the form
    @student.first_name= params[:first_name]
    # See above
    @student.last_name= params[:last_name]
    # Save these attributes to the database
    @student.save

    #redirect the user to a page that displays their content (the #show path/action)
    redirect_to student_path(@student)
  end

end
