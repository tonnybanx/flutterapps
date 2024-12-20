import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class SingleEntry {
  SingleEntry(this.Name, this.Id, this.Amount);
  String Name, Id;
  double Amount;
  String get name => Name;
  String get id => Id;
  double get amount => Amount;
}

class QuickAction {
  String action, image_name;
  QuickAction(this.action, this.image_name);
}

class _HomeTabState extends State<HomeTab> {
  List<SingleEntry> Entries = [
    SingleEntry('Atukunda John', '100000568488485748-sacco', 5000000),
    SingleEntry('Atukunda John', '100000568488485748-sacco', 1000000),
    SingleEntry('Atukunda John', '100000568488485748-sacco', -1000000),
  ];
  List<QuickAction> quickActions = [
    QuickAction('Apply for Loan', 'apply loan.png'),
    QuickAction('Make Payment', 'payment.png'),
    QuickAction('Payment History', 'history.png'),
    QuickAction('Loan Status', 'image 5.jpg'),
    QuickAction('My Profile', 'image 4.jpg'),
    QuickAction('Loan Calculator', 'Calculator.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2, color: Variables.color1)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'search',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Icon(Icons.search),
                        )),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Quick Actions',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      0.3 * MediaQuery.of(context).size.height,
                                  child: GridView.builder(
                                      gridDelegate:
                                          SliverGridDelegateWithMaxCrossAxisExtent(
                                              maxCrossAxisExtent: 100,
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 10),
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              color: Variables.color1,
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0),
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              'assets/images/${quickActions[index].image_name}'))),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      quickActions[index]
                                                          .action,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My Savings',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          memberModule(context, 0),
                          Text(
                            'My Shares',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          memberModule(context, 1),
                          Text(
                            'My Loans',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          memberModule(context, 2),
                        ],
                      )
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

  Container memberModule(BuildContext context, int index) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Variables.color1,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Colors.white)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Entries[index].name,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image:
                                AssetImage('assets/images/inverse.svg.png'))))
              ],
            ),
            Text(
              '${Entries[index].amount} UGX',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            Text(
              Entries[index].id,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
