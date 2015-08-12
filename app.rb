require("sinatra")
require("sinatra/reloader")
require("./lib/CD_org")

get '/' do
  @org = CD_ORG.new
  @org.save
  erb :index
end

post '/add_album' do
  array_of_organizers = CD_ORG.retrieve
  @org = array_of_organizers[0]
  @org.add(params['album'])
  erb :index
end
