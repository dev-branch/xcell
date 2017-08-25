Rails.application.routes.draw do
  get '/parse', to: 'parse#parse'
  get '/upload', to: 'parse#upload'
  post '/receive', to: 'parse#receive'
end
