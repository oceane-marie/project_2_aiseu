# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
OrderItem.destroy_all
Order.destroy_all
Item.destroy_all


puts 'Creating iced mochi...'
Item.create!(name: "Choc'chi", description: 'Our delicious mochi filled with our homemade dark chocolate sorbet', temp: 'iced', flavor: 'chocolate', photo:'https://images.unsplash.com/photo-1469428946640-844b286ebf50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')
Item.create!(name: "Mint'chi", description: 'Our delicious mochi filled with our homemade mint ice cream and chocolate chips', temp: 'iced', flavor: 'chocolate', photo:'https://images.unsplash.com/photo-1496041877055-c55fc243fc32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')
Item.create!(name: "Lit'chi", description: 'Our delicious mochi filled with our homemade litchi and rose sorbet', temp: 'iced', flavor: 'fruits', photo:'https://images.unsplash.com/photo-1621693129587-48dd0d0aa740?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80')
Item.create!(name: "Mat'chi", description: 'Our delicious mochi filled with our homemade matcha ice cream', temp: 'iced', flavor: 'tea/coffee', photo: 'https://images.unsplash.com/photo-1515823064-d6e0c04616a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80')
Item.create!(name: "Kop'chi", description: 'Our delicious mochi filled with our homemade coffee ice cream', temp: 'iced', flavor: 'tea/coffee', photo:'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80')
Item.create!(name: "Pi'chi", description: 'Our delicious mochi filled with our homemade pistachio ice cream and roasted pistachio', temp: "iced", flavor: 'nuts', photo: 'https://images.unsplash.com/photo-1502825751399-28baa9b81efe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80')

puts 'Creating classic mochi...'
Item.create!(name: "Pat'chi", description: 'Our delicious mochi filled with our homemade sweet red bean paste', temp: 'classic', flavor: 'nuts', photo:'https://images.unsplash.com/photo-1631148625910-e48b149a64d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1473&q=80')
Item.create!(name: "Sem'chi", description: 'Our delicious mochi filled with our homemade sweet sesame paste', temp: 'classic', flavor: 'nuts', photo:'https://images.unsplash.com/photo-1556157408-ed905925a4cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')
Item.create!(name: "Yu'chi", description: 'Our delicious mochi filled with our homemade yuzu custard', temp: 'classic', flavor: 'fruits', photo:'https://images.unsplash.com/photo-1593005725420-62c0f7f24591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')
Item.create!(name: "Mang'chi", description: 'Our delicious mochi filled with our homemade custard and fresh mango', temp: 'classic', flavor: 'fruits', photo:'https://images.unsplash.com/photo-1604256913753-eef2d1d8ca21?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80')
Item.create!(name: "Chi'go", description: 'Our delicious mochi filled with our homemade custard and a whole strawberry', temp: 'classic', flavor: 'fruits', photo: 'https://images.unsplash.com/photo-1624160719183-b3b9010a77c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')
Item.create!(name: "Choco'chi", description: 'Our delicious mochi filled with our homemade chocolate ganache', temp: 'classic', flavor: 'chocolate', photo:'https://images.unsplash.com/photo-1582493255270-b3844e2a63c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1541&q=80')

puts 'Finished'
