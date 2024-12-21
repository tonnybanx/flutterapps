import 'package:flutter/material.dart';
import 'package:loan_management_system/helperfunctions.dart';
import 'package:loan_management_system/loan_details1.dart';

import 'constants.dart';

class Applyloan extends StatefulWidget {
  const Applyloan({super.key});

  @override
  State<Applyloan> createState() => _ApplyloanState();
}

class _ApplyloanState extends State<Applyloan> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    Helperfunctions helper = Helperfunctions();
    return Scaffold(
      appBar: AppBar(
        leading: helper.Back_button(context),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Variables.color1,
        title: Text(
          'Staff Sacco',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        width: screenwidth,
        height: screenheight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 250,
                width: screenwidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/vector.png'))),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Maximum Loan Limit',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text('UGX 15,000,000',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(
                          'You can now apply for any of the available loan scheme with minimal interests',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recommended Loans',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      loanModule(screenwidth, 'Emergency Loan',
                          'Lowest interest rates as low as 5%, payable within 6 months'),
                      loanModule(screenwidth, 'Personal Loan',
                          'Lowest interest rates as low as 5%, payable within 12 month'),
                      loanModule(screenwidth, 'Development Loan',
                          'Lowest interest rates as low as 5%, payable within 24 months'),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: screenwidth,
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Padding loanModule(double screenwidth, String header, String info) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 180,
        width: screenwidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Variables.color1,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 10),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/payment.png')),
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      header,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      info,
                      style: TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoanDetails1()));
                              },
                              child: Text(
                                'Apply Now',
                                style: TextStyle(
                                    color: Variables.color1,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
