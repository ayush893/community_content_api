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
  