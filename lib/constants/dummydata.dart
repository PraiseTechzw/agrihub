class Product {
  final String imageUrl;
  final String name;
  final double price;
  final double rating;
  final int reviews;
  final String description;
  final String location;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.description,
    required this.location,
  });
}

List<Product> products = [
  Product(
    imageUrl: 'assets/images/product.png',
    name: 'Fresh Madomasi',
    price: 4.00,
    rating: 4.0,
    reviews: 200,
    description:
        'Tomatoes are a vibrant red, juicy fruit commonly used in a variety of culinary dishes, from fresh salads to hearty sauces. Known for their rich flavor and high nutritional content, they are an essential ingredient in kitchens worldwide. Each tomato is carefully selected to ensure freshness and quality, providing the perfect balance of sweetness and acidity.',
    location: 'Kararimba - Chegutu Farm',
  ),
  Product(
    imageUrl: 'assets/image.png',
    name: 'Broiler Chickens',
    price: 6.00,
    rating: 4.0,
    reviews: 150,
    description:
        'Broiler chickens are raised specifically for meat production. They are known for their tender, juicy flesh and are a popular choice for various dishes worldwide. Our chickens are free-range, ensuring a higher quality and more natural flavor.',
    location: 'Kararimba - Chegutu Farm',
  ),
  Product(
    imageUrl: 'assets/images/potatoes.png',
    name: 'Fresh Potatoes',
    price: 5.00,
    rating: 4.0,
    reviews: 180,
    description:
        'Potatoes are a versatile staple food in many diets. They can be boiled, baked, fried, or mashed and are a good source of vitamins and minerals. Our potatoes are grown in rich, fertile soil, ensuring a hearty, nutritious addition to any meal.',
    location: 'Kararimba - Chegutu Farm',
  ),
  Product(
    imageUrl: 'assets/images/mushroom.png',
    name: 'Fresh Oyster Mushroom',
    price: 2.00,
    rating: 4.0,
    reviews: 100,
    description:
        'Oyster mushrooms are delicate and flavorful, often used in a variety of dishes, including soups, stir-fries, and salads. They are low in calories and high in protein and fiber, making them a healthy addition to any diet.',
    location: 'Kararimba - Chegutu Farm',
  ),
  // Add more products as needed
];
