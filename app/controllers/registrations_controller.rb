class RegistrationsController < ApplicationController
  allow_unauthenticated_access

  def new
    @user = User.new
  end

  def create
    @user = User.new(sign_up_params)
    if @user.save
      start_new_session_for @user
      redirect_to after_authentication_url, notice: "User registration successfull"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def sign_up_params
    params.expect(user: [ :email_address, :password, :password_confirmation ])
  end
end
