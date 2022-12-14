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
      @function = "sns.barplot"
    elsif @the_type=="Box Plot"
      @function = "sns.boxplot"
    elsif @the_type=="Histogram"
      @function = "sns.histplot"
    elsif @the_type=="Line Chart"
      @function = "sns.lineplot"
    elsif @the_type=="Scatter Plot"
      @function = "sns.scatterplot"
    end
    render({:template => "plot/argument.html.erb"})
  end
 
  def sample_argument
    @the_type = params.fetch("the_type")
    
    if @the_type=="Bar Chart"
      @function = "sns.barplot"
    elsif @the_type=="Box Plot"
      @function = "sns.boxplot"
    elsif @the_type=="Histogram"
      @function = "sns.histplot"
    elsif @the_type=="Line Chart"
      @function = "sns.lineplot"
    elsif @the_type=="Scatter Plot"
      @function = "sns.scatterplot"
    end
    render({:template => "plot/sample_argument.html.erb"})
  end

  def play
    render({:template => "plot/playaround.html.erb"})
  end
  def sample
    render({:template => "plot/sample.html.erb"})
  end
  
  def sample_input
    @the_type = params.fetch("plotting_type")
    redirect_to("/sample/choose_plotting_type/#{@the_type}")
  end

  def sample_the_type
    @the_type = params.fetch("the_type")
    render({:template => "plot/the_sample_type.html.erb"})
  end
end
