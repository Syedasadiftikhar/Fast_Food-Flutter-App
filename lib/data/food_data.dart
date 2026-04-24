import '../models/food_item.dart';

const String _pizzaUrl =
    'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format&fit=crop&q=60';
const String _burgerUrl =
    'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format&fit=crop&q=60';
const String _shawarmaUrl =
    'https://images.unsplash.com/photo-1628840042765-356cda07504e?w=500&auto=format&fit=crop&q=60';
const String _broastUrl =
    'https://images.unsplash.com/photo-1626645738196-c2a7c87a8f58?w=500&auto=format&fit=crop&q=60';
const String _friesUrl =
    'https://images.unsplash.com/photo-1576107232684-1279f3908594?w=500&auto=format&fit=crop&q=60';
const String _pastaUrl =
    'https://images.unsplash.com/photo-1621996316564-6fa3fbff3fb0?w=500&auto=format&fit=crop&q=60';

final List<FoodCategory> foodCategories = [
  FoodCategory(
    name: 'Pizzas',
    items: [
      const FoodItem(
        name: 'Chicken Tikka',
        description: 'Chicken Tikka, Cheese and Onion',
        sizePrices: {'S': 590, 'M': 1040, 'L': 1450, 'XL': 1850},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Chicken Fajita',
        description: 'Fajita Chicken, Onion, Cheese and Capsicum',
        sizePrices: {'S': 590, 'M': 1040, 'L': 1450, 'XL': 1850},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Bar. B.Q Special',
        description:
            'B.bq Chicken, Onion, Cheese, Capsicum, Black Olive and Bar.B.Q Sauce',
        sizePrices: {'S': 590, 'M': 1040, 'L': 1450, 'XL': 1850},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Hot N Spice',
        description: 'Spicy Chicken, Green Chilli, Onion, Jalapeno',
        sizePrices: {'S': 590, 'M': 1040, 'L': 1450, 'XL': 1850},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Veggie Lover',
        description: 'Capsicum, Onion, Corn, Masroom, Tomato',
        sizePrices: {'S': 590, 'M': 1040, 'L': 1450, 'XL': 1850},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Cheese Lover',
        description: 'Mozzarella Cheese, Orignal Tomato Paste',
        sizePrices: {'S': 590, 'M': 1040, 'L': 1450, 'XL': 1850},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Pepperoni Pizza',
        description: 'Beef Pepperoni, Cheese',
        sizePrices: {'S': 590, 'M': 1040, 'L': 1450, 'XL': 1850},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Chicken Supreme',
        description:
            'Chicken Tikka, Chicken Sasauge, Cheese Black Olive, Capsicum, Mushrooms, Onion',
        sizePrices: {'S': 680, 'M': 1140, 'L': 1550, 'XL': 1950},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Mughlai Tikka',
        description: 'Chicken, Tikka Cubes, Onion, Capsicum and Tomatoes',
        sizePrices: {'S': 680, 'M': 1140, 'L': 1550, 'XL': 1950},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Malai Boti',
        description:
            'Special Malai Sauce, Malai Boti, Chicken Capsicum, Cream and Olive',
        sizePrices: {'S': 680, 'M': 1140, 'L': 1550, 'XL': 1950},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Behari Kabab Pizza',
        description: 'Seekh Kabab, Onion, Capsicum, Olive Mashroom and Cheese.',
        sizePrices: {'S': 750, 'M': 1200, 'L': 1640, 'XL': 2080},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Crown Crust',
        description: 'Chicken Tikka, Olives, Onion, Capsicum and Special Sauce',
        sizePrices: {'S': 750, 'M': 1200, 'L': 1640, 'XL': 2080},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Chezify Special',
        description:
            'Kabab, Onion, Olives, Mastrooms, Jalapeno, Capsicum and Cheese.',
        sizePrices: {'S': 750, 'M': 1200, 'L': 1640, 'XL': 2080},
        imageUrl: _pizzaUrl,
      ),
      const FoodItem(
        name: 'Stuff Crust Pizza',
        description:
            'Special Chicken, Olives and The Crust Filled with Kabab and Special Sauce',
        sizePrices: {'S': 750, 'M': 1200, 'L': 1640, 'XL': 2080},
        imageUrl: _pizzaUrl,
      ),
    ],
  ),
  FoodCategory(
    name: 'Burgers',
    items: [
      const FoodItem(
        name: 'Chicken Patty Burger',
        price: 350,
        imageUrl: _burgerUrl,
      ),
      const FoodItem(name: 'Zinger Burger', price: 400, imageUrl: _burgerUrl),
      const FoodItem(
        name: 'Zinger With Fries',
        price: 470,
        imageUrl: _burgerUrl,
      ),
      const FoodItem(
        name: 'Zinger Cheese Burger',
        price: 450,
        imageUrl: _burgerUrl,
      ),
      const FoodItem(
        name: 'Chezify Special Burger',
        price: 500,
        imageUrl: _burgerUrl,
      ),
      const FoodItem(name: 'Beef Burger', price: 580, imageUrl: _burgerUrl),
      const FoodItem(name: 'Fish Burger', price: 680, imageUrl: _burgerUrl),
      const FoodItem(name: 'Mighty Zinger', price: 690, imageUrl: _burgerUrl),
      const FoodItem(
        name: 'Double Patty Beef Burger',
        price: 930,
        imageUrl: _burgerUrl,
      ),
    ],
  ),
  FoodCategory(
    name: 'Shawarma',
    items: [
      const FoodItem(
        name: 'Chicken Shawarma',
        price: 220,
        imageUrl: _shawarmaUrl,
      ),
      const FoodItem(
        name: 'Chicken Cheese Shawarma',
        price: 270,
        imageUrl: _shawarmaUrl,
      ),
      const FoodItem(
        name: 'Zinger Shawarma',
        price: 290,
        imageUrl: _shawarmaUrl,
      ),
      const FoodItem(
        name: 'Special Chezify Shawarma',
        price: 320,
        imageUrl: _shawarmaUrl,
      ),
      const FoodItem(
        name: 'Zinger Cheese Shawarma',
        price: 340,
        imageUrl: _shawarmaUrl,
      ),
      const FoodItem(
        name: 'Plater Shawarma',
        price: 450,
        imageUrl: _shawarmaUrl,
      ),
      const FoodItem(
        name: 'Plater Shawarma With Cheese',
        price: 500,
        imageUrl: _shawarmaUrl,
      ),
    ],
  ),
  FoodCategory(
    name: 'Crispy Broast\n& Fish',
    items: [
      const FoodItem(name: 'Nuggets (6) Pcs', price: 380, imageUrl: _broastUrl),
      const FoodItem(name: 'Wings (6) Pcs', price: 420, imageUrl: _broastUrl),
      const FoodItem(name: 'Qtr Broast', price: 420, imageUrl: _broastUrl),
      const FoodItem(name: 'Wings (10) Pcs', price: 620, imageUrl: _broastUrl),
      const FoodItem(name: 'Half Broast', price: 840, imageUrl: _broastUrl),
      const FoodItem(
        name: 'Finger Fish (6) Pcs Fries and Dip',
        price: 880,
        imageUrl: _broastUrl,
      ),
      const FoodItem(name: 'Full Broast', price: 1680, imageUrl: _broastUrl),
    ],
  ),
  FoodCategory(
    name: 'Fries & Pasta',
    items: [
      const FoodItem(name: 'Dip', price: 60, imageUrl: _pastaUrl),
      const FoodItem(
        name: 'French Fries Regular',
        price: 270,
        imageUrl: _friesUrl,
      ),
      const FoodItem(
        name: 'French Fries Mayo Regular',
        price: 320,
        imageUrl: _friesUrl,
      ),
      const FoodItem(
        name: 'Bar. Bq Fries Regular',
        price: 320,
        imageUrl: _friesUrl,
      ),
      const FoodItem(
        name: 'Large French Fries',
        price: 380,
        imageUrl: _friesUrl,
      ),
      const FoodItem(
        name: 'Large Mayo French Fries',
        price: 430,
        imageUrl: _friesUrl,
      ),
      const FoodItem(
        name: 'Large Bar B.Q French Fries',
        price: 430,
        imageUrl: _friesUrl,
      ),
      const FoodItem(name: 'Loaded Fries', price: 640, imageUrl: _friesUrl),
      const FoodItem(name: 'Penne Pasta', price: 900, imageUrl: _pastaUrl),
      const FoodItem(name: 'Alfredo Pasta', price: 900, imageUrl: _pastaUrl),
    ],
  ),
];
