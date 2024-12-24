import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Helperfunctions().Back_button(context),
        backgroundColor: Variables.color1,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 0, top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mytab(0, 'All'),
                mytab(1, 'Unread'),
                mytab(2, 'Read'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.white,
              height: 0.7 * height,
              width: width,
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return messageModule(width);
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Container mytab(int position, String header) {
    return Container(
        decoration: BoxDecoration(
            color: (selectedTab == position)
                ? Variables.color1
                : Colors.transparent,
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedTab = position;
                });
              },
              child: Text(header)),
        ));
  }

  InkWell messageModule(double width) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 0.5 * MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Equity Sacco',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Text(
                                  '7:00',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  '11 Dec 2024',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Text(
                              '500000 UGX was successfully sent to Robert Bwambale 0783774774377. Ref. A1234444558E on 11/12/2024 at 07:00 am EAT. Charge 0.00 UGX'),
                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Variables.color1),
                          onPressed: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                'Done',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dec 2024',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: width,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 238, 238),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.notifications_outlined),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Equity sacco',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                    '500000 UGX was successfully sent to Robert Bwambale 0783774774377. Ref. A1234444558E on 11/12/2024 at 07:00 am EAT. Charge 0.00 UGX',
                                    softWrap: false,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '07:00 AM',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('11/12/2024'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
