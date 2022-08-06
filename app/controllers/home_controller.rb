class HomeController < ApplicationController
  def index
    render(:template => "/homepage/home.html.erb")
  end

end
