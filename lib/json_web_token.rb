module JsonWebToken
    SECRET_KEY = Rails.application.credentials.jwt_secret_key.to_s
  
    def self.encode(payload, exp = 14.days.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, SECRET_KEY)
    end
  
    def self.decode(token)
      decoded = JWT.decode(token, SECRET_KEY)[0]
      HashWithIndifferentAccess.new decoded
    end
end  