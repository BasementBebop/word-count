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
  @plural = "s"
  if @result < 2 and @result > 0
    @plural = ""
  end
  erb(:display)
end
