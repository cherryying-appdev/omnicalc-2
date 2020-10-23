Rails.application.routes.draw do
  get("/wizard_add", { :controller =>  "application", :action =>  "addition_results" })
  get("/add", { :controller =>  "application", :action =>  "blank_add_form" })
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
