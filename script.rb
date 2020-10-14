require 'net/http'
require 'json'
require 'sqlite3'

db = SQLite3::Database.new "data.db"

request = Net::HTTP.get(URI("https://digimon-api.vercel.app/api/digimon"))
heroes = JSON.parse(request)

heroes.each do | h |
  db.execute 'INSERT INTO digimons(name,img,level) VALUES (?,?,?)', h["name"],h["img"],h["level"]
end