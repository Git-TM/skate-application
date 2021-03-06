require "open-uri"

puts "Deleting all"
Videotrick.delete_all
Skateshop.delete_all
Spotphoto.delete_all
Spot.delete_all
User.delete_all

puts "creating user"
user1 = User.create(email: 'dustin@gmail.com', password: "123456")
user1.save!
user2 = User.new(email: 'tristan@gmail.com', password: "1234567")
user2.save!
user3 = User.new(email: 'dimitri@gmail.com', password: "1234567")
user3.save!

# Creating 1st spot
spot1 = Spot.create(name: "Skatepark de Nations", address: "61 Cr de Vincennes, 75020 Paris", score_flat: 5, score_popularity: 3)
spot1photo1 = Spotphoto.create(description: "First Photo", spot_id: spot1.id)
spot1photo2 = Spotphoto.create(description: "Second Photo", spot_id: spot1.id)
file1 = URI.open("https://1.bp.blogspot.com/-AzAfhz5tNpQ/XxhkuwecDyI/AAAAAAABZnU/pu5xmOHRgRg4asYCWcFxNRkZIWo69ED_QCLcBGAsYHQ/s320/Skatepark%2BNation%2BCours%2Bde%2BVincennes%2B%25283%2529.jpg")
spot1photo1.photo.attach(io: file1, filename: "nations", content_type: 'image/jpg')
file2 = URI.open("https://1.bp.blogspot.com/-Np1c6GQpa-c/Xs46Mw3fE1I/AAAAAAABWvs/YRHbAPJVWxweTZH-5gLifryGo8B0ohuLACK4BGAsYHg/w640-h394/Skatepark%2BNation%2BCours%2Bde%2BVincennes%2B%25281%2529.jpg")
spot1photo2.photo.attach(io: file2, filename: "nations", content_type: 'image/jpg')
spot1.save!
spot1photo1.save!
spot1photo2.save!

# Creating 2nd spot
spot2 = Spot.create(name: "Palais de Tokyo", address: "13 avenue du président Wilson", score_flat: 4, score_popularity: 5)
spot2photo1 = Spotphoto.create(description: "First Photo", spot_id: spot2.id)
spot2photo2 = Spotphoto.create(description: "Second Photo", spot_id: spot2.id)
file7 = URI.open("https://upload.wikimedia.org/wikipedia/commons/2/21/Palais_de_Tokyo_-_Skate_02.jpg")
spot2photo1.photo.attach(io: file7, filename: "palaistokyo", content_type: 'image/jpg')
file8 = URI.open("https://i.skyrock.net/1855/13321855/pics/338019979_small.jpg")
spot2photo2.photo.attach(io: file8, filename: "palaistokyo", content_type: 'image/jpg')
spot2photo1.save!
spot2photo2.save!
spot2.save!

# Creating 3nd spot
spot3 = Spot.create(name: "Skatepark de Charonne", address: "40 Rue Emile Lepeu, 75011 Paris", score_flat: 4, score_popularity: 3)
spot3photo1 = Spotphoto.create(description: "First Photo", spot_id: spot3.id)
spot3photo2 = Spotphoto.create(description: "First Photo", spot_id: spot3.id)
file3 = URI.open("https://1.bp.blogspot.com/-yT3wsjGKgJk/XaBHJltf04I/AAAAAAABESo/YQ0OF5J7KwIkrrnBDzWAWNuqrU0wgzbygCEwYBhgL/s1600/Skatepark%2BCharonne%2B1-1.jpg")
spot3photo1.photo.attach(io: file3, filename: "charonne", content_type: 'image/jpg')
file4 = URI.open("https://www.abcskate.com/wp-content/uploads/2021/01/AbcSkate-skate-skateboard-skatepark-paris-charonne-05.jpg")
spot3photo2.photo.attach(io: file4, filename: "charonne", content_type: 'image/jpg')
spot3.save!
spot3photo1.save!
spot3photo2.save!

# Creating 4th spot
spot4 = Spot.create(name: "Invalides", address: "2 Rue Robert Esnault-Pelterie, 75007 Paris", score_flat: 5, score_popularity: 2)
spot4photo1 = Spotphoto.create(description: "First Photo", spot_id: spot4.id)
spot4photo2 = Spotphoto.create(description: "First Photo", spot_id: spot4.id)
file5 = URI.open("https://c8.alamy.com/compfr/2ay982m/patinage-pour-adolescents-paris-2ay982m.jpg")
spot4photo1.photo.attach(io: file5, filename: "charonne", content_type: 'image/jpg')
file6 = URI.open("https://www.rollerenligne.com/wp-content/uploads/esplanade-invalides.jpg")
spot4photo2.photo.attach(io: file6, filename: "charonne", content_type: 'image/jpg')
spot4.save!
spot4photo1.save!
spot4photo2.save!

# Creating 1st skateshop
skateshop1 = Skateshop.create(name: "Nozbone", address: "7 Rue de Marseille, 75010 Paris", url: "https://www.nozbone.com")
skateshop1.save!
skateshop2 = Skateshop.create(name: "Snowbeach", address: "30 Bd Richard-Lenoir, 75011 Paris", url: "https://www.snowbeach.com")
skateshop2.save!


# Creatin first videotricks
videotricks3 = Videotrick.create(content: "what a nice trick", user_id: user3.id, spot_id: spot2.id)
videotricksvideo3 = URI.open("https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4")
videotricks3.video.attach(io: videotricksvideo3, filename: "charonne", content_type: 'video/mp4')
videotricks3.save!
