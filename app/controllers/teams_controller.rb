class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new(team_params)
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to @team, notice: 'Team created successfully!'
    else
      render :new
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :coach, :pg, :sg, :pf, :sf, :c)
  end
end
