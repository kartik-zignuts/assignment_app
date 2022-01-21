import 'package:assignment_app/pages/drawerPgaes/addresses/adressesPage.dart';
import 'package:assignment_app/pages/drawerPgaes/paymentMethod/paymentMathod.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.green.shade800,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: 1,
                      right: 1,
                      child: IconButton(
                          iconSize: 34,
                          onPressed: () => Scaffold.of(context).openEndDrawer(),
                          icon: const Icon(
                            Icons.home,
                            color: Colors.white,
                          )),
                    ),
                    const ProfilrHeader()
                  ],
                ),
                height: 130,
                color: Colors.green.shade900,
                // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              ),
              const SizedBox(
                height: 20,
              ),
              BuildMenu(
                icon: Icons.monetization_on,
                text: 'Payment Method',
                onclick: () => SelectItemNextPage(context, 0),
              ),
              const SizedBox(
                height: 4,
              ),
              BuildMenu(
                icon: Icons.location_on,
                text: 'Addresses',
                onclick: () => SelectItemNextPage(context, 1),
              ),
              const SizedBox(
                height: 4,
              ),
              BuildMenu(
                icon: Icons.lock,
                text: 'Password',
                onclick: () => SelectItemNextPage(context, 2),
              ),
              const SizedBox(
                height: 4,
              ),
              BuildMenu(
                icon: Icons.people,
                text: 'Household',
                onclick: () => SelectItemNextPage(context, 3),
              ),
              const SizedBox(
                height: 17,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 23),
                child: Divider(
                  thickness: 1.1,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              BuildMenu(
                icon: Icons.info,
                text: 'User info',
                onclick: () => SelectItemNextPage(context, 4),
              ),
              const SizedBox(
                height: 4,
              ),
              BuildMenu(
                icon: Icons.chat,
                text: 'Contact us',
                onclick: () => SelectItemNextPage(context, 5),
              ),
              const SizedBox(
                height: 4,
              ),
              BuildMenu(
                icon: Icons.file_copy,
                text: 'Terms & conditions',
                onclick: () => SelectItemNextPage(context, 6),
              ),
              const SizedBox(
                height: 4,
              ),
              BuildMenu(
                icon: Icons.question_answer,
                text: 'FAQ',
                onclick: () => SelectItemNextPage(context, 7),
              ),
              const SizedBox(
                height: 4,
              ),
              BuildMenu(
                icon: Icons.photo_album_outlined,
                text: 'About the App',
                onclick: () => SelectItemNextPage(context, 8),
              ),
              const SizedBox(
                height: 4,
              ),
              BuildMenu(
                icon: Icons.logout,
                text: 'Logout',
                onclick: () => SelectItemNextPage(context, 9),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget BuildMenu({
  required IconData icon,
  required String text,
  VoidCallback? onclick,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: Colors.white,
      ),
      hoverColor: Colors.white70,
      onTap: onclick,
      title: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  );
}

void SelectItemNextPage(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PaymentMethodPge(),
      ));

      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const AddressesPage(),
      ));

      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PaymentMethodPge(),
      ));

      break;

    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PaymentMethodPge(),
      ));

      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PaymentMethodPge(),
      ));

      break;
    case 5:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PaymentMethodPge(),
      ));

      break;
    case 6:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PaymentMethodPge(),
      ));

      break;
    case 7:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PaymentMethodPge(),
      ));

      break;
    case 8:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PaymentMethodPge(),
      ));

      break;
    case 9:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PaymentMethodPge(),
      ));

      break;
  }
}

class ProfilrHeader extends StatelessWidget {
  const ProfilrHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 55),
      child: InkWell(
        onTap: null,
        // height: 60,
        child: ListTile(
          leading: CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295429_960_720.png'),
          ),
          title: Text(
            'Kartik Patel',
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
          subtitle: Text(
            'Edit',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
