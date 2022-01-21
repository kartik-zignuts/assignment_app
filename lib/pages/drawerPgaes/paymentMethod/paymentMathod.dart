import 'package:assignment_app/pages/home/widget/navigatoreDrawer.dart';
import 'package:flutter/material.dart';

class PaymentMethodPge extends StatelessWidget {
  const PaymentMethodPge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Method'),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
