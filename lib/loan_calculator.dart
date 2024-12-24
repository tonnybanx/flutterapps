import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';

class LoanCalculator extends StatefulWidget {
  const LoanCalculator({super.key});

  @override
  State<LoanCalculator> createState() => _LoanCalculatorState();
}

class _LoanCalculatorState extends State<LoanCalculator> {
  Helperfunctions helperfunctions = Helperfunctions();
  String selectedOption = 'Emergency loan';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: helperfunctions.Back_button(context),
        backgroundColor: Variables.color1,
        title: Text(
          'Loan Calculator',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Container(
        height: height,
        width: width,
        child: Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    line1(),
                    line2(width),
                    SizedBox(
                      height: 40,
                    ),
                    line3('Interest', '5%', false),
                    line3('Total number of month', '12 months', false),
                    line3('Monthly payments', '98989', true),
                    line3('Total interest', '898888', true),
                    line3('Total repayment', '444444000', true),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Variables.color1),
                          onPressed: () {},
                          child: Container(
                            width: width,
                            child: Center(
                              child: Text(
                                'Calculate',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )),
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

  Padding line3(String header, String value, bool bold) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                header,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Text(
                value,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                    fontSize: 16),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          )
        ],
      ),
    );
  }

  Column line2(double width) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Loan amount',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Container(
                height: 40,
                width: 0.5 * width,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Variables.color1)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Center(
                      child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter loan amount'),
                  )),
                ))
          ],
        ),
        Divider(
          color: Colors.grey,
          thickness: 1,
        )
      ],
    );
  }

  Column line1() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Loan Type',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            DropdownButton<String>(
                underline: Text(''),
                padding: EdgeInsets.only(left: 10, right: 10),
                borderRadius: BorderRadius.circular(10),
                value: selectedOption,
                items: [
                  DropdownMenuItem(
                      value: 'Emergency loan', child: Text('Emergency loan')),
                  DropdownMenuItem(
                      value: 'Development loan',
                      child: Text('Development loan')),
                  DropdownMenuItem(
                      value: 'Personal loan', child: Text('Personal loan')),
                  DropdownMenuItem(
                      value: 'School fees loan',
                      child: Text('School fees loan')),
                  DropdownMenuItem(
                      value: 'Long term loan', child: Text('Long term loan')),
                ],
                onChanged: (newvalue) {
                  setState(() {
                    selectedOption = newvalue!;
                  });
                })
          ],
        ),
        Divider(
          thickness: 1,
          color: Colors.grey,
        )
      ],
    );
  }
}
