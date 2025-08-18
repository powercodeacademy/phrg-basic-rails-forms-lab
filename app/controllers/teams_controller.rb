class TeamsController < ApplicationController
  def new 
    @team = Team.new 
  end

  def create 
    @team = Team.create(params.permit(:name, :coach, :pg, :sg, :pf, :sf, :c))
  end
end
