// ignore_for_file: slash_for_doc_comments

import 'package:flutter/material.dart';
import 'package:frontend_design/utils/constants.dart';

/**
 * Customized Widget Contained in this file
 * 
 * Vertical and Horizontal Space made from SizedBox
 * floating Action Button
 * CustomizedTextField 1 & 2
 * Button
 * Model Bottom Sheet
 * 
 * **/

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget floatingActionButton() {
  return floatingActionButton();
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget customTextField(Size size, String labelText, IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: size.width,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          focusColor: Colors.white,
          labelText: labelText,
          contentPadding: const EdgeInsets.all(8.0),
          labelStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(icon, color: Colors.white),
        ),
      ),
    ),
  );
}

Widget customTextField2(Size size, String labelText, IconData icon,
    Color inputColor, Color labelColor) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: size.width,
      decoration: BoxDecoration(
          border: Border.all(
            color: inputColor,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: TextFormField(
        style: TextStyle(
          color: labelColor,
        ),
        decoration: InputDecoration(
          focusColor: inputColor,
          labelText: labelText,
          contentPadding: const EdgeInsets.all(8.0),
          labelStyle: TextStyle(
            color: inputColor,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(icon, color: inputColor),
        ),
      ),
    ),
  );
}

Widget button() {
  return Container(
    height: 50,
    margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5))),
    child: ElevatedButton.icon(
      icon: const Icon(Icons.account_circle, size: 20),
      onPressed: () {},
      style: ButtonStyle(
        alignment: Alignment.center,
        backgroundColor: MaterialStateProperty.all(
          const Color.fromRGBO(7, 29, 69, 1),
        ),
      ),
      label: const Text("Sign Up"),
    ),
  );
}

Widget padding(double top, double right, double bottom, double left) {
  return Padding(
    padding: EdgeInsets.only(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
    ),
  );
}

Future buttomSheet(context, screenSize) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: Column(
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              alignment: Alignment.topCenter,
              icon: const Icon(
                Icons.maximize_rounded,
                color: Colors.grey,
                size: 35,
              ),
            ),
            Form(
              child: Wrap(children: [
                customTextField2(
                  screenSize,
                  "Product Name",
                  Icons.email,
                  primaryColor,
                  Colors.grey,
                )
              ]),
            )
          ],
        ),
      );
    },
  );
}
