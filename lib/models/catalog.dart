class CatalogModel{
  static final items=[Item(
  id: 1,
  name: "iPhone 14 pro max",
  desc: "Apple i phone of best quality",
  price:143897,
  color: "#33505a",
  image:"https://images.samsung.com/is/image/samsung/assets/in/explore/brand/5-best-android-mobile-phones-2022-in-india/banner-mobile-720x761-080422.jpg?",


)
];

}


class Item{
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id,required this.name, required this.desc, required this.price, required this.color, required this.image});

}
final products=[Item(
  id: 1,
  name: "iPhone pro max",
  desc: "Apple i phone of best quality",
  price: 143897,
  color: "#33505a",
  image:"https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-max-1.jpg",


)
];