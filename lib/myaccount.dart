import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';

class Myaccount extends StatefulWidget {
  const Myaccount({super.key});

  @override
  State<Myaccount> createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  List<String> accountinfo = [
    '+256780166542',
    'kaihavertz@gmail.com',
    'Kai Haverts',
    'Kasese Branch'
  ];
  @override
  Widget build(BuildContext context) {
    Helperfunctions helperfunctions = Helperfunctions();
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Variables.color1,
        leading: helperfunctions.Back_button(context),
        title: Text(
          'My account',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: screenwidth,
        height: screenheight,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Stack(
                          children: [
                            Container(
                              width: screenwidth,
                              height: 200,
                              color: Colors.white,
                            ),
                            Container(
                              width: screenwidth,
                              height: 140,
                              color: const Color.fromARGB(255, 250, 249, 249),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0.3 * screenwidth,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 150,
                                  ),
                                  Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 4, color: Colors.white),
                                        borderRadius: BorderRadius.circular(60),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/palasidi.jpg'))),
                                  ),
                                  Positioned(
                                    left: 95,
                                    top: 50,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.camera_alt_rounded,
                                          size: 40,
                                          color: Colors.black,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            accountDetails(Icons.phone, 'Contact', 0),
                            accountDetails(
                                Icons.mail_outline_outlined, 'Email', 1),
                            accountDetails(Icons.person_3, 'Username', 2),
                            accountDetails(Icons.home, 'Branch', 3),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showBottomDrawer(
      BuildContext context, String inputheader, int detailPosition) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          String val = '';
          return Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      onChanged: (inputValue) {
                        val = inputValue;
                      },
                      controller: TextEditingController(
                          text: accountinfo[detailPosition]),
                      decoration: InputDecoration(
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 16),
                        labelText: inputheader,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Variables.color1),
                      child: Text(
                        'OK',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ));
        });
  }

  Padding accountDetails(IconData icon, String header, int position) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                icon,
                color: Colors.black,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    header,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    accountinfo[position],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {
                    showBottomDrawer(context, header, position);
                  },
                  icon: Icon(Icons.edit))
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
