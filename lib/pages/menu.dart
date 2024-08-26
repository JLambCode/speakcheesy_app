import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speakcheesy_app/models/food.dart';
import 'package:speakcheesy_app/models/option.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    Food(
        name: 'The Hotsy Totsy',
        description:
            'Classic Buffalo Chicken Dip smothered in melted sharp cheddar cheese on Texas Toast. Served with a side of our homemade ranch dressing.',
        price: '8',
        imagePath: 'lib/images/hotsytotsy.png'),
    Food(
        name: 'The Dizzy Dame',
        description:
            'Layers of garden fresh sweet basil, heirloom tomatoes, and melted Mozzarella cheese on a Parmesan crusted Sourdough. Topped with a Balsamic Glaze.',
        price: '10',
        imagePath: 'lib/images/dizzydame.png'),
    Food(
        name: 'The Blind Pig',
        description:
            'Pork BBQ served between layers of melted Monterey jack cheese on Texas Toast. Served with a BBQ/Ranch dipping sauce.',
        price: '10',
        imagePath: 'lib/images/blindpig.png'),
    Food(
        name: 'The Sinker',
        description:
            'A glazed donut filled with ooey gooey cheddar cheese and bacon.',
        price: '7',
        imagePath: 'lib/images/sinker.png'),
    Food(
        name: 'The Bees Knees',
        description:
            'Honey ham topped with apricot jam, and a rich Havarti cheese on honey wheat bread.',
        price: '8',
        options: Option(name: 'Bacon', price: '1.50'),
        imagePath: 'lib/images/beesknees.png'),
    Food(
        name: 'The Big Cheese',
        description:
            'Simple and Cheesy! American, Cheddar, and Monterey Jack melted on a buttered sourdough. Served with our tangy tomato soup dip.',
        price: '6',
        imagePath: 'lib/images/bigcheese.png'),
    Food(
        name: 'Thompson Hep Cat',
        description:
            'Filled with a ranch cream cheese, pickles, and thick cut bacon on Texas toast. Served with a ranch dipping sauce.',
        price: '10',
        imagePath: 'lib/images/hepcat.png'),
    Food(
        name: 'The Lounge Lizard',
        description:
            'A jalapeno popper inspired grilled cheese sandwich, filled with a spicy cream cheese spread, jalapenos, and pepper-jack cheese. Served with your choice of ranch or raspberry jam for dipping.',
        price: '8',
        options: Option(name: 'Bacon', price: '2'),
        imagePath: 'lib/images/loungelizard.png'),
    Food(
        name: 'The Newsie',
        description:
            "The Newsie is our kid's meal option. It comes with an American cheese grilled cheese, choice of Lays potato chips or applesauce, and a juice box.",
        price: '6',
        imagePath: 'lib/images/newsie.png')
  ];

  List sidesMenu = [
    Food(
        name: 'Lemon Basil Pasta Salad',
        description:
            'Light and refreshing penne pasta topped with our in-house lemon vinaigrette, seasoning blend, basil, and fresh parmesan.',
        price: '2',
        imagePath: 'lib/images/pastasalad.png'),
    Food(
        name: 'Deep River Kettle Chips',
        description:
            'No artificial flavors, colors, or preservatives, certified Gluten-Free; Non-GMO Ingredients; produced in a nut-free facility. Mesquite BBQ Spicy Pickle Black Truffle Zesty Jalapeno Black Pepper/Sea Salt',
        price: '2',
        imagePath: 'lib/images/chips.png'),
    Food(
        name: 'Tomato Soup',
        description:
            'Our smooth as silk tomato soup is made fresh daily with our secret seasoning. It pairs perfectly with any of our gourmet sandwiches.',
        price: '2',
        imagePath: 'lib/images/tomatosoup.png')
  ];

  List dessertsMenu = [
    Food(
        name: 'Cheesecake',
        description:
            'Decadent New York Style Cheesecake with your choice of blackberry sauce or chocolate.',
        price: '5',
        imagePath: 'lib/images/cheesecake.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "Mains",
            style: GoogleFonts.poiretOne(
              fontWeight: FontWeight.bold,
              color: Colors.amber.shade600,
              fontSize: 48,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SizedBox(
            height: 650,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodMenu.length,
                itemBuilder: (context, index) =>
                    FoodTile(food: foodMenu[index])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "Sides",
            style: GoogleFonts.poiretOne(
              fontWeight: FontWeight.bold,
              color: Colors.amber.shade600,
              fontSize: 48,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SizedBox(
            height: 700,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sidesMenu.length,
                itemBuilder: (context, index) =>
                    FoodTile(food: sidesMenu[index])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "Desserts",
            style: GoogleFonts.poiretOne(
              fontWeight: FontWeight.bold,
              color: Colors.amber.shade600,
              fontSize: 48,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SizedBox(
            height: 700,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dessertsMenu.length,
                itemBuilder: (context, index) =>
                    FoodTile(food: dessertsMenu[index])),
          ),
        ),
      ]),
    );
  }
}
