module Api
  module V1
    class UserResource < JSONAPI::Resource
      attributes :email, :name, :username, :discord_id, :buddy, :active, :role, :password
    end
  end
end