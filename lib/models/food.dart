import 'package:speakcheesy_app/models/option.dart';

class Food {
  String name;
  String description;
  String price;
  var options;
  String imagePath;

  Food({
    required this.name,
    required this.description,
    required this.price,
    this.options = '',
    required this.imagePath,
  });

  String get _name => name;
  String get _description => description;
  String get _price => price;
  Option get _options => options;
  String get _imagePath => imagePath;
}
