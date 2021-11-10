class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    
    @products = @category.products.order(created_at: :desc)
  end

end

# raise @category.inspect Is good when checking whats inside a instance variable
# We can use this in our erb files as well like this <%= raise @category %>

