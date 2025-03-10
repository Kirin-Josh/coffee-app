final coffeeCategories = [
  'All Coffee',
  'Machiato',
  'Late',
  'Americano',
  'Capuccino',
];

class Coffee {
  final String image;
  final String name;
  final String type;
  final double rate;
  final int review;
  final String description;
  final double price;
  Coffee({
    required this.image,
    required this.name,
    required this.type,
    required this.rate,
    required this.review,
    required this.description,
    required this.price,
  });
}

final listOfCoffee = [
  Coffee(
    image: 'assets/images/coffee1.png',
    name: 'Caffee Mocha',
    type: 'Deep Foam',
    rate: 4.8,
    review: 230,
    description:
        "A delightful mix of espresso, steamed milk, and chocolate syrup, creating a harmonious blend of rich coffee and sweet chocolate flavors. Its often topped with whipped cream or cocoa powder, making it a favorite for those who love a dessert-like coffee experience.",
    price: 4.53,
  ),
  Coffee(
    image: 'assets/images/coffee2.png',
    name: 'Mocha Fusi',
    type: 'Ice/Hot',
    rate: 4.8,
    review: 170,
    description:
        'A creative twist on the classic mocha, blending espresso, milk, and chocolate with unique fusion flavors or toppings. It’s a versatile beverage that often incorporates ingredients like caramel, nuts, or whipped cream, offering a customized and indulgent coffee treat.',
    price: 8.53,
  ),
  Coffee(
    image: 'assets/images/coffee3.png',
    name: 'Irish Coffee',
    type: 'Popular',
    rate: 4.8,
    review: 200,
    description:
        'A warm, indulgent drink combining hot coffee, Irish whiskey, sugar, and a topping of lightly whipped cream. This classic cocktail is both a dessert and a drink, perfect for cozy evenings or special occasions, delivering a blend of bold coffee and smooth whiskey flavors.',
    price: 5.53,
  ),
  Coffee(
    image: 'assets/images/coffee4.png',
    name: 'Affogato',
    type: 'Creamy',
    rate: 4.8,
    review: 100,
    description:
        'A delightful Italian dessert-coffee hybrid, the affogato consists of a scoop of creamy vanilla gelato or ice cream “drowned” with a shot of hot espresso. The contrast of hot and cold creates a rich, velvety treat that’s perfect as a dessert or a sweet pick-me-up.',
    price: 5.53,
  ),
  Coffee(
    image: 'assets/images/coffee5.png',
    name: 'Affogato',
    type: 'Creamy',
    rate: 4.8,
    review: 100,
    description:
        'A delightful Italian dessert-coffee hybrid, the affogato consists of a scoop of creamy vanilla gelato or ice cream “drowned” with a shot of hot espresso. The contrast of hot and cold creates a rich, velvety treat that’s perfect as a dessert or a sweet pick-me-up.',
    price: 5.53,
  ),
];
