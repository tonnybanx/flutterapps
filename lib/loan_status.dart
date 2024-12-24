import 'package:flutter/material.dart';
import 'package:loan_management_system/constants.dart';
import 'package:loan_management_system/helperfunctions.dart';
import 'package:loan_management_system/loan_status_details.dart';

class LoanStatus extends StatefulWidget {
  const LoanStatus({super.key});

  @override
  State<LoanStatus> createState() => _LoanStatusState();
}

class _LoanStatusState extends State<LoanStatus> {
  bool isAvailable = false;
  List<List<String>> values = [
    [
      '1000000',
      'Pending',
      '02 Nov 2024',
      "The guarenters haven't yet approved your application"
    ],
    [
      '1200000',
      'Pending',
      '02 Dec 2023',
      "Still waiting for approval from the sacco chairman"
    ],
    [
      '15000000',
      'Rejected',
      '4 Jan 2025',
      "The loan application has already been disbursted just wait for a notification message"
    ]
  ];

  List<String> statuses = ['All', 'Pending', 'Approved', 'Rejected'];
  List<List<String>> getList(List<List<String>> mainList, int selectedTab) {
    List<List<String>> mylist = [];
    for (int i = 0; i < (mainList.length); i++) {
      if (selectedTab == 0) {
        return mainList;
      } else if (mainList[i][1] == statuses[selectedTab]) {
        mylist.add(mainList[i]);
      }
    }
    return mylist;
  }

  Helperfunctions helperfunctions = Helperfunctions();
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: helperfunctions.Back_button(context),
        backgroundColor: Variables.color1,
        title: Text(
          'Application Loan Status',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: screenwidth,
        height: screenheight,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/vector.png'))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  optionTab(0, selectedindex, 'All'),
                  optionTab(1, selectedindex, 'Pending'),
                  optionTab(2, selectedindex, 'Approved'),
                  optionTab(3, selectedindex, 'Rejected')
                ],
              ),
            ),
            isAvailable
                ? noAvailableOptions(screenheight, screenwidth)
                : Container(
                    width: 0.9 * screenwidth,
                    height: 0.8 * screenheight,
                    child: ListView.builder(
                        itemCount: getList(values, selectedindex).length,
                        itemBuilder: (context, index) {
                          if (getList(values, selectedindex).isNotEmpty) {
                            return status_module(screenwidth, index);
                          }
                          return null;
                        }),
                  ),
          ],
        ),
      ),
    );
  }

  Stack noAvailableOptions(double screenheight, double screenwidth) {
    return Stack(
      children: [
        Container(
          width: screenwidth,
          height: screenheight * 0.5,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/not available.jpeg'))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'No available loans',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ],
        )
      ],
    );
  }

  GestureDetector optionTab(int position, int selectedOption, String text) {
    bool selected = (position == selectedOption);
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = position;
          isAvailable = getList(values, selectedindex).isEmpty;
        });
      },
      child: Container(
        width: 65,
        height: 30,
        decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: selected ? Colors.black : Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Padding status_module(double screenwidth, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        width: 0.6 * screenwidth,
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Image.asset('assets/images/image14 copy.jpg')),
                  IconButton(
                      tooltip: 'Details',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoanStatusDetails(
                                    details: getList(
                                        values, selectedindex)[index])));
                      },
                      icon: Icon(Icons.more_vert_sharp))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Applied amount',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    'UGX${getList(values, selectedindex)[index][0]}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Loan status',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          getList(values, selectedindex)[index][1],
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Applied date',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          getList(values, selectedindex)[index][2],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
