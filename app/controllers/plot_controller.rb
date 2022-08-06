class PlotController < ApplicationController
  def input
    @the_type = params.fetch("plotting_type")
    redirect_to("/choose_plotting_type/#{@the_type}")
  end
  
  def the_type
    @the_type = params.fetch("the_type")
    render({:template => "plot/the_type.html.erb"})
  end

end
