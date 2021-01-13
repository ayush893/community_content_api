# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      include JSONAPI::ActsAsResourceController
      before_action :new_user, only: [:create]

      def context
        { user: current_user }
      end

      def new_user
        return head 403 if current_user.username == User.find_by(username: params[:username])

    end
  end
end
