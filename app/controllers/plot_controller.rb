class PlotController < ApplicationController
  def input
    @the_type = params.fetch("plotting_type")
    redirect_to("/choose_plotting_type/#{@the_type}")
  end
  
  def the_type
    @the_type = params.fetch("the_type")
    render({:template => "plot/the_type.html.erb"})
  end

  def argument
    @the_type = params.fetch("the_type")
    
    if @the_type=="Bar Chart"
      @function = "sn.barplot"
    elsif @the_type=="Box Plot"
      @function = "sn.boxplot"
    elsif @the_type=="Histogram"
      @function = "sn.histplot"
    elsif @the_type=="Line Chart"
      @function = "sn.lineplot"
    elsif @the_type=="Scatter Plot"
      @function = "sn.scatterplot"
    end
    render({:template => "plot/argument.html.erb"})
  end
end
