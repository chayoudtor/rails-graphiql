# Brand seed
Brand.destroy_all
Brand.create(name: "Toyota", amount: 5)
Brand.create(name: "Honda", amount: 5)
Brand.create(name: "Mazda", amount: 5)
Brand.create(name: "Nissan", amount: 5)
Brand.create(name: "Mitsubishi", amount: 5)

# Product seed
Product.destroy_all
Product.create(name: "Vios", description: "Car from Toyota", amount: 5)
Product.create(name: "Yaris", description: "Car from Toyota", amount: 5)
Product.create(name: "City", description: "Car from Honda", amount: 5)
Product.create(name: "Jazz", description: "Car from Honda", amount: 5)
Product.create(name: "Mazda2", description: "Car from Mazda", amount: 5)
Product.create(name: "Mazda3", description: "Car from Mazda", amount: 5)
Product.create(name: "Amera", description: "Car from Nissan", amount: 5)
Product.create(name: "Amera2", description: "Car from Nissan", amount: 5)

# Orders seed
Order.destroy_all
Order.create(name: "example orders 1", product: "Vios")
Order.create(name: "example orders 2", product: "Yaris")
Order.create(name: "example orders 3", product: "City")
Order.create(name: "example orders 4", product: "Jazz")
Order.create(name: "example orders 5", product: "Mazda2")

# Links seed
Link.destroy_all
Link.create(url: "toyota.com", description: "Automation site.")
Link.create(url: "honda.com", description: "Automation site.")
Link.create(url: "mazda.com", description: "Automation site.")
Link.create(url: "nissan.com", description: "Automation site.")
Link.create(url: "mitsubishi.com", description: "Automation site.")