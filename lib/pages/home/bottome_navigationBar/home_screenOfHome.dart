// ignore: file_names
// ignore: file_names
import 'package:assignment_app/pages/drawerPgaes/addresses/adresses_screen.dart';
import 'package:assignment_app/pages/home/bottome_navigationBar/categories_screen.dart';
import 'package:assignment_app/pages/home/bottome_navigationBar/list_screen.dart';
import 'package:assignment_app/pages/home/bottome_navigationBar/more_screen.dart';
import 'package:assignment_app/pages/home/bottome_navigationBar/vendor_screen.dart';
import 'package:assignment_app/pages/home/widget/navigatore_drawer.dart';
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
      body: Center(child: Text('data'),),
    );
  }
}
