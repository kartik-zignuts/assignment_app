import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'api_services.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);
  final textcontroller = TextEditingController();
  final emailcontroller = TextEditingController();

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //API CALLING
  // callLoginApi() {
  //   final service = ApiServices();

  //   service.apiCallLogin(
  //     {
  //       "EMAIL": "email",
  //       "PASSWORD": "password",
  //       "DEVICE_TOKEN": "device_token",
  //       "DEVICE_TYPE": "device_type",
  //       "CATEGORY_ID": "2",
  //     },
  //   ).then((value) {
  //     if (value.error != null) {
  //       print("get data >>>>>> " + value.error!);
  //     } else {
  //       print(value.token!);
  //       //push
  //     }
  //   });
  // }

  static final baseURL =
      "https://e3-qkmountain.qkinnovations.com/qkm-andermatt-backend/api/";
  static final postsEndpoint = baseURL + "user/appLogin";
  // int device_token = 1;
  // String? device_type = "A";
  // int category_id = 2;
  Future createPost() async {
    final url = Uri.parse(postsEndpoint);
    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'email': "tueinst@gmail.com",
          'password': "123456",
          'device_token': "1",
          'device_type': 'A',
          'category_id': "2"
        }));
    print(response.body);
    return jsonDecode(response.body);
  }

// //
//   savetext(String? savedtext) async {
//     final SharedPreferences text = await SharedPreferences.getInstance();
//     text.setString('textkey', savedtext!);
//   }

//   readtext() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? currentText = prefs.getString('textkey');
//     if (currentText != null) {
//       widget.textcontroller.text = currentText;
//     }
//     return;
//   }

//   @override
//   void initState() {
//     super.initState();
//     readtext();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: widget.textcontroller,
              // onChanged: (value) => savetext(value),
            ),
            TextField(
              controller: widget.emailcontroller,
            ),
            const SizedBox(
              height: 30,
            ),
            FloatingActionButton(
                child: const Icon(Icons.next_plan),
                onPressed: () => {
                      Navigator.popAndPushNamed(context, 'dashBoard'),
                      createPost(),
                      // createPost(widget.textcontroller.text,
                      //     widget.emailcontroller.text)
                      // callLoginApi(),
                    })
          ],
        ),
      ),
    );
  }
}

// @JsonSerializable()
// class Post {
//   Post({
//     this.id,
//     this.userId,
//     this.title,
//     this.body,
//   });

//   int? id;
//   int? userId;
//   String? title;
//   String? body;
//   factory Post.fromJson(Map<String, String> json) => _$PostFromJson(json);

//   Map<String, String> toJson() => _$PostToJson(this);
// }

// Widget buildButton()=>ButtoneWidget(text: 'Login', onclicked: (){final form=formKey.cu})
