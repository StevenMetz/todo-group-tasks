class SessionsController < ApplicationController
  Rails.logger.info "Secret key base: #{Rails.application.credentials.dig(:secret_key_base)}"

  def create
    employee = Employee.find_by(email: params[:email])
    if employee && employee.authenticate(params[:password])
      jwt = JWT.encode(
        {
          employee_id: employee.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: employee.email, employee_id: employee.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
