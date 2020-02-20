Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: redirect('/en')
  get '/:locale/', controller: :pages, action: :index
  get '/:locale/:page_name', controller: :pages, action: :show
end
