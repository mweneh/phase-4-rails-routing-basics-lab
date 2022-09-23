class StudentsController < ApplicationController
    def index
        students = Student.all
        render json:students
    end

    def grades
        grades = Student.all
        render json: grades.order(grade: :desc)
    end

    def highest_grade
        grade = Student.all
        render json: grade.order('grade DESC').first
        
    end
end
