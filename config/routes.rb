StandingInLine::Application.routes.draw do
  resources :places do 
  	resources :check_ins
  end

  root :to => "places#index" 
end