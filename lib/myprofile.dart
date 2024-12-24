import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';
import 'package:loan_management_system/myaccount.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

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
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: screenwidth,
        height: screenheight,
        color: Colors.white,
        child: Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 30),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/image_person.jpg'))),
                      ),
                    ),
                    profileModule(Icons.person, 'My account', context),
                    profileModule(Icons.settings, 'Settings', context),
                    profileModule(
                        Icons.notifications, 'Notifications', context),
                    profileModule(Icons.exit_to_app, 'Log out', context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  InkWell profileModule(IconData icon, String header, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Myaccount()));
      },
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    header,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                )
              ],
            ),
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
