# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Brewery.create!([
#   { name: "Alpine Dog Brewing Co", website_url: "http://www.alpinedogbrewery.com", image_url: "https://img1.wsimg.com/isteam/ip/b932027e-75b9-4fb3-a4d0-dc34d01cae26/brewery1CROP.jpg/:/rs=w:763,h:500,cg:true,m/cr=w:763,h:500", city: "Denver", brewery_type: "Micro" },
#   { name: "Call To Arms Brewing Company", website_url: "http://www.facebook.com/calltoarmsbrewing", image_url: "https://scontent-den2-1.xx.fbcdn.net/v/t39.30808-6/359461473_768664658600255_2553381594042920444_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=5f2048&_nc_ohc=cMxvSk1VM_4Ab6C5-0O&_nc_ht=scontent-den2-1.xx&oh=00_AfBQ4BIrT3Psp3g8u3UY__flOMVdJJ1N_FWDbtVKKb_Y3g&oe=6625D4E1", city: "Denver", brewery_type: "Micro" },
#   { name: "Cerebral Brewing", website_url: "http://www.cerebralbrewing.com/", image_url: "https://craftpeak-cooler-images.imgix.net/cerebral-brewing/logo-script-light-gold-01.png?auto=compress%2Cformat&ixlib=php-3.3.1&s=a8e8af8e8617bb92cae85e0545142ed7", city: "Denver", brewery_type: "Micro" },
# ])

# User.create!(name: "Andy", email: "andy@test.com", password: "password")
# User.create!(name: "Bob", email: "bob@test.com", password: "password")
# User.create!(name: "Carl", email: "carl@test.com", password: "password")

Favorite.create!(user_id: 23, brewery_id: 31)
