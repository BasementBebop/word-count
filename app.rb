require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/word_count.rb')

get('/form') do
  erb(:form)
end

get('/display') do
  @result = params.fetch('text_block').word_count(params.fetch('word'))
  @word = params.fetch('word')
  erb(:display)
end
