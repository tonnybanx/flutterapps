import 'package:flutter/material.dart';
import 'package:loan_management_system/application_done.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';

class ApplicationLoanSummary extends StatelessWidget {
  const ApplicationLoanSummary({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    Helperfunctions helperfunctions = Helperfunctions();
    return Scaffold(
      appBar: AppBar(
        leading: helperfunctions.Back_button(context),
        backgroundColor: Variables.color1,
        foregroundColor: Colors.white,
        title: Text('Transaction Receipt'),
      ),
      body: Container(
        width: screenwidth,
        height: screenheight,
        child: Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Loan application Summary',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 300,
                        width: screenwidth,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              row1('Type:', 'Emergency loan'),
                              row1('Loan duration:', '24 months'),
                              row1('Amount:', '12000000'),
                              row1('monthly repayment amount', '520,000'),
                              row1('Total repayment amount', '18000000')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Variables.color1),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ApplicationDone()));
                          },
                          child: Container(
                              width: screenwidth,
                              child: Center(
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ))),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding row2(String header, String info1, String info2) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text(info1), Text(info2)],
          )
        ],
      ),
    );
  }

  Padding row1(String header, String info) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            header,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Text(
            info,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
