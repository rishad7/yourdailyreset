class Api::ApiController < ActionController::API

  before_action :authorize_request!

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private
  
  def authorize_request!
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      decoded = JsonWebToken.decode(header)
      @current_user = User.find(decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized and return
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized and return
    end
  end
    
  def record_not_found(exception)
    render json: { error: "Resource not found" }, status: :not_found and return
  end
end