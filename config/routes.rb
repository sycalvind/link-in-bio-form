Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  get("/backdoor", { :controller => "items", :action => "add" })
  post("/insert_item", { :controller => "items", :action => "update" })
end
