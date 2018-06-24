# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "mandala art 1", description: "original handpainted art", image_url: "https://mymodernmet.com/wp/wp-content/uploads/2017/12/mandala-art-ana-art-studio-4.jpg", price: 5.0)
Product.create(name: "mandala art 2", description: "original handpainted art", image_url: "https://mymodernmet.com/wp/wp-content/uploads/2017/12/mandala-art-ana-art-studio-4.jpg", price: 5.0)
Order.create(user_id: 1, product_id: 1, total: 5.0)
Order.create(user_id: 1, product_id: 2, total: 5.0)
