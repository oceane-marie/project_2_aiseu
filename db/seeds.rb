# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Item.destroy_all

puts 'Creating iced mochi...'
Item.create!(name: "Choc'chi", description: 'Our delicious mochi filled with our homemade dark chocolate sorbet', temp: 'iced', flavor: 'chocolate')
Item.create!(name: "Mint'chi", description: 'Our delicious mochi filled with our homemade mint ice cream and chocolate chips', temp: 'iced', flavor: 'chocolate')
Item.create!(name: "Lit'chi", description: 'Our delicious mochi filled with our homemade litchi and rose sorbet', temp: 'iced', flavor: 'fruit')
Item.create!(name: "Mat'chi", description: 'Our delicious mochi filled with our homemade matcha ice cream', temp: 'iced', flavor: 'tea', photo: 'https://images.pexels.com/photos/8963453/pexels-photo-8963453.jpeg')
Item.create!(name: "Kop'chi", description: 'Our delicious mochi filled with our homemade coffee ice cream', temp: 'iced', flavor: 'coffee')
Item.create!(name: "Pi'chi", description: 'Our delicious mochi filled with our homemade pistachio ice cream and roasted pistachio', temp: "iced", flavor: 'nut')

puts 'Creating classic mochi...'
Item.create!(name: "Pat'chi", description: 'Our delicious mochi filled with our homemade sweet red bean paste', temp: 'classic', flavor: 'nut')
Item.create!(name: "Sem'chi", description: 'Our delicious mochi filled with our homemade sweet sesame paste', temp: 'classic', flavor: 'nut')
Item.create!(name: "Yu'chi", description: 'Our delicious mochi filled with our homemade yuzu custard', temp: 'classic', flavor: 'fruit')
Item.create!(name: "Mang'chi", description: 'Our delicious mochi filled with our homemade custard and fresh mango', temp: 'classic', flavor: 'fruit')
Item.create!(name: "Chi'go", description: 'Our delicious mochi filled with our homemade custard and a whole strawberry', temp: 'classic', flavor: 'fruit', photo: 'https://images.pexels.com/photos/10676685/pexels-photo-10676685.jpeg')
Item.create!(name: "Mang'chi", description: 'Our delicious mochi filled with our homemade chocolate ganache', temp: 'classic', flavor: 'chocolate')

puts 'Finished'
