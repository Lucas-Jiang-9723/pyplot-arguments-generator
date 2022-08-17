Rails.application.routes.draw do
  #homepage
    get("/", {:controller=>"home", :action=>"index"})
  
  #playaround
    get("/playaround", {:controller=>"plot", :action=>"play"})
  #sample data
    get("/sample", {:controller=>"plot", :action=>"sample"})
  #sample plotting type
    get("/sample/choose_plotting_type",{:controller=>"plot", :action=>"sample_input"})  
  #sample argument display
  get("/sample/arguments/:the_type",{:controller=>"plot", :action=>"sample_argument"})
  
  #sample plotting type chosen
    get("/sample/choose_plotting_type/:the_type", {:controller=>"plot", :action=>"sample_the_type"})
  #hesitate
    get("/hesitate", {:controller=>"home", :action=>"hesitate"})
  #choose plotting type
    get("/choose_plotting_type", {:controller=>"plot", :action=>"input"})
  #show chosen plotting type
    get("/choose_plotting_type/:the_type", {:controller=>"plot", :action=>"the_type"})
  
  #present arguments
    get("/arguments/:the_type",{:controller=>"plot", :action=>"argument"})
  
    #reference page
    get("/reference",{:controller=>"home", :action=>"reference"})

end
