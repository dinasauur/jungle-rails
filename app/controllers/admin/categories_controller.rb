class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: ENV['HTTP_BASIC_AUTH_USERNAME'], password: ENV['HTTP_BASIC_AUTH_PASSWORD']

  def index
    @categories = Category.name
  end
end
