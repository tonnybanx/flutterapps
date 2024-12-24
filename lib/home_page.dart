import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';
import 'package:loan_management_system/home_tab.dart';
import 'package:loan_management_system/notifications.dart';
import 'package:loan_management_system/settings_tab.dart';
import 'package:loan_management_system/support_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabs = [SupportTab(), HomeTab(), SettingsTab()];
  int currentIndex = 1;
  Helperfunctions helperfunctions = Helperfunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: helperfunctions.myDrawer(context),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Variables.color1,
        title: Text(
          'Staff Sacco',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
            icon: Icon(Icons.notifications),
            color: Colors.white,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          items: [
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
      body: tabs[currentIndex],
    );
  }
}
