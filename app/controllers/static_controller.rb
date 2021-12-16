class StaticController < ApplicationController
  skip_before_action :authenticate_user!
  protect_from_forgery with: :null_session, only: [:registration]

  def home
    redirect_to dashboard_path if user_signed_in?
  end

  def registration

    rg = Registration.find_by( email: params[:email])
    if rg.present?
      render json: { msg: 'You are already registered with this email', code: "0"}
    else
      rg = Registration.new(registration_params)
      if rg.save
        RegistrationWorker.perform_async(rg.id)
        render json: { msg: 'successfully registered ', code: "1"}
      else
        render json: { msg: 'error', code: "2"}
      end
    end

  end

  private

  def registration_params
    params.permit(:name, :age_group, :email, :gender, :organization, :location, interests: [])
  end
  
end
