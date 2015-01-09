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
  @text_block = params.fetch('text_block')
  @plural = "s"
  if @result < 2 and @result > 0
    @plural = ""
  end
  @error = "I'm a computer!"
  if @word == ""
    @error = "Maybe it appears 0 times because you didn't put in a word..."
  elsif @text_block == ""
    @error = "Next time actually putting in text might be nice..."
  end
  erb(:display)
end
