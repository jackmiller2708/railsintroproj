# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
Game.destroy_all
Game.reset_pk_sequence
# Rating.destroy_all
# Rating.reset_pk_sequence
# Developer.destroy_all
# Developer.reset_pk_sequence
# Genre.destroy_all
# Genre.reset_pk_sequence
# Platform.destroy_all
# Platform.reset_pk_sequence
# Publisher.destroy_all
# Publisher.reset_pk_sequence
#
# CSV.foreach(Rails.root.join('lib/seed_csv/Ratings.csv'), headers: true) do |row|
#   Rating.create({
#                     rating: row["name"]
#                    })
# end
#
# CSV.foreach(Rails.root.join('lib/seed_csv/Developers.csv'), headers: true) do |row|
#   Developer.create({
#                        name: row["name"]
#                 })
# end
#
# CSV.foreach(Rails.root.join('lib/seed_csv/Genre.csv'), headers: true) do |row|
#   Genre.create({
#                    name: row["name"]
#                 })
# end
#
# CSV.foreach(Rails.root.join('lib/seed_csv/Platforms.csv'), headers: true) do |row|
#   Platform.create({
#                       name: row["name"]
#                 })
# end
#
# CSV.foreach(Rails.root.join('lib/seed_csv/Publishers.csv'), headers: true) do |row|
#   Publisher.create({
#                        name: row["name"]
#                 })
# end

CSV.foreach(Rails.root.join('lib/seed_csv/Games.csv'), headers: true) do |row|
  Game.create({
                  genre: Genre.find(row["Genre"]),
                  publisher: Publisher.find(row["Publisher"]),
                  developer: row["Developer"].blank? ? nil : Developer.find(row["Developer"]),
                  platform: Platform.find(row["Platform"]),
                  rating: row["Developer"].blank? ? nil : Rating.find(row["Rating"]),
                  name: row["Name"],
                  year_of_release: row["Year_of_Release"]
              })
end

