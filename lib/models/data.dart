class Product {
  int id;
  String name;
  String category;
  String price;
  String image;
  String description;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.image,
    required this.description,
  });
}

final List<Product> products = [
  Product(
    id: 1,
    name: "Wireless Headphone",
    category: "Electronics",
    price: "750000",
    image: "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpods-max-silver/1.webp",
    description: "Wireless headphone dengan kualitas suara jernih dan baterai tahan lama.",
  ),

  Product(
    id: 2,
    name: "Smart Watch",
    category: "Electronics",
    price: "1200000",
    image: "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-watch-series-4-gold/1.webp",
    description:
        "Smart watch dengan fitur kesehatan, notifikasi, dan desain elegan.",
  ),

  Product(
    id: 3,
    name: "iPhone X",
    category: "Electronics",
    price: "3500000",
    image:
        "https://cdn.dummyjson.com/product-images/smartphones/iphone-x/1.webp",
    description: "iPhone X dengan layar OLED dan desain minimalis.",
  ),

  Product(
    id: 4,
    name: "Monopod",
    category: "Electronics",
    price: "950000",
    image: "https://cdn.dummyjson.com/product-images/mobile-accessories/monopod/1.webp",
    description: "Monopod dengan desain ringkas dan bahan berkualitas tinggi.",
  ),
];
