class StudentsController < ApplicationController
    def index 
        @students = Student.all
    end 
    def new
        @student = Student.new
    end 
    def create
        @student = Student.new(student_parmas)
        if @student.save
            redirect_to students_path 
        else 
            render :new
        end 
    end 
    def show
        @student = Student.find(params[:id])
    end 



    private 

    def student_parmas
        params.require(:student).permit(:first_name, :last_name, :email)
    end 
end 