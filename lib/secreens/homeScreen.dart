import 'package:flutter/material.dart';
import 'package:momma/model/bn_screen.dart';
import 'package:momma/pref/shardPrefController.dart';
import 'package:momma/secreens/bottomNavigatorScreens/bottomCart.dart';
import 'package:momma/secreens/bottomNavigatorScreens/bottomHome.dart';
import 'package:momma/secreens/bottomNavigatorScreens/bottomLogout.dart';
import 'package:momma/secreens/bottomNavigatorScreens/bottomMore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int selectedIndexBottomNav = 0;
  String _tilte='Home';

  List Screens=[
    const BottomNavigationScreen(title: 'Home', widget: BottomHome()),
    const BottomNavigationScreen(title: 'Cart', widget: BottomCart()),
    const BottomNavigationScreen(title: 'More', widget: BottomMore()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens.elementAt(selectedIndexBottomNav).widget,
      bottomNavigationBar: BottomNavigationBar(

          onTap: (int selectedBottomNavItem) {
            print('Selected Bottom Navigator Item $selectedBottomNavItem');
            setState(() {
              selectedIndexBottomNav = selectedBottomNavItem;
            });
          },
          currentIndex: selectedIndexBottomNav,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_vert,
                ),
                label: 'More'),

          ]),
    );
  }
}
