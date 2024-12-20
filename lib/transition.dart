import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/credentials_page.dart';

class Transition_page extends StatefulWidget {
  const Transition_page({super.key});

  @override
  State<Transition_page> createState() => _Transition_pageState();
}

class _Transition_pageState extends State<Transition_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
          child: SingleChildScrollView(
              child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Variables.color1,
                    borderRadius: BorderRadius.circular(5)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Staff Sacco Loans',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 0.3 * MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/image.png'))),
              ),
              Text(
                'Account created successfully!',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Your details have been captured and your account has been successfully created, you will receive an email confirmation shortly.',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CredentialsPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(color: Variables.color1, width: 2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Go to Login',
                            style: TextStyle(
                                color: Variables.color1,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ))),
    );
  }
}
