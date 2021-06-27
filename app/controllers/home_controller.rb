class HomeController < ApplicationController
  include HomeHelper

  def index
    hero_content
  end

  def team
    @team_number = params[:query_team_number].to_i
    hero_content
  end
end


