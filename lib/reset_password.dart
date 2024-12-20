import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';
import 'package:loan_management_system/success_password_reset.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  Helperfunctions helper = Helperfunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Reset Password',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75),
                            image: DecorationImage(
                                image: AssetImage('assets/images/image4.jpg'),
                                fit: BoxFit.contain)),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Enter the information below and confirm your password',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                helper.inputField2('New password', Colors.black,
                    FontWeight.bold, Variables.color1, context),
                helper.inputField2('Confirm Password', Colors.black,
                    FontWeight.bold, Variables.color1, context),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuccessPasswordReset()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Variables.color1,
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(color: Variables.color1, width: 2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Submit',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
