class StudentsController < ApplicationController
    before_action :set_student, only: %i[show edit update destroy]
    def index
        @students = Student.all
    end

    def new
       @student = Student.new
    end

    # def create
    #     @student = Student.new(student_params)
    # if @student.save
    #     redirect_to students_path
    # else
    #     render :new
    # end
    # end
    def update
        respond_to do |format|
          if @student.update(student_params)
            format.html { redirect_to friend_url(@student), notice: "student was successfully updated." }
            format.json { render :show, status: :ok, location: @student }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @student.errors, status: :unprocessable_entity }
          end
        end
      end

    def create
        # @student = Friend.new(friend_params)
        # @student = current_user.students.build(student_params)
        @student = Student.new(student_params)


        respond_to do |format|
          if @student.save
            format.html { redirect_to student_url(@student), notice: "student was successfully created." }
            format.json { render :show, status: :created, location: @student }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @student.errors, status: :unprocessable_entity }
          end
        end
      end

    private


    def show
        @student = Student.find(params[:id])
    end
    # def edit
    #     @student = Student.find(params[:id])
    # end
    def edit
    end
    # def destroy
    #     @student = Student.find(params[:id])
    #     @student.destroy
    #     redirect_to students_path
    # end
    def destroy
        @student.destroy

        respond_to do |format|
          format.html { redirect_to students_url, notice: "student was successfully destroyed." }
          format.json { head :no_content }
        end
      end
    def set_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name,:last_name,:email,:dob,:contact,:address)
    end
end
