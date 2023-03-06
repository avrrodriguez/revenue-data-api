Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/revenues", controller: "revenues", action: "index"

  # Miami Revenue Scopes
  get "/with_no_budget", controller: "revenues", action: "with_no_budget"
  get "/with_bonus", controller: "revenues", action: "with_bonus"
  get "/yearly_department_earnings", controller: "revenues", action: "yearly_department_earnings"
  get "/department_organizations_earnings", controller: "revenues", action: "department_organizations_earnings"

  get "/spearman_rank_correlation", controller: "revenues", action: "spearman_rank_correlation"
end
