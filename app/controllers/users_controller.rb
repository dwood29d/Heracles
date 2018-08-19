class UsersController < ApplicationController

  def join_team
    @team = Team.find(params[:id])
    current_user.team = @team

    if current_user.save
      flash[:success] = "Successfully joined team!"
    else
      flash[:danger] = "There was a problem joining this team"
    end
    redirect_to team_path(@team)
  end

  def join_department
    @department = Department.find(params[:id])
    current_user.department = @department

    if current_user.save
      flash[:success] = "Successfully joined the department #{@department.name}!"
    else
      flash[:danger] = "There was a problem joining this department"
    end
    redirect_to department_path(@department)
  end
end
