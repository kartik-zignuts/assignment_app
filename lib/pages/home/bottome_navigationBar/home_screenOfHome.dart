import 'package:flutter/material.dart';

class HomeScreenOfHome extends StatefulWidget {
  const HomeScreenOfHome({Key? key}) : super(key: key);

  @override
  _HomeScreenOfHomeState createState() => _HomeScreenOfHomeState();
}

class _HomeScreenOfHomeState extends State<HomeScreenOfHome> {
  // int _currentIndex = 0;
  // final screen = const [
  //   AddressesPage(),
  //   VendorScreen(),
  //   ListScreen(),
  //   CategoriesScreen(),
  //   MoreScreen()
  // ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('helo'),
      ),
    );
  }
}
