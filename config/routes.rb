Rails.application.routes.draw do
  #homepage
    get("/", {:controller=>"home", :action=>"index"})
  
  #hesitate
    get("/hesitate", {:controller=>"home", :action=>"hesitate"})
  #choose plotting type
    get("/choose_plotting_type", {:controller=>"plot", :action=>"input"})
  #show chosen plotting type
    get("/choose_plotting_type/:the_type", {:controller=>"plot", :action=>"the_type"})
  
  #present arguments
    get("/arguments/:the_type",{:controller=>"plot", :action=>"argument"})

end
