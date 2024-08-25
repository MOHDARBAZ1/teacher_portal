class TeachersController < ApplicationController
  def index
  end
  def create
    @teacher = Teacher.new(user_params)
    if @teacher.save
      redirect_to root_path, notice: "Signed in successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @teacher = Teacher  .new
  end

  private

  def user_params
    params.require(:teacher).permit(:email, :password, :password_confirmation)
  end
end
