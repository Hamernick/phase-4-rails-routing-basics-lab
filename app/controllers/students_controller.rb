class StudentsController < ApplicationController

  def index
    render json: Student.all
  end

  def grades
    student_grades = Student.all.order(grade: :desc)
    render json: student_grades
  end

end
