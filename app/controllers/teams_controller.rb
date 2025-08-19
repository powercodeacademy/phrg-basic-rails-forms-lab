class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      render :create, notice: 'Team created successfully!'
    else
      render :new
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :coach, :pg, :sg, :pf, :sf, :c)
  end
end
