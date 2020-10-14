require 'sinatra'
require 'sinatra/reloader' if :development?
require 'sqlite3'

db = SQLite3::Database.new "data.db"
db.results_as_hash = true

get '/' do
  limit = 20 
  count = db.execute("SELECT COUNT(*) as total FROM digimons;")
  
  @page = (params[:page] || 1).to_i
  @digimons = db.execute "SELECT * FROM digimons LIMIT ? OFFSET ?", limit, limit * @page
  @total = count.first["total"] / limit

  erb :index
end
