Rails.application.routes.draw do
  get("/wizard_add", { :controller =>  "application", :action =>  "addition_results" })
  get("/add", { :controller =>  "application", :action =>  "blank_add_form" })

  get("/subtract", { :controller =>  "application", :action =>  "blank_subtract_form" })
  get("/wizard_subtract", { :controller =>  "application", :action =>  "subtract_results" })

  get("/multiply", { :controller =>  "application", :action =>  "blank_multiply_form" })
  get("/wizard_multiply", { :controller =>  "application", :action =>  "multiply_results" })

  get("/divide", { :controller =>  "application", :action =>  "blank_divide_form" })
  get("/wizard_divide", { :controller =>  "application", :action =>  "divide_results" })

  get("/street_to_coords/new", { :controller =>  "application", :action =>  "blank_street_to_coords_form"})
  get("/street_to_coords/results", { :controller => "application", :action => "street_to_coords_results"})
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
