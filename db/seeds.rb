# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  # MySQL
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")

  # SQLite
  # ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end

Category.create!([{ :name => 'Arte' }, { :name => 'Circo' }])
#ActiveRecord::Base.connection.execute "INSERT INTO categories (name) VALUES ('Arte'),
# ('Artes plásticas'),
# ('Circo'),
# ('Comunidade'),
# ('Feito à mão'),
# ('Humor'),
# ('Quadrinhos'),
#('Dança'),
# ('Design'),
# ('Eventos'),
# ('Moda'),
# ('Comida'),
# ('Cinema & Vídeo'),
# ('Jogos'),
# ('Jornalismo'),
# ('Música'),
# ('Fotografia'),
# ('Tecnologia'),
# ('Teatro'),
# ('Literatura');"
