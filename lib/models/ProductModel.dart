class Product {
  int id;
  String name;
  String description;
  String image;
  double price;
  int rating;
  List<String> colors;

  Product({
    this.id,
    this.name,
    this.description,
    this.image,
    this.price,
    this.rating,
    this.colors,
  });
}

// demo products

List<Product> demoProducts = [
  Product(
    id: 1,
    name: 'Lounge Chair',
    description: 'The European languages are members of the same family. Their separate existence is a myth.',
    colors: ['000000', '25A18E', 'FF8353', 'EBEBEB'],
    rating: 5,
    image: 'assets/images/item1.png',
    price: 421.51
  ),
  Product(
    id: 2,
    name: 'Wing Chair',
    description: 'The European languages are members of the same family. Their separate existence is a myth.',
    colors: ['000000', '25A18E', 'FF8353', 'EBEBEB'],
    rating: 4,
    image: 'assets/images/item2.png',
    price: 56.50
  ),
];