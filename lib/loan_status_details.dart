import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';

class LoanStatusDetails extends StatelessWidget {
  List<String> details;
  LoanStatusDetails({super.key, required this.details});
  Helperfunctions helperfunctions = Helperfunctions();

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Variables.color1,
        leading: helperfunctions.Back_button(context),
        title: Center(
          child: Text(
            'Status Details',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      body: Container(
        width: screenwidth,
        height: screenheight,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Loan Details',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: screenwidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            singleDetail('Amount:', 'UGX 15,000,000'),
                            singleDetail('Date:', '02 sep 2024'),
                            singleDetail('Status:', 'Rejected'),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'The guaranters you suggested have not yet approved your loan application',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding singleDetail(String header, String info) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
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
                info,
                style: TextStyle(
                    color: Variables.color1,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
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
}
