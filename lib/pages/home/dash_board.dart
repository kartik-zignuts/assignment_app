import 'package:assignment_app/pages/home/widget/navigatore_drawer.dart';
import 'package:flutter/material.dart';

import 'bottome_navigationBar/categories_screen.dart';
import 'bottome_navigationBar/home_screenOfHome.dart';
import 'bottome_navigationBar/list_screen.dart';
import 'bottome_navigationBar/more_screen.dart';
import 'bottome_navigationBar/vendor_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectindex = 0;
  String _title = 'Some Default Value';

  final screens = const [
    HomeScreenOfHome(),
    VendorScreen(),
    ListScreen(),
    CategoriesScreen(),
    MoreScreen(),
  ];
  // static const TextStyle optionsStyle ={}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTitle(),
      drawer: const Navigation_drawer(),
      body: IndexedStack(
        children: screens,
        index: _selectindex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectindex,
        onTap: onTabBootomeBar,
        elevation: 3,
        iconSize: 34,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 18,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.green.shade800,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Vandors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'More',
          ),
        ],
      ),
    );
  }

  void onTabBootomeBar(currentIndex) => setState(() {
        _selectindex = currentIndex;
        switch (currentIndex) {
          case 0:
            {
              _title = 'Home Page';
            }
            break;
          case 1:
            {
              _title = 'Vendore';
            }
            break;
          case 2:
            {
              _title = 'Add to List';
            }
            break;
          case 3:
            {
              _title = 'Categorites';
            }
            break;
        }
      });

  AppBar appBarTitle() {
    return AppBar(
      backgroundColor: Colors.green.shade800,
      elevation: 5,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
            onPressed: null,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: IconButton(
            icon: Icon(
              Icons.qr_code_scanner_rounded,
              color: Colors.white,
              size: 35,
            ),
            onPressed: null,
          ),
        ),
      ],

      // toolbarHeight: 65,
      title: Text(
        _title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
      ),
      leading: Builder(
          builder: (context) => IconButton(
              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const CircleAvatar(
                radius: 25,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295429_960_720.png')),
              ))),
      //backgroundColor: Colors.transparent,

// elevation: ,
    );
  }
}
