class CostManagersController < ApplicationController
  layout "menu"

  def index
     
  end

  def show
    @cost=User.find(params[:id]).costs.first
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def cost_menu
  end
end
