class ProductModel {
  String name;
  int price;
  int quantity;
  String image;
  String color;
  String description;

  ProductModel({
    required this.name,
    required this.price,
    required this.quantity,
    required this.image,
    required this.color,
    required this.description,
  });
}

List<ProductModel> products = [
  ProductModel(
    name: 'iPhone 17',
    price: 10,
    quantity: 10,
    image: "assets/iphone17.png",
    color: "Gold",
    description: "Good Conditions",
  ),
  ProductModel(
    name: 'iPhone X',
    price: 5,
    quantity: 10,
    image: "assets/iphoneX.png",
    color: "White",
    description: "White Color",
  ),
];

void main() {
  // List number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(products[0].color);
}
