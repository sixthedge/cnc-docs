Rails.application.routes.draw do
  mount Totem::Lodestar::Engine, at: "/"
end
