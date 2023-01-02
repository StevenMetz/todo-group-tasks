class ApplicationController < ActionController::API
  def current_employee
    auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        Employee.find_by(id: decoded_token[0]["employee_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  def authenticate_employee
    unless current_employee
      render json: {}, status: :unauthorized
    end
  end
end
end
