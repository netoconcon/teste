class MentorsController < ApplicationController
   def index
    @mentors = Mentor.all
  end

  def show
    @mentor = Mentor.find(params[:id])
  end

  def new
    @mentor = Mentor.new
  end

  def create
     @mentor = Mentor.new(mentor_params)
    if @mentor.save
      redirect_to mentor_path(@mentor)
    else
      raise
      render 'new'
    end
  end

  private

  def mentor_params
    params.require(:mentor).permit(:name)
  end
end
