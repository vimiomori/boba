module Api
  module V1
    class TasksController < ApplicationController
      before_action :authorize_access_request!
    end
  end
end