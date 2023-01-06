import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hos_app/shared/components/constants.dart';

class NavigationB extends StatelessWidget {
  const NavigationB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(
                Icons.home,
                color: secondColor,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: secondColor,
              ),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: secondColor,
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: secondColor,
              ),
              label: 'cart'),
        ],
      ),
    );
  }
}
