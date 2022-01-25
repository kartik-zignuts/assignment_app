import 'package:flutter/material.dart';

class VendorScreen extends StatefulWidget {
  const VendorScreen({Key? key}) : super(key: key);

  @override
  _VendoreScreenState createState() => _VendoreScreenState();
}

class _VendoreScreenState extends State<VendorScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Vendore screen'),
      ),
    );
  }
}
