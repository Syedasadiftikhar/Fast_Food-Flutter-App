import '../models/deal.dart';

const String _pizzaUrl =
    'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format&fit=crop&q=60';
const String _burgerUrl =
    'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format&fit=crop&q=60';
const String _shawarmaUrl =
    'https://images.unsplash.com/photo-1628840042765-356cda07504e?w=500&auto=format&fit=crop&q=60';

final List<Deal> appDeals = [
  const Deal(
    title: 'Sole Deal',
    price: 790,
    items: ['Small Pizza', 'Chicken Shawarama', 'Reg Cold Drink'],
    imageUrl: _pizzaUrl,
    tag: 'Popular',
  ),
  const Deal(
    title: 'Burger Deal',
    price: 880,
    items: ['2 Zinger Burger', 'Fries', 'Reg Cold Drink'],
    imageUrl: _burgerUrl,
  ),
  const Deal(
    title: 'Duo Deal',
    price: 1480,
    items: [
      'Small Pizza',
      'Qtr Broast',
      '1 Chicken Shawarma',
      'Regular Fries',
      '500 ML Cold Drink',
    ],
    imageUrl: _pizzaUrl,
  ),
  const Deal(
    title: 'Trio Deal',
    price: 2320,
    items: [
      'Medium Pizza',
      '3 Pcs Chicken Broast',
      '2 Chicken Shawarma',
      'Regular Fries',
      '1 Litter Cold Drink',
    ],
    imageUrl: _pizzaUrl,
  ),
  const Deal(
    title: 'Shawarma Deal',
    price: 1150,
    items: ['5 Chicken Shawarma', '1.5 Drink'],
    imageUrl: _shawarmaUrl,
  ),
  const Deal(
    title: 'Student Deal',
    price: 2400,
    items: ['XL Large Pizza', '3 Chicken Shawarma', '1 Litter Drink'],
    imageUrl: _pizzaUrl,
  ),
  const Deal(
    title: 'Super Deal',
    price: 2790,
    items: ['4 Zinger Burger', 'Large Pizza', '1.5 Litter Drink'],
    imageUrl: _burgerUrl,
    tag: 'Best Value',
  ),
  const Deal(
    title: 'Pizza Deal',
    price: 2470,
    items: ['2 Medium Pizza', '1 Small Pizza', '1 Litter Drink'],
    imageUrl: _pizzaUrl,
  ),
  const Deal(
    title: 'Family Deal',
    price: 3250,
    items: [
      'Large Pizza',
      'Half Broast',
      '2 Zinger Burger',
      'Larger Fries',
      '1.5 Cold Drink',
    ],
    imageUrl: _pizzaUrl,
  ),
  const Deal(
    title: 'Birthday Treat',
    price: 4990,
    items: [
      '1 Large Pizza',
      '1 Extra Large Pizza',
      '2 Zinger Burger',
      'Large Fries',
      'Half Broast',
      '1.5 Cold Drink',
    ],
    imageUrl: _pizzaUrl,
  ),
  const Deal(
    title: 'Pizza Party',
    price: 2790,
    items: ['2 Large Pizza', '1.5 Drink'],
    imageUrl: _pizzaUrl,
  ),
  const Deal(
    title: 'Pizza Twist',
    price: 990,
    items: ['2 Small Pizza'],
    imageUrl: _pizzaUrl,
  ),
];
