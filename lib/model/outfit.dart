class Outfit {
  String OutfitLabel;
  String OutfitUrl;

  Outfit(this.OutfitLabel, this.OutfitUrl);

  static List<Outfit> samples = [
    Outfit('Black Shirt' ,'assets/images/shirt.webp'),
    Outfit('Navy Shorts' ,'assets/images/shorts.webp'),
    Outfit('Varsity Jacket','assets/images/jacket.jpg'),
    Outfit('Navy Joggers','assets/images/pants.png'),
  ];
}