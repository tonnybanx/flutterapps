import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Expanded(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  settingModule(context, "Profile", 'Notifications',
                      'View and manage notifications', Icons.notifications),
                  settingModule(context, 'Security', 'Security',
                      'Manage account and password', Icons.security),
                  settingModule(context, 'Support', 'Get in tourch',
                      'Email, call or find us on social media', Icons.support),
                  settingModule(context, 'About Us', 'About our operations',
                      'Lean more about our sacco', Icons.add_business)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding settingModule(BuildContext context, String header, String action,
      String message, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                header,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Variables.color1,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: Icon(icon),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            action,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            message,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.clip,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
