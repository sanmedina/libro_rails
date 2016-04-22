class ErrorsController < ApplicationController
  def route
    render :file => "#{Rails.root}/public/404.html", :layout => false
  end
end
