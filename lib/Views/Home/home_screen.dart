import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/Core/Constants/colors.dart';
import 'package:ecommerce/Views/Cart/cart_screen.dart';
import 'package:ecommerce/Views/Category/categories_screen.dart';
import 'package:ecommerce/Views/Home/home_screen_body.dart';
import 'package:ecommerce/Views/Settings/settings_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreenBody(),
    CategoriesScreen(),
    CartScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kveryWhite,
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: kPrimary,
        color: kPrimary,
        buttonBackgroundColor: kPrimary,
        height: 55.0,
        items: const <Widget>[
          Icon(Icons.home, size: 27, color: kveryWhite),
          Icon(Icons.dashboard_outlined, size: 27, color: kveryWhite),
          Icon(Icons.shopping_cart, size: 27, color: kveryWhite),
          Icon(Icons.settings, size: 27, color: kveryWhite),
        ],
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
