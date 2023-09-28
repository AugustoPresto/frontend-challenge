# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#


[
  {
    name: "Jane Elizabeth",
    username: "jabet",
    location: "Willowbrook, OR",
    groups: %w[engineering product]
  },
  {
    name: "Alexis Anderson",
    username: "aalexis",
    location: "Maplewood, NY",
    groups: %w[marketing product]
  }
].each_with_index do |attributes, index|
  avatar_attr = {
    io: File.open(Rails.root.join("public/avatars/#{index}.png")),
    filename: "avatar.png"
  }
  User.create! attributes.merge(avatar: avatar_attr)
end
