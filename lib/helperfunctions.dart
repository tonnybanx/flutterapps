import 'package:flutter/material.dart';

class Helperfunctions {
  Helperfunctions();
  Widget NormalInput(BuildContext context, Color bordercolor) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: bordercolor, width: 2)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10, bottom: 15),
          child: TextField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
      ),
    );
  }

  Widget inputField1(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          NormalInput(context, Colors.white),
        ],
      ),
    );
  }

//this input has some space at the top from the text field
  Widget inputField2(String text, Color color, FontWeight fontWeight,
      Color bordercolor, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              text,
              style:
                  TextStyle(color: color, fontSize: 16, fontWeight: fontWeight),
            ),
          ),
          NormalInput(context, bordercolor),
        ],
      ),
    );
  }

//back button
  Widget Back_button(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              border: Border.all(color: Colors.white, width: 2)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ));
  }
}
