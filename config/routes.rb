Rails.application.routes.draw do
  get 'store_admin/home'

  get 'store_admin/orders'

  get 'store_admin/invoice'

  get 'static/home'

  get 'home', to: 'static#home'
  get 'admin/home', to: 'store_admin#home'
  get 'admin/orders', to: 'store_admin#orders'
  get 'admin/invoice', to: 'store_admin#invoice'
end
