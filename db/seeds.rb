# require "csv"

# CSV.foreach(Rails.root.join("alltrails-data.csv"), headers: true) do |row|
#   Hike.create({
#     name: row["name"],
#     park_name: row["area_name"],
#     distance: row["length"],
#     time: "1 hour 30 minutes",
#     image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Hiking_to_the_Ice_Lakes._San_Juan_National_Forest%2C_Colorado.jpg/1200px-Hiking_to_the_Ice_Lakes._San_Juan_National_Forest%2C_Colorado.jpg",
#     route_type: row["route_type"],
#     dog_friendly: false,
#   })
# end

# CSV.foreach(Rails.root.join("alltrails-data.csv"), headers: true) do |row|
#   Park.create({
#     name: row["area_name"],
#     city: row["city_name"],
#     state: row["state_name"],
#     zip: 12345,
#     description: "Park description here",
#     image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/04/ac/2b/petrifying-springs-park.jpg?w=1200&h=-1&s=1",
#   })
# end

# Hike.create(
#   name: "Petrifying Springs Trail",
#   park_name: "Petrifying Springs",
#   distance: 2.4,
#   time: "46 minutes",
#   image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/04/ac/2b/petrifying-springs-park.jpg?w=1200&h=-1&s=1",
#   route_type: "loop",
#   dog_friendly: true,
# )

# Hike.create(
#   name: "Hogback Mountain",
#   park_name: "Little Presque Isle Natural Area",
#   distance: 3.1,
#   time: "1 hour 29 minutes",
#   image_url: "https://ezmoments.com/wp-content/uploads/2020/03/hogback-mountain-marquette-michigan-min-1024x588.jpeg",
#   route_type: "out & back",
#   dog_friendly: true,
# )

# User.create(
#   name: "leah",
#   email: "leah@example.com",
#   password_digest: "password",
#   image_url: "https://avatars.githubusercontent.com/u/125906074?v=4",
# )

# Review.create(
#   hike_id: 1,
#   user_id: 1,
#   time: "1 hour",
#   ranking: 5,
#   comments: "Easy, peaceful hike. Not many other hikers.",
#   image_url: "https://www.kenoshacounty.org/ImageRepository/Document?documentID=12857",
# )

# Park.create(
#   name: "Test",
#   city: "test",
#   state: "test",
#   zip: 53142,
#   description: "test",
#   image_url: "image url",
# )
