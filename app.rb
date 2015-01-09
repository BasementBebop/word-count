require('sinatra')
require('sinatra/reloader')

get('/form') do
  erb(:form)
end
