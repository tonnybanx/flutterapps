import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';
import 'package:loan_management_system/home_page.dart';
import 'package:loan_management_system/loan_status.dart';

class ApplicationDone extends StatelessWidget {
  const ApplicationDone({super.key});

  @override
  Widget build(BuildContext context) {
    Helperfunctions helper = Helperfunctions();
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: helper.myDrawer(context),
      appBar: AppBar(
        backgroundColor: Variables.color1,
        foregroundColor: Colors.white,
        title: Text(
          'Staff Sacco Loans',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: screenwidth,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/image.png'))),
              ),
              Container(
                width: screenwidth,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/vector.png'))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Congragulations, you're growing your wealth",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        'Your sacco loan application has been submitted, you can now track the status of your loan application',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Variables.color1,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoanStatus()));
                      },
                      child: Container(
                        height: 40,
                        width: screenwidth,
                        child: Center(
                          child: Text(
                            'Loan status',
                            style: TextStyle(color: Variables.color1),
                          ),
                        ),
                      )),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Variables.color1,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Container(
                        height: 40,
                        width: screenwidth,
                        child: Center(
                          child: Text(
                            'Done',
                            style: TextStyle(color: Variables.color1),
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
