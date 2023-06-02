class DashboardController < ApplicationController
  def main
    @items = Item.where(user: current_user)
  end
end
