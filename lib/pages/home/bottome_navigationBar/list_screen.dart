import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late var _image;
  Future _pickImageFromCamera() async {
    var image = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  //imagefromgallary
  Future _pickImageFromGallery() async {
    var image1 = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: _pickImageFromCamera,
              child: ListTile(
                leading: Icon(
                  Icons.camera,
                ),
                title: Text('image from camera'),
              )),
          ElevatedButton(
              onPressed: _pickImageFromGallery,
              child: ListTile(
                leading: Icon(
                  Icons.camera,
                ),
                title: Text('image from Gallery'),
              ))
        ],
      ),
    );
  }
}
