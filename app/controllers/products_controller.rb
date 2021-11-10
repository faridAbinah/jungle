class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    
  end

  def show
    @product = Product.find params[:id]
   
  end

end

# Instance variables are automatically available to the view that the action is rendering.
# The index action for the products controller will automatically render the index view located in views/products/index.html.erb
# Same thing goes for the show it will automatically render the show views/products/show.html.erb
# Instance variables are transferred from the controller into the view automatically.
# @msg = 'Hello Farid' if this was declared in our show action we could go to our show view and do <%= @msg %> and it will display the message
# This is because any instance variable declared in the action will automatically be available for use in the view