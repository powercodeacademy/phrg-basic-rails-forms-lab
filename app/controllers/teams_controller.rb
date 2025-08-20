class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
  end

  private

  def team_params
    params.require(:team).permit(:name, :coach, :pg, :sg, :pf, :sf, :c)
  end
end
