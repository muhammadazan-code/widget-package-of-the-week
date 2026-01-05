import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPackageExample extends StatefulWidget {
  const ImagePickerPackageExample({super.key});

  @override
  State<ImagePickerPackageExample> createState() =>
      _ImagePickerPackageExampleState();
}

class _ImagePickerPackageExampleState extends State<ImagePickerPackageExample> {
  // Step 1
  File? image;
  // Step 2
  final _picker = ImagePicker();
  // Step 3
  Future getImage() async {
    final pickedFile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 100);
    if (pickedFile!.path.isNotEmpty) {
      image = File(pickedFile.path);
    } else {
      throw Exception("Error");
    }
  }

  // Step 4
  Future<void> getLoadImage() async {
    var stream = http.ByteStream(image!.openRead());
    stream.cast();
    var length = await image!.length();
    var uri = Uri.parse("https://fakestoreapi.com/products");
    var request = http.MultipartRequest("POST", uri);
    request.fields['title'] = 'Static title';
    var multipart = http.MultipartFile('images', stream, length);
    request.files.add(multipart);
    // ignore: unused_local_variable
    var response = await request.send();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker Example"),
      ),
      body: SafeArea(
          child: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 1.5),
            ),
            child: image == null
                ? Center(
                    child: Icon(CupertinoIcons.photo),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image(
                        width: 200,
                        height: 200,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fitWidth,
                        image: FileImage(File(image!.path).absolute)),
                  ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                  foregroundColor: WidgetStatePropertyAll(Colors.white)),
              onPressed: () {
                setState(() {
                  getImage();
                });
              },
              child: Center(
                child: Text("Pick Image"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),
              onPressed: () {
                setState(() {
                  getLoadImage();
                });
              },
              child: Center(
                child: Text("Upload Image"),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
