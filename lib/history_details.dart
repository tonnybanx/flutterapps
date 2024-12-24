import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';

class HistoryDetails extends StatelessWidget {
  List<String> data;
  HistoryDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    Helperfunctions helperfunctions = Helperfunctions();
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: helperfunctions.Back_button(context),
        backgroundColor: Variables.color1,
        title: Text(
          'Transaction history',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Container(
        width: screenwidth,
        height: screenheight,
        child: Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Container(
                  height: 300,
                  width: screenwidth,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        transactionDetail('Month', data[0]),
                        transactionDetail('Date', data[1]),
                        transactionDetail('Time', data[2]),
                        transactionDetail('Amount', data[3]),
                        transactionDetail('Transaction ID', data[4]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding transactionDetail(String header, String info) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [Text('$header:  '), Text(info)],
      ),
    );
  }
}
