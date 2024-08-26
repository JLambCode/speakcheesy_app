class Option {
  String name;
  String price;

  Option({
    required this.name,
    required this.price,
  });

  String get _name => name;
  String get _price => price;
}
