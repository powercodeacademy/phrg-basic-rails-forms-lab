class TeamsController < ApplicationController
  def new
    @team = {}
  end

  def create
    @team = {
      name: params[:name],
      coach: params[:coach],
      pg: params[:pg],
      sg: params[:sg],
      pf: params[:pf],
      sf: params[:sf],
      c: params[:c]
    }
    render :show
  end

  private

  def team_params
    params.require(:team).permit(:name, :coach, :pg, :sg, :pf, :sf, :c)
  end
end
