class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new()
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:success] = "Congratulation! #{@team.name} has successfully been created!"
      redirect_to team_path(@team)
    else
      render 'new'
    end
  end

  private
  def team_params
    params.require(:user).permit(:name)
  end

end
