require('sinatra')
require('sinatra/reloader')

get('/form') do
  erb(:form)
end

get('/result') do
  erb(:display)
end
