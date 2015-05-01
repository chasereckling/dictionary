require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/dictionary')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/definitions') do
  @definitions = Definition.all()
  erb(:definitions)
end

get('/definitions/new') do
  erb(:definition_form)
end

post('/definitions') do
  define = params.fetch("define")
  definition = Definition.new(define)
  definition.save()
  erb(:success)
end

get('/definitions/:id') do
  @definition = Definition.find(params.fetch("id").to_i())
end
