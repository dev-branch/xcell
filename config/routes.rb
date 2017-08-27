Rails.application.routes.draw do
  get '/parse', to: 'parse#parse'
  get '/upload', to: 'parse#upload'
  post '/single', to: 'parse#single'
  post '/multi', to: 'parse#multi'
end
