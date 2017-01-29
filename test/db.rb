require 'pg'

db = PG.connect(dbname: "test", user: "test", password: "password")

persons = db.exec("SELECT * FROM persons")

persons.each do |person|
 puts  "#{person['first_name']} #{person['last_name']}"
end

