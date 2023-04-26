class StudentsController < ApplicationController

    def add_index 
        @students = Student.all
    end
end
