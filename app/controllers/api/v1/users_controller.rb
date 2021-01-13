# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      include JSONAPI::ActsAsResourceController
      before_action :authenticate_user!
      

      def context
        { user: current_user }
      end

    end
  end
end

      # def new_user
      #   return head 403 if current_user.username == User.find_by(username: params[:username])
      # end