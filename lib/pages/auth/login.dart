import 'package:assignment_app/pages/auth/widget/email_field_widget.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final emailcontroller = TextEditingController();
    final key = GlobalKey<FormState>();

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/login.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            margin: EdgeInsets.only(top: height * .15, left: 20),
            child: const Text(
              'Welcome \nBack',
              style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: height * .5, right: 25, left: 25),
              child: Form(
                key: key,
                child: Column(
                  children: [
                    //new email validation textfield

                    EmailFieldWidget(
                      emailcontroller: emailcontroller,
                    ),

                    //
                    const SizedBox(
                      height: 20,
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password),
                        labelText: 'Password',
                        // fillColor: Colors.grey.shade100,
                        // filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1.4, color: Colors.grey.shade800)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1.4, color: Colors.grey.shade800)),
                        // border: OutlineInputBorder(
                        //     borderSide: BorderSide(
                        //         width: 6, color: Colors.grey.shade900),
                        //     borderRadius: BorderRadius.circular(20))
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Singin',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 27),
                          ),
                          CircleAvatar(
                              radius: 31,
                              backgroundColor: const Color(0xff4c505b),
                              child: IconButton(
                                onPressed: () {
                                  final key1 = key.currentState!;

                                  if (key1.validate()) {
                                    final email = emailcontroller.text;
                                    ScaffoldMessenger.of(context)
                                      ..removeCurrentSnackBar()
                                      ..showSnackBar(SnackBar(
                                          content:
                                              Text('Your Mail is $email')));
                                  }
                                },
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ))
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
          ),
        ]),
      ),
    );
  }
}
