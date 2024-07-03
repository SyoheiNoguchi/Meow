# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

tags_data = ActiveSupport::JSON.decode(File.read(
  Rails.root.join("db", "tags.json")
))

tags_data.each do |d|
  Tag.create(
    name: d["name"]
  )
end

writers_data = ActiveSupport::JSON.decode(File.read(
  Rails.root.join("db", "writers.json")
))

writers_data.each do |d|
  Writer.create(
    name: d["name"]
  )
end

news_data = ActiveSupport::JSON.decode(File.read(
  Rails.root.join("db", "news.json")
))

news_data.each do |d|
  News.create(
    title: d["title"],
    description: d["description"],
    writer_id: d["writer_id"],
    tag_id: d["tag_id"],
    publish: d["publish"]
  )
end

# rescude_cats_data = ActiveSupport::JSON.decode(File.read(
#   Rails.root.join("db", "rescured_cats.json")
# ))

# rescude_cats_data.each do |d|
#   RescudeCats.create(
#     title: d["title"],
#     description: d["description"],
#     writer: d["writer"],
#     tag: d["tag"]
#   )
# end