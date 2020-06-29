class Teachers::SubjectsController < ApplicationController
  before_action :check_if_teacher

  def new


  end

  def create

  end

  def show

  end


  private

  def check_if_teacher
    unless current_user.teacher?
      redirect_to 'pages/home'
    end
  end

end
