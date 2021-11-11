class Admin::DashboardController < ApplicationController
  def show
    @products = Product.all.count
    @categories = Category.all.count 
    # raise @categories.inspect
  end
end
