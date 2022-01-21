import 'package:assignment_app/pages/home/widget/navigatoreDrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
