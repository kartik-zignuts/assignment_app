import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/login.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            margin: EdgeInsets.only(top: height * .20, left: 20),
            child: const Text(
              'Welcome \nBacK',
              style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: height * .5, right: 25, left: 25),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Singin',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 27),
                        ),
                        CircleAvatar(
                            radius: 31,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: const Text(
                              'Sing Up',
                              style: TextStyle(
                                  color: Color(0xff4c505b),
                                  fontSize: 22,
                                  decoration: TextDecoration.underline),
                            )),
                        const TextButton(
                            onPressed: null,
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Color(0xff4c505b),
                                  fontSize: 22,
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
