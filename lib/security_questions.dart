import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/credentials_page.dart';
import 'package:loan_management_system/helperfunctions.dart';
import 'package:loan_management_system/transition.dart';

class SecurityQuestions extends StatefulWidget {
  const SecurityQuestions({super.key});

  @override
  State<SecurityQuestions> createState() => _SecurityQuestionsState();
}

class _SecurityQuestionsState extends State<SecurityQuestions> {
  Helperfunctions helper = Helperfunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Variables.color1,
          leading: helper.Back_button(context),
        ),
        body: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/vector.png'),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 20, bottom: 10),
                            child: Text(
                              '4. Security Questions',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          helper.inputField2(
                              'a) If you were offered a free trip to any country, which city would you choose?',
                              Colors.white,
                              FontWeight.normal,
                              Colors.white,
                              context),
                          helper.inputField2(
                              'b) Which primary school did you attend to?',
                              Colors.white,
                              FontWeight.normal,
                              Colors.white,
                              context),
                          helper.inputField2(
                              'c) Which food did you order for at your first date?',
                              Colors.white,
                              FontWeight.normal,
                              Colors.white,
                              context),
                          helper.inputField2(
                              'a) What was the name of your first pet?',
                              Colors.white,
                              FontWeight.normal,
                              Colors.white,
                              context),
                          Text(
                            'Dear member note that  the above questions will be asked when resetting your password or when the system suspects unauthorized accessto your account.',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Transition_page()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(0, 173, 149, 149),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: Colors.white, width: 2)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Register',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CredentialsPage()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: Colors.white, width: 2)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cancel',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
