User.delete_all
tricia = User.create("username" => "tricia", "password" => "chocolate", "name" => "Tricia Torres")
val = User.create("username" => "val", "password" => "cacao", "name" => "Valerie Myers")

Type.delete_all
white = Type.create("name" => "White Chocolate", "photo_url" => "http://mobile-cuisine.com/wp-content/uploads/2011/09/White-Chocolate.jpg")
milk = Type.create("name" => "Milk Chocolate", "photo_url" => "http://annmariekostyk.com/wp-content/uploads/2010/05/Milk-Chocolate.jpeg")
dark = Type.create("name" => "Dark Chocolate", "photo_url" => "http://i247.photobucket.com/albums/gg158/MDA2008/MDA2009/darkchocolate.jpg")

Category.delete_all
truffle = Category.create("name" => "Truffles", "photo_url" => "http://3.bp.blogspot.com/_xUE9ekhMEbM/THsfaXVc0OI/AAAAAAAACY4/byi4pEep_IM/s1600/easy+chocolate+truffles.jpg")
toffee = Category.create("name" => "Toffees", "photo_url" => "http://simmeringsugar.com/wp-content/themes/fresh/images/home_toffee_right.png")
bar = Category.create("name" => "Chocolate Bars", "photo_url" => "http://mw-orbit.com/wp-content/uploads/2010/10/chocolate-bar.png")
caramel = Category.create("name" => "Caramels", "photo_url" => "http://static.tastykitchen.com/wp-content/uploads/2011/01/honey-caramel8-TKBlog.jpg")
bonbon = Category.create("name" => "Bonbons", "photo_url" => "http://cdn.vosgeschocolate.com/images/uploads/peanut_butter_bonbon_L2.jpg")

Chocolatier.delete_all
teuscher = Chocolatier.create("name" => "Teuscher", "logo_url" => "http://www.frenchculturalcenter.org/fccb/assets/Image/teuscher%20chocolates%20of%20switzerland%20jpg.jpg", "origin" => "Zurich, Switzerland", "website_url" => "http://www.teuscher.com/")
vosges = Chocolatier.create("name" => "Vosges Haut-Chocolat", "logo_url" => "http://cdn.vosgeschocolate.com/images/vosges-logo_holiday.gif", "origin" => "Chicago, Illinois, USA", "website_url" => "http://www.vosgeschocolate.com/")
sharffen = Chocolatier.create("name" => "Scharffen Berger Chocolate Maker, Inc.", "logo_url" => "http://www.scharffenberger.com/lib/img/logos/scharffen-berger.png", "origin" => "Berkeley, California, USA", "website_url" => "http://www.scharffenberger.com/")
jacquestorres = Chocolatier.create("name" => "Jacques Torres Chocolate", "logo_url" => "http://www.candyindustry.com/ext/resources/images/February-2013-EVERYDAY/Jacque-Torres-logoHOME.jpeg?1360174266", "origin" => "New York, New York, USA", "website_url" => "http://www.mrchocolate.com/")
normanlove = Chocolatier.create("name" => "Norman Love Confections", "logo_url" => "http://www.normanloveconfections.com/images/theme-normanlove/logo.png", "origin" => "Ft. Myers, Florida, USA", "website_url" => "http://www.normanloveconfections.com/")
valrhona = Chocolatier.create("name" => "Valrhona", "logo_url" => "http://www.valrhona.com/App_Themes/FO/img/logoValrhona.gif", "origin" => "France", "website_url" => "http://www.valrhona.com/accueil.aspx")
godiva = Chocolatier.create("name" => "Godiva Chocolatier", "logo_url" => "http://www.godivachocolates.eu/images/stories/logo.png", "origin" => "Brussels, Belgium", "website_url" => "http://www.godivachocolates.eu/en/godiva-chocolatier-since-1926")
richarddonnelly = Chocolatier.create("name" => "Richard Donnelly Fine Chocolates", "logo_url" => "https://www.donnellychocolates.com/wp-content/themes/chocolate/images/top_title.gif", "origin" => "Santa Cruz, California, USA", "website_url" => "https://www.donnellychocolates.com/")
richart = Chocolatier.create("name" => "Richart", "logo_url" => "https://www.richart-chocolates.com/chocolates/RTUS/theme/images/logo_RICHART.jpeg", "origin" => "Paris, France", "website_url" => "https://www.richart-chocolates.com/chocolates/")
puccini = Chocolatier.create("name" => "Puccini Bomboni", "logo_url" => "http://www.puccinibomboni.com/images/logohome.png", "origin" => "Amsterdam, Netherlands", "website_url" => "http://www.puccinibomboni.com/")

