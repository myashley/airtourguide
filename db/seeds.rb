# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

languages = [
    {
        name: "WOMENS CLUB C 85 PATENT".capitalize,
        description: "Gloss up your everyday trainer cache with these patent leather Club Cs from Reebok. Their classically comfortable shape and retro labels bring an authentic air to their timeless wearability. The slick finish adds an on-trend lustre to whatever you pair them with.",
        price: 15000
    },
    {
        name: "WOMENS PRESTO FLY".capitalize,
        description: "Inspired by the comfort of a classic T-shirt, Women\'s Nike Presto Fly Shoe elevates a popular runner with modern innovations such as Flyknit construction for a supportive fit and feel.",
        price: 8500
    },
    {
        name: "WOMENS CAMPUS".capitalize,
        description: "Sneakers that never go out of style. The court icon from the \'80s continues its reign, evolving the archival style for the modern streets. From toe to heel, the entire upper of these women\'s shoes is made of butter-soft nubuck and features metallic gold-foil branded accents. Signature 3-Stripes and a smooth rubber cupsole keep the look true to the original icon.",
        price: 15000
    },
    {
        name: "X_PLR".capitalize,
        description: "The minimalist X_PLR from adidas keep the sneaker look sleek and simple. The lightweight, mesh-lined knit upper is accented with nubuck overlays and a contrast saddle that integrates with the speed lacing system..",
        price: 14000
    },
    {
        name: "WOMENS BASKET HEART PATENT".capitalize,
        description: "Way back in 1971, the Puma Basket Heart was the leather answer to the Puma Suede, its clean and simple design propelled this shoe into the Sneaker Hall of Fame. Featuring woven bow laces with the option of satin laces for that exra feminine touch.",
        price: 12000
    },
]

Sneaker.create!(sneakers) { |s| p s.name }