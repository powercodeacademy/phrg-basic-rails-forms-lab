class TeamsController < ApplicationController
  def new; end

  def create
    @team = team_params
  end

  private

  def team_params
    params.permit(:name, :coach, :pg, :sg, :pf, :sf, :c)
  end
end
