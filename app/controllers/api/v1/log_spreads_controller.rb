module Api
  module V1
    class LogSpreadsController < ApplicationController
      before_action :authorize_access_request!
    end
  end
end
