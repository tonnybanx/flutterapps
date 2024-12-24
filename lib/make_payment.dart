import 'package:flutter/material.dart';
import 'package:loan_management_system/comfirm_payment.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';

class MakePayment extends StatefulWidget {
  const MakePayment({super.key});

  @override
  State<MakePayment> createState() => _MakePaymentState();
}

class _MakePaymentState extends State<MakePayment> {
  List<String> options = ['card1', 'mtn', 'airtel'];
  int selectedoption = 0;
  bool isSelected(int position1, int position2) {
    if (position1 == position2) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Helperfunctions helperfunctions = Helperfunctions();
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          leading: helperfunctions.Back_button(context),
          backgroundColor: Variables.color1,
          title: Text(
            'Make Payment',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Choose Payment option',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          paymentModule(0, 'Visa'),
                          paymentModule(1, 'MTN'),
                          paymentModule(2, 'airtel')
                        ],
                      ),
                      Text('Selected option'),
                      Container(
                        width: screenwidth,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/images/${options[selectedoption]}.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                        child: Text(
                          'Enter payment Details',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  label: Text((selectedoption == 0)
                                      ? 'Account Number:'
                                      : 'Phone Number')),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: TextField(
                              decoration:
                                  InputDecoration(label: Text('Amount:')),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  label: Text('Sacco Account:')),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  label: Text('Comment(optional):')),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ComfirmPayment()));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Variables.color1,
                                    foregroundColor: Colors.white),
                                child: Container(
                                    height: 40,
                                    width: screenwidth,
                                    child: Center(child: Text('continue')))),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  Column paymentModule(int position, String header) {
    return Column(
      children: [
        Text(
          header,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: InkWell(
            onTap: () {
              setState(() {
                selectedoption = position;
              });
            },
            child: Container(
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: (selectedoption == position)
                          ? Variables.color1
                          : Colors.transparent,
                      width: 4),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'assets/images/${options[position]}.png'))),
            ),
          ),
        ),
      ],
    );
  }
}
