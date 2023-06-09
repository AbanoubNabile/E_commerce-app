class Item {
  String imgPath;
  double price;
  String location;

  Item({required this.imgPath, required this.price, this.location = "Abanoub"});
}

final List<Item> items = [
  Item(price: 12.99, imgPath: "assets/img/1.webp", location: "Abanoub shop"),
  Item(price: 12.99, imgPath: "assets/img/2.webp", location: "Nabil"),
  Item(price: 12.99, imgPath: "assets/img/3.webp"),
  Item(price: 12.99, imgPath: "assets/img/4.webp"),
  Item(price: 12.99, imgPath: "assets/img/5.webp"),
  Item(price: 12.99, imgPath: "assets/img/6.webp"),
  Item(price: 12.99, imgPath: "assets/img/7.webp"),
  Item(price: 12.99, imgPath: "assets/img/8.webp"),
];
