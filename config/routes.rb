Rails.application.routes.draw do
  # root page로 컨트롤러의 목록으로!
  root "posts#index"# 맨처음 홈 지정을 root로 해준다.
  get 'home/index'
  get 'home/result' => 'home#result' # 홈컨트롤러로 결과를 보내준다. 응답을 result에서 해준다.
  
  #CRUD 중 Create에 관련된 내용입니다.
  get 'posts/new'
  post 'posts/create' => 'posts#create'
  
  #CRUD 중 Read에 관련된 내용입니다.
  get 'posts/index'
  get 'posts/show/:id' => 'posts#show'
  
  #CRUD 중 Destroy에 관련된 내용입니다.
  delete "posts/destroy/:id" => 'posts#destroy'
  
  #CRUD 중 Update에 관련된 내용입니다.
  get 'posts/edit/:id' => 'posts#edit'
  #post 'posts/update/:id' => 'posts#update' # post를 patch로 바꿔도 되는데 코드 한줄 추가해야함. <input type="hidden" name="_method" value="patch" /> 바로 이거!
  patch 'posts/update/:id' => 'posts#update'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
