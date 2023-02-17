class EmployeeSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  except :password_digest, :address

  def image
    if object.image.attached?
      {
        url: rails_blob_url(object.image),
      }
    end
  end
end
