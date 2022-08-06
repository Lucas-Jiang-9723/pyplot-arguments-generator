Rails.application.routes.draw do
  #homepage
    get("/", {:controller=>"home", :action=>"index"})
  
  #hesitate
    get("/hesitate", {:controller=>"home", :action=>"hesitate"})


end
