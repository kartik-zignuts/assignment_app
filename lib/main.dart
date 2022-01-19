import 'package:assignment_app/auth/login.dart';
import 'package:assignment_app/auth/register.dart';
import 'package:assignment_app/home/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      // theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => const Login(),
        'register': (context) => const Register(),
        'home': (context) => const HomePage(),
      },
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//         child: Scaffold(
//       body: Login(),
//     ));
//     // Route
//   }
// }
