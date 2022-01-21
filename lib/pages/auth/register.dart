import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    // final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();

    final screenHeight = MediaQuery.of(context).size.height;

    // @override
    // void dispse() {
    //   emailController.dispose();
    //   emailController.removeListener(noListen);
    //   super.dispose();
    // }

    // @override
    // void initstate() {
    //   super.initState();
    //   emailController.addListener(noListen);
    // }

    // void noListen() => setState(() {});
    return Container(
      // key: formKey,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/register.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: screenHeight * .048, left: 20),
              child: const Text('Create \nAccount',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * .26, left: 25, right: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          // fillColor: Colors.black,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // hintText: 'Name',
                          label: const Text(
                            'Name',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          icon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //emailtextformfild

                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: const [AutofillHints.email],
                      validator: (email) => !EmailValidator.validate(email!)
                          ? 'Enter Valid email'
                          : null,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // hintText: 'Name',
                        // fillColor: Colors.grey,
                        // focusColor: Colors.white,
                        label: const Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        // prefix: Icon(Icons.mail),
                        suffix: emailController.text.isEmpty
                            ? Container(
                                width: 0,
                              )
                            : IconButton(
                                onPressed: () => emailController.clear(),
                                icon: const Icon(Icons.close)),
                        icon: const Icon(Icons.email, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //
                    TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // hintText: 'Name',
                          label: const Text(
                            'Creat Password',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            // style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          icon:
                              const Icon(Icons.password, color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //last form field

                    TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // hintText: 'Name',
                          label: const Text(
                            'Conform Password',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          icon: const Icon(Icons.lock_clock_rounded,
                              color: Colors.white)),
                    ),

                    const SizedBox(
                      height: 35,
                    ),

                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 0, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Sing Up',
                            style: TextStyle(
                                fontSize: 29,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          CircleAvatar(
                            radius: 31,
                            backgroundColor: const Color(0xff4c505b),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'home');
                                },
                                icon: const Icon(Icons.arrow_forward)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Widget buildButton()=>ButtoneWidget(text: 'Login', onclicked: (){final form=formKey.cu})