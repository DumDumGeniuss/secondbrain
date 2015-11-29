class CostManagersController < ApplicationController
  layout "menu"
  before_action :authenticate_user!, :except => [:index]
  def index
     
  end

  def show
    @costs=User.find(current_user.id).costs
  end

  def new
    @cost = Cost.new
  end

  def create
    @cost = User.find(current_user.id).costs.build(cost_params)
    @cost.save
    redirect_to cost_manager_path(current_user.id )
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
