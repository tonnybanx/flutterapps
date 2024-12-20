import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/home_tab.dart';
import 'package:loan_management_system/settings_tab.dart';
import 'package:loan_management_system/support_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 200,
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Variables.color1,
                        border: Border.all(color: Variables.color1, width: 2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Apply for loan',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Variables.color1,
                        border: Border.all(color: Variables.color1, width: 2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Make payment',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Variables.color1,
                        border: Border.all(color: Variables.color1, width: 2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Payment History',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Variables.color1,
                        border: Border.all(color: Variables.color1, width: 2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Loan status',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Variables.color1,
                        border: Border.all(color: Variables.color1, width: 2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'My profile',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Variables.color1,
                        border: Border.all(color: Variables.color1, width: 2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Loan calculator',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Variables.color1,
        title: Text(
          'Staff Sacco',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.white,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.support,
              color: Colors.black,
            ),
            label: 'Support'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: 'Settings'),
      ]),
      body: SupportTab(),
    );
  }
}
