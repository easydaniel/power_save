Rails.application.routes.draw do
  post '/bot/callback', to: 'bot#callback'
end
