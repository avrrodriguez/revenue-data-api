Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/revenues", controller: "revenues", action: "index"

  # Miami Revenue Scopes
  get "/revenues", controller: "revenues", action: "with_no_budget"
  get "/revenues", controller: "revenues", action: "with_bonus"
  get "/revenues", controller: "revenues", action: "yearly_department_earnings"
  get "/revenues", controller: "revenues", action: "department_organizations_earnings"
end
