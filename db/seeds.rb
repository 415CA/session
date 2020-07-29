# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
SkateSpot.destroy_all
SpotReview.destroy_all
UserSkateSpot.destroy_all
SkatePark.destroy_all
ParkReview.destroy_all
UserSkatePark.destroy_all
SkateShop.destroy_all
ShopReview.destroy_all
UserSkateShop.destroy_all
Product.destroy_all
SkateShopProduct.destroy_all

# User
# u1 = User.create( name: Faker::Name.name, age: 25, bio: Faker::Quote.most_interesting_man_in_the_world , borough: "Brooklyn", )
# u2 = User.create( name: Faker::Name.name, age: 25, bio: Faker::Quote.most_interesting_man_in_the_world , borough: "Bronx", )
# u3 = User.create( name: Faker::Name.name, age: 25, bio: Faker::Quote.most_interesting_man_in_the_world , borough: "Queens", )
# u4 = User.create( name: Faker::Name.name, age: 25, bio: Faker::Quote.most_interesting_man_in_the_world , borough: "Manhattan", )
# u5 = User.create( name: Faker::Name.name, age: 25, bio: Faker::Quote.most_interesting_man_in_the_world , borough: "Staten Island", )

# Skate Spot
ss1 = SkateSpot.create( name: "Brooklyn Banks", address: "355-365 Pearl St, New York, NY 10038", borough: "Manhattan", description: "Banks on banks on banks", rating:10, google_map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12097.46507271934!2d-74.01019205901109!3d40.709952834733095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a2365f4c391%3A0x13caf983db1c64b5!2sBrooklyn%20Banks%20Skatepark!5e0!3m2!1sen!2sus!4v1595890632431!5m2!1sen!2sus")
# rails
# sr1 = SpotReview.create( title: "Bridge the gap", content:"Classic NYC spot", rating: 10, user: u5, skate_spot: ss1 )

# Skate Park
p1 = SkatePark.create( name: "Washington Park Skate Park", address: "Washington Park, 271-333 5th St, Brooklyn, NY 11215", borough: "Brooklyn", description: "A slightly inclined plaza style skate area with 4 elements for tricks", rating: 10 , google_map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d96787.82119338842!2d-74.05997706990712!3d40.70437891041474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25afe6054e7cf%3A0x454c9044463bd20f!2sWashington%20Park%20Skate%20Park!5e0!3m2!1sen!2sus!4v1595890398116!5m2!1sen!2sus")
# UserSkatePark.create( user: u1, skate_park: p1 )
# pr1 = ParkReview.create( title: "Washington Park Skate Park", content: "Love it!", rating: 5, user: u1, skate_park: p1 )

# Skate Shop
sp1 = SkateShop.create( name: "Skate Brooklyn", address: "78 St Marks Pl, Brooklyn, NY 11217", borough: "Brooklyn", description: "Classic snow- & skateboard shop offering gear & apparel, plus a skate ramp in the back of the store.", rating: 10 , google_map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24205.21238923207!2d-73.99730996044924!3d40.68164600000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25baee918b23d%3A0x72866bce43d51b95!2sSkate%20Brooklyn!5e0!3m2!1sen!2sus!4v1595887881545!5m2!1sen!2sus")
sp2 = SkateShop.create( name: "Supreme", address: "190 Bowery, New York, NY 10012", borough: "Manhattan", description: "Skateboards & related gear, sneakers & house-brand streetwear make this SoHo shop a skater mecca.", rating: 9 , google_map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24191.457546918165!2d-74.01396112775579!3d40.71950916570441!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2598e814fa0db%3A0xb62b095e1c5b2d92!2sSupreme!5e0!3m2!1sen!2sus!4v1595889774228!5m2!1sen!2sus")
sp3 = SkateShop.create( name: "Zumiez", address: "200 Baychester Avenue #204C The Mall at Bay Plaza, NY 10475", borough: "Bronx", description: "Chain retailer offering trendy, brand-name clothing & shoes, plus gear for skate- & snowboarders.", rating: 5 , google_map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193059.15083191526!2d-73.98616639806191!3d40.88176556952828!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c28cba8f3d90df%3A0xbca03d08f1e5ef56!2sZumiez!5e0!3m2!1sen!2sus!4v1595890175986!5m2!1sen!2sus")
sp4 = SkateShop.create( name: "Belief NYC", address: "2401 29th St, Astoria, NY 11102", borough: "Queens", description: "Laid-back shop boasting a mix of skateboards & casualwear, including T-shirts, hats & jackets.", rating: 8 , google_map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193344.57916964366!2d-74.05225187960869!3d40.78402965498314!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4a1584a4b377dd02!2sBelief%20NYC!5e0!3m2!1sen!2sus!4v1595889949173!5m2!1sen!2sus")
sp5 = SkateShop.create( name: "Skate Brooklyn", address: "78 St Marks Pl, Brooklyn, NY 11217", borough: "Staten Island", description: "Classic snow- & skateboard shop offering gear & apparel, plus a skate ramp in the back of the store.", rating: 6 , google_map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24205.21238923207!2d-73.99730996044924!3d40.68164600000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25baee918b23d%3A0x72866bce43d51b95!2sSkate%20Brooklyn!5e0!3m2!1sen!2sus!4v1595887881545!5m2!1sen!2sus")

# ShopReview.create( title: "Long Lines", content: "Lines are crazy", rating: 5, user:u4, skate_shop: sp2 )
# UserSkateShop.create( user:u3, skate_shop: sp2 )

# Products
pro1 = Product.create( name:"Pro Board", category: "Deck", brand: "Chocolate", price: 50, image: "https://cdn.shopify.com/s/files/1/0208/0114/products/big_c_deck_alvarez_1024x1024.jpg?v=1589237776" )
#SkateShopProduct.create( skate_shop:sp2, product: pro1 )