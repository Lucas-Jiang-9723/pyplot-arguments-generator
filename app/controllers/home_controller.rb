class HomeController < ApplicationController
  def index
    render({:template => "/homepage/home.html.erb"})
  end

  def hesitate
    render({:template => "homepage/hesitate.html.erb"})
  end

  def reference
    render(:template => "homepage/reference.html.erb")
  end
end