Chocolate.delete_all
ctt = Chocolate.create("name" => "Champagne Truffle", "description" => "Dom Perignon Champagne cream center surrounded by a Dark chocolate Ganache, coated in Milk chocolate and sprinkled with Confectionner's sugar", "photo_url" => "http://cdn1.bigcommerce.com/server4700/018f7/products/759/images/414/Champage_Truffes__91940.1385506230.1280.1280.JPG?c=2", "chocolatier_id" => teuscher.id, "category_id" => truffle.id)
Chocolate.create("name" => "Barcelona Exotic Chocolate Bar", "description" => "Hickory smoked almonds + Fleur de Sel grey sea salt + 45% deep milk chocolate", "photo_url" => "http://search.chow.com/thumbnail/300/0/www.chow.com/assets/2006/12/edib_10241.jpg?q=90", "chocolatier_id" => vosges.id, "type_id" => milk.id,"category_id" => bar.id)
Chocolate.create("name" => "82% Extra Dark Chocolate Bar", "description" => "Rich notes of dried figs and a mild, peppery spiciness", "photo_url" => "http://shop.scharffenberger.com/img/product/sfb-cbdark.jpg", "chocolatier_id" => sharffen.id, "type_id" => dark.id,"category_id" => bar.id)
cherie_oh = Chocolate.create("name" => "Chėrie-Oh", "description" => "America's favorite O's coated with Jacques signature creamy milk chocolate", "photo_url" => "http://www.mrchocolate.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/h/cheerios03.jpg", "chocolatier_id" => jacquestorres.id, "type_id" => milk.id)
cupcake = Chocolate.create("name" => "Vanilla Cupcake", "description" => "Sweet cream and vanilla frosting ganache mixed with tiny cake pieces", "photo_url" => "http://www.normanloveconfections.com/files/1088_White_0000s_0002_33_vanilla_cupcake.jpg", "chocolatier_id" => normanlove.id, "type_id" => white.id, "category_id" => bonbon.id)
Chocolate.create("name" => "Dulcey Crunchy Pearls", "description" => "Toasted puffed cereal wrapped in a Dulcey 32% Blond Chocolate coating (87% White Chocolate)", "photo_url" => "http://www.valrhona-chocolate.com/shop/media/B10840thumb.jpg", "chocolatier_id" => valrhona.id, "type_id" => white.id)
Chocolate.create("name" => "White Crispy Mini Pearls", "description" => "Crunchy biscuit enrobed with white chocolate", "photo_url" => "http://www.godivachocolates.eu/images/stories/products_large/white_crispy_pearls.jpg", "chocolatier_id" => godiva.id, "type_id" => white.id)
Chocolate.create("name" => "Chinese Five Spice", "description" => "Dark chocolate infused with clove, black and white pepper and cinnamon with a top note of anise", "photo_url" => "https://c2.staticflickr.com/6/5292/5457270824_de600cd479_z.jpg", "chocolatier_id" => richarddonnelly.id, "type_id" => dark.id, "category_id" => bar.id)
Chocolate.create("name" => "Raspberry lips", "description" => "An infusion of vanilla from Tahiti, slightly enhanced by delicate peppermint dropped into a 72% Venezuela chocolate with raspberry ganache", "photo_url" => "https://www.richart-chocolates.com/chocolates/image_produit_image_zoom-1320350516181", "chocolatier_id" => richart.id, "type_id" => dark.id, "category_id" => bonbon.id)
Chocolate.create("name" => "Drambuie", "description" => "Chocolate with Drambuie, a blend of aged Scotch whisky, heather honey, spices and herbs", "photo_url" => "http://luxurydoor.com/wp-content/uploads/2013/01/Puccini-Bomboni.jpg", "chocolatier_id" => puccini.id, "category_id" => bonbon.id)

Review.delete_all
Review.create("user_id" => tricia["id"], "chocolate_id" => ctt["id"], "rating" => 5, "comment" => "Well worth the price")
Review.create("user_id" => tricia["id"], "chocolate_id" => cupcake["id"], "rating" => 5, "comment" => "Combines my two favorite things: white chocolate and cupcakes")
Review.create("user_id" => val["id"], "chocolate_id" => cherie_oh["id"], "rating" => 4, "comment" => "The crunch gives it a great texture")
Review.create("user_id" => val["id"], "chocolate_id" => ctt["id"], "rating" => 4, "comment" => "There is a reason this is Teuscher's signature chocolate")
Review.create("user_id" => tricia["id"], "chocolate_id" => cherie_oh["id"], "rating" => 3, "comment" => "I would rather eat cereal")

puts "There are now #{User.count} members, #{Chocolate.count} chocolates, and #{Chocolatier.count} chocolatiers in our Chocolate Shop (and counting!)"

