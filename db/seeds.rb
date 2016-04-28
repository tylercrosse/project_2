Style.destroy_all
Outfit.destroy_all
Tagging.destroy_all
Item.destroy_all

Item.create!(description:"Convertible Pantsuit", image: open("http://cdn.shopify.com/s/files/1/0207/1406/products/DSC_0722-2.jpg?v=1461260821"), value:"98.00", brand:"Seamly", size:"S/M", composition:"Rayon/Lycra", garment_care:"Machine wash")
Item.create!(description:"The Everlane Anorak", image:open("https://everlane.imgix.net/i/f1b84318_61b6.jpg?dpr=1&q=65?w=442&h=442&q=65&dpr=1"), value:"98.00", brand:"Everlane", size:"S", composition:"100% water-resistant polyester", garment_care:"Machine wash cold, tumble dry low")
Item.create!(description: "Linen Jogger Pant", image:open("http://athleta.gap.com/webcontent/0009/594/940/cn9594940.jpg"), value:"79.00", brand:"Athleta", size: "4", composition:"Linen", garment_care:"Machine wash")
Item.create!(description:"DOE Parka", image:open("http://cdn.shopify.com/s/files/1/1038/9388/products/Doe_Female_Parka_large.png?v=1459463423"), value:"675.00", brand:"Mammoth Outerwear", size:"S", composition:"PolyCotton", garment_care:"Dry clean")
Item.create!(description:"White Circle Shirt", image:open("http://static1.squarespace.com/static/56338447e4b0bd1d35bf1aa3/56339741e4b0a850f6952461/569e832ed8af102cbcb0cb8a/1453228848834/shirt2edit.jpg?format=300w"), brand:"Miakoda", value:"68.00", size:"OS", composition:"Organic Bamboo & Cotton Blend", garment_care:"Machine wash cold, tumble dry medium, cool iron if needed, do not bleach")
Item.create!(description:"Vegan Atwood Heel", image:open("http://www.mooshoes.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/M/A/MAB-blk_37817.jpg"), brand:"Novacas", value:"165.00", size:"8", composition:"Microfiber faux leather upper/Rubber sole", garment_care:"Spot clean")
Item.create!(description:"Mabel Boot", image:open("https://img1.fpassets.com/is/image/FreePeople/36600716_001_0?$product$&wid=602"), brand:"Faryl Robin x Free People", value:"128", size:"8", composition:"Vegan Suede/Vegan Pony/Rubber sole", garment_care:"Spot clean")
Item.create!(description:"The Cotton V", image:open("http://justjilly.com/wp-content/uploads/2013/10/everlane-white-tee.jpg"), brand:"Everlane", value:"20", size:"XS", composition:"100% Cotton", garment_care:"Machine wash cold, tumble dry low")
Item.create!(description:"Silver Bullet Jean", image:open("http://static1.squarespace.com/static/554ea111e4b01e5092f4abad/56f31f4aac962ca4cd522130/56f7567740261dc1397ccd1f/1459127833138/IMG_9548_1024x1024.jpg?format=750w"), brand:"Eve Denim", value:"295", size:"27", composition:"100% Cotton", garment_care:"Wash inside out in cold water, Tumble dry low")
Item.create!(description:"Sunset Eco-Mock Twist Crew Sweatshirt", image:open("http://media.alternativeapparel.com/media/catalog/product/0/9/09833EYMONIKL0.jpg"), brand:"Alternative Apparel", value:"54", size:"M", composition:"50% Cotton 50% Recycled Polyester", garment_care:"Machine Wash")
Item.create!(description:"Cool Cut Loose Legging", image:open("http://static1.squarespace.com/static/56338447e4b0bd1d35bf1aa3/56339741e4b0a850f6952461/56ff1e12d51cd41181787034/1459559955279/legging-black1_large.jpg?format=300w"), brand:"Joah Brown", value:"58", size:"S/M", composition:"95% Modal, 5% Spandex", garment_care:"Hand wash cold")
Item.create!(description:"Epoch Necklace", image:open("https://cdn.shopify.com/s/files/1/0393/0757/products/epoch_1_1024x1024.jpg?v=1455150077"), brand:"Native Clutter", value:"40", size:"OS", composition:"Brass", garment_care:"N/A")
Item.create!(description:"Tank Dress", image:open("http://cdn.shopify.com/s/files/1/0234/8105/products/1457054589JE-RADA-BONE-720x722-FRONT_1024x1024.png?v=1461537529"), brand:"Hoi Bo", value:"88", size:"S", composition:"70% Bamboo + Cotton Jersey, Linen loop detail", garment_care:"Hand wash")
Item.create!(description:"V Neck Pocket Tee", image:open("http://cdn.shopify.com/s/files/1/0261/8853/products/pockettee-olive_large.jpg?v=1458496825"), brand:"Joah Brown", value:"46", size:"OS", composition:"95% Modal/ 5% Spandex", garment_care:"Hand Wash Cold")
Item.create!(description:"Stadium Harem Pants", image:open("http://cdn.shopify.com/s/files/1/0261/8853/products/223pan_large.jpg?v=1458682709"), brand:"Joah Brown", value:"118", size:"S/M", composition:"100% Cotton", garment_care:"Machine Wash Cold/Lay Flat to Dry")

  # Item.create!(description:"", image:"", brand:"", value:"", size:"", composition:"", garment_care:"")
  # {description:"", image:"", brand:"", value:"", size:"", composition:"", garment_care:"")
