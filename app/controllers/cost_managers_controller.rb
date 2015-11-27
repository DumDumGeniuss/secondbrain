class CostManagersController < ApplicationController
  layout "menu"

  def index
     
  end

  def show
    @costs=User.find(current_user.id).costs.where(:cost_type=>params[:id])
    @cost_type = params[:id]
  end

  def new
    @cost = Cost.new
    @cost_type = params[:cost_type]
  end

  def create
    @cost = User.find(current_user.id).costs.build(cost_params)
    @cost.save
    redirect_to cost_manager_path( @cost.cost_type )
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def cost_menu
  end

  def cost_params
    params.require(:cost).permit(:cost_type,:cost_for,:amount,:position)
  end

end
