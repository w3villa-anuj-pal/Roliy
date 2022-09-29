class EnrollCourseController < ApplicationController
  before_action :check_courses , only: [:create]

  def index 
    @enroll_course  = Usercourseassign.all
  end 

  def create
    @enroll_course = Course.find(params[:course_id])
    current_user.courses << @enroll_course
    redirect_to courses_path , :notice => "Now, You are Enroll these Course"
  end 

  private

  def check_courses
    if current_user.courses.include?(@course)
      redirect_to courses_path , :notice => "You are alreday enroll these course"
    end
  end
end 