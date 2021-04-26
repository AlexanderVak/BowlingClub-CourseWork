class SessionsController < ApplicationController
  def new
  end

  def create
    staff = Staff.find_by_email(params[:email])
    if staff && staff.authenticate(params[:password])
      session[:staff_id] = staff.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:staff_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
