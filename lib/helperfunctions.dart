import 'package:flutter/material.dart';
import 'package:loan_management_system/applyloan.dart';
import 'package:loan_management_system/loan_calculator.dart';
import 'package:loan_management_system/loan_status.dart';
import 'package:loan_management_system/make_payment.dart';
import 'package:loan_management_system/myprofile.dart';
import 'package:loan_management_system/payment_history.dart';

class Helperfunctions {
  Helperfunctions();
  List<String> headers = [
    'Apply for loan',
    'Make payment',
    'Payment History',
    'Loan status',
    'My profile',
    'Loan calculator'
  ];

  List<IconData> icons = [
    Icons.local_activity,
    Icons.payment,
    Icons.history,
    Icons.info_sharp,
    Icons.person,
    Icons.calculate
  ];
  List<Widget> screens = [
    Applyloan(),
    MakePayment(),
    PaymentHistory(),
    LoanStatus(),
    Myprofile(),
    LoanCalculator()
  ];
  Drawer myDrawer(BuildContext classContext) {
    return Drawer(
      width: 200,
      backgroundColor: Colors.white,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Container(
              height: 200,
              color: Colors.white,
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return myTextButton(index, classContext);
                  })),
        ),
      ),
    );
  }

  Padding myTextButton(int position, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icons[position],
            color: Colors.black,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => screens[position]));
              },
              child: Text(
                headers[position],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              )),
        ],
      ),
    );
  }

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
