class FacultiesController < ApplicationController
  def index
    @faculties = Faculty.all
  end
  def new
    @faculty = Faculty.new
  end
  def create
    @faculty = Faculty.new(faculty_params)

    if @faculty.save
      redirect_to faculties_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def faculty_params
      params.require(:faculty).permit(:first_name, :last_name, :phone_number, :email_id, :dob, :designation)
    end
end