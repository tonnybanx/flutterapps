import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loan_management_system/application_done.dart';
import 'package:loan_management_system/application_loan_summary.dart';
import 'package:loan_management_system/constants.dart';

class LoanDetails2 extends StatefulWidget {
  const LoanDetails2({super.key});

  @override
  State<LoanDetails2> createState() => _LoanDetails2State();
}

class _LoanDetails2State extends State<LoanDetails2> {
  String wholeText =
      "I hereby authorize Equity Bank Uganda Staff Sacco ltd to deduct the principal amount interest and pay any charges relating to me including guaranteed loans from my salary in accordance with repayment terms of the loan granted following this application";
  bool isExpanded = false;
  List<String> options = ['Confirm', 'Do not confirm'];
  String? selectedOption;
  String displayText(String fullText, bool isExpanded) {
    if (isExpanded) {
      return fullText;
    } else {
      return '${fullText.substring(0, 150)}....';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
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
                        inputField(screenwidth, 'Amount', 'Enter amount'),
                        inputField(screenwidth, 'Purpose of the loan',
                            'Upload invoice/purpose of the loan'),
                        Text(
                          'C) GUARANTERS',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        inputField(screenwidth, '1st Guaranter',
                            'Enter PF number of first Guaranter'),
                        inputField(screenwidth, '2nd Guaranter',
                            'Enter PF number of second Guaranter'),
                        Text(
                          'E) AUTHORITY TO REMIT DEDUCTIONS',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        RichText(
                            text: TextSpan(
                                text: displayText(wholeText, isExpanded),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                children: [
                              TextSpan(
                                  text:
                                      isExpanded ? ' Read less ' : ' Read more',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: const Color.fromARGB(
                                          255, 87, 24, 187)),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      setState(() {
                                        isExpanded = !isExpanded;
                                      });
                                    }),
                            ])),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            'D) DECLARATION',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'I confirm that the informatin given above is correct to the best of my knowledge',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Column(
                          children: [radioItem(0), radioItem(1)],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 40, left: 20, right: 20, top: 20),
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
                                builder: (context) =>
                                    ApplicationLoanSummary()));
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
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        value: options[index],
        groupValue: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value;
          });
        });
  }

  Padding inputField(double screenwidth, String header, String hintmessage) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Container(
            height: 40,
            width: screenwidth,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: hintmessage),
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
