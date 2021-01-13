# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    #TODO: only if user (discord_id ) is not already presents

    build_resource(sign_up_params)

    resource.save
    render_resource(resource)
  end

  def sign_up_params
    params.require(:user).permit(:username,:password)
  end
end
