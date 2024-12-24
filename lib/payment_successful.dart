import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/home_page.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
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
                        'Payment Summary',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 350,
                        width: screenwidth,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              row1('Ref Number:', '0999909384859'),
                              row1('Date:', '02 oct 2024   13:00'),
                              row1('Method:', 'Bank transfer'),
                              row2('Sender details', 'Kai Havertz',
                                  '1204858768499499'),
                              row2('Receiver details', 'Kai Havertz',
                                  '1204858768499499'),
                              row1('Amount', '520,000')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Variables.color1,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Container(
                                width: screenwidth,
                                child: Center(
                                  child: Text(
                                    'Generate payment receipt',
                                    style: TextStyle(
                                        color: Variables.color1, fontSize: 16),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Variables.color1),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Container(
                            width: screenwidth,
                            child: Center(
                              child: Text(
                                'Go to Home',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            )))
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
