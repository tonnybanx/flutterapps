import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';
import 'package:loan_management_system/loan_details2.dart';
import 'package:loan_management_system/support_document1.dart';

class LoanDetails1 extends StatefulWidget {
  const LoanDetails1({super.key});

  @override
  State<LoanDetails1> createState() => _LoanDetails1State();
}

class _LoanDetails1State extends State<LoanDetails1> {
  List<String> options = [
    'Emergency loan',
    'Personal loan',
    'Development loan',
    'Equi -Green loan'
  ];
  bool ischecked = false;
  String? selectedOption;
  Helperfunctions myhelper = Helperfunctions();
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: myhelper.myDrawer(context),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Variables.color1,
        title: Text(
          'Staff sacco loan',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: screenwidth,
        height: screenheight,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Loan Application Form',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "A) APPLICANTS DETAILS",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        inputfield(
                            screenwidth, 'Full names', 'Enter your full names'),
                        inputfield(
                            screenwidth, 'PF Number', 'Enter your PF number'),
                        inputfield(
                            screenwidth, 'Current Address', 'Current address'),
                        inputfield(
                            screenwidth, 'Phone Number', 'Mobile Number'),
                        inputfield(screenwidth, 'Email', 'xxxxxxx@gmail.com'),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            'B)NEW LOAN APPLICATION',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Available loan options',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Column(children: [
                          radioItem(0),
                          radioItem(1),
                          radioItem(2),
                          radioItem(3)
                        ])
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 40, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Variables.color1,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Back',
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Variables.color1),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SupportDocument1()));
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  RadioListTile<String> radioItem(int index) {
    return RadioListTile(
        title: Text(
          options[index],
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        value: options[index],
        groupValue: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value;
          });
        });
  }

  Padding inputfield(double screenwidth, String header, String hintmessage) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Container(
            width: screenwidth,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1)),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintmessage,
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 183, 187, 187))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
