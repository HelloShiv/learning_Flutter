class CatalogModel {
  static final items = [
  Item(
      id: 1,
      name: "iphone12",
      desc: "Apple iphone 12 generation",
      price: 999,
      color: "#33505a",
      image:
          "https://i.pinimg.com/736x/5b/95/b0/5b95b05d61d9d6c2e055f33b31c1d16d.jpg")
];

}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
