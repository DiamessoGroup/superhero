class HomeController < ApplicationController

  def index
  end

  def team
    @team_number = params[:query_team_number].to_i
  end
end


