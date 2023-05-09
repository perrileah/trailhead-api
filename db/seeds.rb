# Hike.create(
#   name: "Petrifying Springs Trail",
#   park_id: 1,
#   distance: "2.4 miles",
#   time: "46 minutes",
#   image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/04/ac/2b/petrifying-springs-park.jpg?w=1200&h=-1&s=1",
#   route_type: "out & back",
# )

# Hike.create(
#   name: "Hogback Mountain",
#   park_id: 2,
#   distance: "3.1 miles",
#   time: "1 hour 29 minutes",
#   image_url: "https://ezmoments.com/wp-content/uploads/2020/03/hogback-mountain-marquette-michigan-min-1024x588.jpeg",
#   route_type: "out & back",
# )

User.create(
  name: "leah",
  email: "leah@example.com",
  password_digest: "password",
  image_url: "https://avatars.githubusercontent.com/u/125906074?v=4",
)

# Review.create(
#   hike_id: 1,
#   user_id: 1,
#   time: "1 hour",
#   ranking: 5,
#   comments: "Easy, peaceful hike. Not many other hikers.",
#   image_url: "https://www.kenoshacounty.org/ImageRepository/Document?documentID=12857",
# )
