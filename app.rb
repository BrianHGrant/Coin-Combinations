require("sinatra")
require('sinatra/reloader')
require('./lib/coincombo')
also_reload('lib/**/*.rb')

get('/')do
  erb(:form)
end

get('/results')do
  @change = params.fetch('change').coincombo
  erb(:results)
end
