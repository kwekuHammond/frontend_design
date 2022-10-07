import 'package:flutter/material.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
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

Widget button() {
  return Container(
    height: 50,
    margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
    child: ElevatedButton.icon(
      icon: const Icon(Icons.account_circle, size: 20),
      onPressed: () {},
      style: ButtonStyle(
        alignment: Alignment.center,
        backgroundColor:
            MaterialStateProperty.all(const Color.fromRGBO(7, 29, 69, 1)),
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
