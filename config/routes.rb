Rails.application.routes.draw do
  resources :monsters, only: [:index, :show] do
    resources :tweets, except: [:edit, :update]  # Excluye las rutas de edición y actualización
  end

  root "tweets#index"  # Ruta raíz

  # Agregar una ruta específica para los tweets
  resources :tweets, only: [:show, :new, :create, :destroy]  # Excluye las rutas de edición y actualización
end
