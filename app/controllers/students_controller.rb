class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def new
       @student = Student.new 
    end
    
    def create 
        @student = Student.new(
        first_name: params[:student][:first_name],
        last_name: params[:student][:last_name],
        email: params[:student][:email],
        contact: params[:student][:contact]
    )
    if @student.save
        redirect_to students_path
    else
        render :new
    end
    end
    def student_params 
        params.require(:student).permit(:first_name,:last_name,:email)
    end
    def show 
        @student = Student.find(params[:id])
    end
    def edit
        @student = Student.find(params[:id])
    end
    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path
    end
end
