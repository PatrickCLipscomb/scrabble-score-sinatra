require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/scrabble_score') do
  @scrabble_score = params.fetch('scrabble_score').scrabble_score()
  erb(:scrabble_score)
end
