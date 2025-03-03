import 'package:coffee_delivery/features/pages/favorite_page.dart';
import 'package:coffee_delivery/features/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

final menu = [
  {
    'icon': Iconsax.home5,
    'destination': const CoffeeHomePage(),
  },
  {
    'icon': Iconsax.heart,
    'destination': const FavoritePage(),
  },
  {
    'icon': Iconsax.shopping_bag,
    'destination': const Center(child: Text('shopping')),
  },
  {
    'icon': Iconsax.notification,
    'destination': const Center(child: Text('Notification')),
  },
];
