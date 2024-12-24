import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';
import 'package:loan_management_system/history_details.dart';

class PaymentHistory extends StatelessWidget {
  PaymentHistory({super.key});

  List<List<String>> transactions = [
    ['December', '31/12/2024', '08:00 am', '2000000', '11029885757579399'],
    ['January', '2/01/2025', '07:50 am', '1000000', '41029885757579399'],
    ['June', '27/06/2024', '08:30 am', '5000000', '61029885757579399'],
    ['October', '12/10/2024', '12:00 am', '15000000', '71029885757579399'],
  ];
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    Helperfunctions helperfunctions = Helperfunctions();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
            'Payment history',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          leading: helperfunctions.Back_button(context),
          backgroundColor: Variables.color1),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
            width: screenwidth,
            height: screenheight,
            child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  return paymentHistory(screenwidth, index, context);
                })),
      ),
    );
  }

  Padding paymentHistory(
      double screenwidth, int position, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: screenwidth,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Variables.color1,
            border: Border.all(color: Colors.white, width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactions[position][0],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Text(
                        transactions[position][1],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        transactions[position][2],
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  IconButton(
                      tooltip: 'Details',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HistoryDetails(
                                    data: transactions[position])));
                      },
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ))
                ],
              ),
              Row(
                children: [
                  Text(
                    'Amount paid:  ',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'UGX${transactions[position][3]}',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Transaction ID:  ',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    transactions[position][4],
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
