PingPong::Application.routes.draw do
  resources :users



  get "/home" =>"game#home"
  get "/" =>"game#home"
  get "/game/home" => "game#home"
  post "/game/update" => "game#update"


end
