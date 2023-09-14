class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']
  def show
    @product = Product.all
    @total_quantity = @product.count
    @total_categories = @product.distinct.count(:category_id)
  end
end
