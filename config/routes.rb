Rails.application.routes.draw do
 


  devise_for :users
    resources :patients do
      	resources :corevaluations
        resources :actual_diseases
        resources :actual_hepatics
        resources :antecedent_hepatics
        resources :antecedents
        resources :complementarios_exams
        resources :examen_fisicos
        resources :farmacologico_treatments
        resources :laboratory_exams
        
    end

  config.sign_out_via = :delete
  
  get 'static_pages/protocolos', to: "static_pages#protocolos"

  get 'static_pages/home', to: "static_pages#about"

  get 'static_pages/help', to: "static_pages#help"

  get 'static_pages/about', to: "static_pages#about"

  get 'static_pages/help', to: "static_pages#help"

  get 'patients/new', to: "patients#new"

  root to: "static_pages#home"

  get 'patients/:id/hcpaciente', to: "patients#hcpaciente", as: "hcpaciente"

#  root "patients#index"

end

  