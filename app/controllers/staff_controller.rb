class StaffController < ApplicationController
  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to root_url, notice: 'You signed up!'
    else
      render :new
    end
  end

  private

  def staff_params
    params.require(:staff).permit(:name, :surname, :email, :password, :password_confirmation)
  end
end
