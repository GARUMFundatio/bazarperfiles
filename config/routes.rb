
Bazar::Application.routes.draw do
 
  scope(:path => 'bazarperfiles', :module => 'bazarperfiles', :as => 'bazarperfiles' ) do
    resources :perfiles do
      get :autocomplete_perfil_descripcion, :on => :collection
    end
  
  end
 
  match "/bazarperfiles/dashboard" => "bazarperfiles/perfiles#dashboard"
    
end