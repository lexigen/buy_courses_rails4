class CoursesController < ApplicationController
  before_filter :find_partner

  def new
    @course = @partner.courses.build
  end

  def create
    @course = @partner.courses.build
    if @course.update(set_course)
      flash[:notice] = "The course has been successfully created."
      redirect_to @partner
    else
      flash[:alert] = "The course has not been created."
      render 'new'
    end
  end

  private
  def find_partner
    @partner = Partner.find(params[:partner_id])
  end

  def set_course
    params.require(:course).permit(:title, :description, :attendees, :price)
  end
end
