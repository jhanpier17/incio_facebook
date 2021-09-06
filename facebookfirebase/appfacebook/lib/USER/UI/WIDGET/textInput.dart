// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final Icon iconImage;
  final TextInputType inputType;
  final TextEditingController controller;
  int maxLines = 1;

  TextInput({
    required this.hintText,
    required this.iconImage,
    required this.inputType,
    required this.controller,
    maxLines,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.0, left: 20.0),
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        style: TextStyle(fontSize: 18.0, color: Colors.black),
        decoration: InputDecoration(
          icon: iconImage,
          hintText: hintText,
        ),
      ),
    );
  }
}
