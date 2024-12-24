import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';
import 'package:loan_management_system/support_document2.dart';

class SupportDocument1 extends StatefulWidget {
  const SupportDocument1({super.key});

  @override
  State<SupportDocument1> createState() => _SupportDocument1State();
}

class _SupportDocument1State extends State<SupportDocument1> {
  List<double> location = [100, 100];
  bool captured = false;
  @override
  Widget build(BuildContext context) {
    Helperfunctions helperfunctions = Helperfunctions();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: helperfunctions.Back_button(context),
        backgroundColor: Variables.color1,
        title: Text(
          'Upload support documents',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Container(
        width: width,
        height: height,
        child: Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    camerabox('Capture front of your National ID', 0),
                    camerabox('Capture back of your National ID', 1),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SupportDocument2()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Variables.color1),
                        child: Container(
                            width: width,
                            child: Center(
                                child: Text(
                              'Next',
                              style: TextStyle(color: Colors.white),
                            ))))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column camerabox(String header, int position) {
    return Column(
      children: [
        Text(header),
        Stack(
          children: [
            Container(
              width: 200,
              height: 200,
            ),
            Container(
              width: 260,
              height: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/camerabackground.png'))),
            ),
            Positioned(
              bottom: location[position],
              right: location[position],
              child: IconButton(
                onPressed: () {
                  captured
                      ? setState(() {
                          location[position] = 100;
                        })
                      : setState(() {
                          location[position] = 10;
                        });
                  captured = !captured;
                },
                icon: Icon(
                  Icons.camera_alt_sharp,
                  size: 40,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
