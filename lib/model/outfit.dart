import 'package:uniqloshop/model/price.dart';

class Outfit {
  String OutfitLabel;
  String OutfitUrl;
  String OutfitDescrioption;
  int pricePerItem;
  List<Price> price = [];

  Outfit(this.OutfitLabel, this.OutfitUrl,this.OutfitDescrioption, this.pricePerItem, this.price);

  static List<Outfit> samples = [
    Outfit('Black Shirt' ,'assets/images/shirt.webp','A comfortable black shirt', 390,
    [
      Price(name: 'Small', quantity: 1, unit: 'pcs'),
      Price(name: 'Medium', quantity: 1, unit: 'pcs'),
      Price(name: 'Large', quantity: 1, unit: 'pcs'),
    ]),
    Outfit('Navy Shorts' ,'assets/images/shorts.webp','Stylish navy shorts', 290,
    [
      Price(name: 'Small', quantity: 1, unit: 'pcs'),
      Price(name: 'Medium', quantity: 1, unit: 'pcs'),
      Price(name: 'Large', quantity: 1, unit: 'pcs'),
    ]),
    Outfit('Varsity Jacket','assets/images/jacket.jpg','Classic varsity jacket', 490,
    [
      Price(name: 'Small', quantity: 1, unit: 'pcs'),
      Price(name: 'Medium', quantity: 1, unit: 'pcs'),
      Price(name: 'Large', quantity: 1, unit: 'pcs'),
    ]),
    Outfit('Navy Joggers','assets/images/pants.png','Comfortable navy joggers', 390,
    [
      Price(name: 'Small', quantity: 1, unit: 'pcs'),
      Price(name: 'Medium', quantity: 1, unit: 'pcs'),
      Price(name: 'Large', quantity: 1, unit: 'pcs'),
    ]),
  ];
}