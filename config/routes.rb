Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  get("/backdoor", { :controller => "backdoor", :action => "add_item_form" })
  post("/backdoor/add_item", { :controller => "backdoor", :action => "add_item" })
end
