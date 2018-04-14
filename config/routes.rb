Rails.application.routes.draw do
  get '*all', to: 'application#mount'
  root 'application#mount'
end
