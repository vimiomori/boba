class HomeController < ApplicationController

  def index
    @journals = Journal.all
    render json: @journals
  end

end
