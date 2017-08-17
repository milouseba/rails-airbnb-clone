# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
require 'open-uri'
# require 'csv'

# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }


# # File.join(__dir__, 'AdresseOnze.csv')
# filepath = File.join(__dir__, 'AdresseOnze.csv')
# CSV.foreach(filepath, csv_options).each do |row|
#   puts row['nom_voie']
# end


# csv_text = File.read(Rails.root.join('db', 'seeds', 'AdresseOnze.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   puts row.to_hash
# end

# puts "#{row['numero']} #{row['nom_voie']}, 75011 Paris"




# Order.destroy_all

puts "Destroying database...."
Order.destroy_all
Article.destroy_all
User.destroy_all
puts "Done!"

puts "Creating users database..."
10.times do
  url = 'https://randomuser.me/api/'
  user_serialized = open(url).read
  users_list = JSON.parse(user_serialized)

  User.create(email: users_list["results"][0]["email"], url_avatar:
  users_list["results"][0]["picture"]["large"], password:
  users_list["results"][0]["login"]["password"])
end
url = 'https://randomuser.me/api/'
user_serialized = open(url).read
users_list = JSON.parse(user_serialized)
User.create(email: "sebastien@gmail.com", password: "sebastien", first_name: "sebastien", last_name: "milou",
            url_avatar: users_list["results"][0]["picture"]["large"])
User.create(email: "thomas@gmail.com", password: "thomas", first_name: "thomas", last_name: "chekaiban",
            url_avatar: users_list["results"][0]["picture"]["large"])
User.create(email: "maxime@gmail.com", password: "maxime", first_name: "maxime", last_name: "guillemain",
            url_avatar: users_list["results"][0]["picture"]["large"])
User.create(email: "ariane@gmail.com", password: "ariane", first_name: "ariane", last_name: "decolle",
            url_avatar: users_list["results"][0]["picture"]["large"])
puts "Users created"

url1 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875767/Herbnb/Weed_1.jpg"
url2 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875767/Herbnb/Weed_2.jpg"
url3 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875767/Herbnb/Weed_3.jpg"
url4 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875767/Herbnb/Weed_4.jpg"
url5 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875767/Herbnb/Weed_5.jpg"
url6 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875767/Herbnb/Weed_6.jpg"
url7 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875767/Herbnb/Weed_7.jpg"
url8 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875767/Herbnb/Weed_8.jpg"
url9 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875768/Herbnb/Weed_9.jpg"
url10 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875768/Herbnb/Weed_10.jpg"
url11 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875768/Herbnb/Weed_11.jpg"
url12 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875793/Herbnb/Weed_12.jpg"
url13 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875768/Herbnb/Weed_13.jpg"
url14 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875768/Herbnb/Weed_14.jpg"
url15 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875769/Herbnb/Weed_15.jpg"
url16 = "http://res.cloudinary.com/dd6ibmn7p/image/upload/v1502875768/Herbnb/Weed_16.jpg"

array_url = [url1, url2, url3, url4, url5, url6, url7, url8, url9, url10, url11, url12, url13, url14, url15, url16]

article_weeds = [
{title: "Haze", description: "La Haze est une variété de sativa qui a grandi à Santa Cruz, en Californie."},
{title: "JackHerer", description: "La Jack Herer a été créée aux Pays-Bas au milieu des années 1990."},
{title: "SourDiesel", description: " Cette variété est connue pour ses effets rapides et énergisants, principalement au niveau cérébral."},
{title: "Harlequin", description: "Descendante de la Colombian Gold, une indica népalaise, d’une Thai et d’une variété endémique suisse, l’Harlequin exprime pleinement ses effets énergisants de sativa."},
{title: "AcapulcoGold", description: "L’Acapulco Gold est une vieille variété très appréciée.  Ses longs cheveux oranges la font ressembler à une pépite d’or, avec des reflets dorés, verts et marrons dans sa résine. Une odeur de caramel chauffé émane dans ses têtes lorsqu’on les casse."},
{title: "GirlScoutCookies", description: "La Girl Scout Cookies est un hybride. Elle est surtout utilisée médicalement pour ses vertus relaxantes et cérébrales."},
{title: "AK47", description: "Cette variété de marijuana de type hybride à dominante sativa délivre des sensations énergiques et cérébrales, et se marie bien avec des activités sociales et créatives."},
{title: "WhiteWidow", description: "La White Widow fait partie des variétés de cannabis les plus connues dans le monde. Elle a été servie dans tous les coffee shops néerlandais depuis les années 1990."},
{title: "OrangeBud", description: "Ses pistils oranges et ses arômes d’agrumes lui ont donné son nom. C’est l’une des variétés les plus puissantes, avec des têtes denses et fournies en THC."},
{title: "Skunk", description: "C'est une variété de cannabis hybride qui a influencé le cannabis à une large échelle, donnant naissance à plusieurs croisement de skunk depuis sa première floraison dans les années 1970."},
{title: "BigBud", description: "Développée aux USA avant d’être transportée aux Pays-Bas, elle est une légende parmi les cultivateurs pour son très haut rendement."},
{title: "G13", description: "La G13 est une variété d'indica très puissante qui est sujette à de nombreuses légendes urbaines. . On dit que la CIA et le FBI ont rassemblé les meilleures variétés de cannabis du monde entier pour créer de nombreuses super espèces hybrides à la fin des années 1960."},
{title: "Kush", description: "Elle trouve ses origines en Afghanistan, au Pakistan et en Inde, d’où son nom, qui est tiré en référence à la chaîne de montagnes Hindu Kush."},
{title: "NorthernLights", description: "Elle fait partie des variétés de cannabis les plus connues. C’est une pure indica appréciée pour ses têtes résineuses et ses rendements élevés et rapides."},
{title: "GrapeApe", description: "Nommée d’après ses effluves de raisin, cette indica est connue pour ses effets relaxants qui peuvent aider à apaiser les douleurs, le stress et l’anxiété. Elle stimule également l’appétit, ne vous éloignez donc pas trop de votre frigo."}
]

puts "create articles"
article_weeds.each do |article|
  art = Article.new(
    address: "#{Faker::Address.city}, #{Faker::Address.street_address}, #{Faker::Address.zip_code}, #{Faker::Address.country}",
    title: article[:title],
    description: article[:description],
    price: (35...60).to_a.sample,
    user_id: User.all.sample.id)
  art["photo"] = array_url.sample
  art.save
end

# real_user = ["sebastien@gmail.com", "thomas@gmail.com", "ariane@gmail.com", "maxime@gmail.com"]
# address_user = ["4, Place du Louvre 75001 Paris",
#                 "8, rue de la Banque, 75002 Paris",
#                 "2, rue Eugène Spuller, 75003 Paris",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#                 "",
#               ]
# real_user.each do |realuser|
#   article_weeds.each do |article|
#     art = Article.new(
#       address: "100 rue de clery 75002 Paris",
#       title: article[:title],
#       description: article[:description],
#       price: (35...60).to_a.sample,
#       user_id: User.find_by_email(realuser).id)
#     art["photo"] = array_url.sample
#     art.save
#   end
# end

puts "articles created"

