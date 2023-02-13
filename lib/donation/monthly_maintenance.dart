import 'package:flutter/material.dart';
import 'package:login/donation/review_booking.dart';

class MonthlyMaintenace extends StatelessWidget {
  const MonthlyMaintenace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff621055),
        elevation: 0,
        leading: GestureDetector(
          onTap: Navigator.of(context).pop,
          child: const Icon(Icons.keyboard_backspace),
        ),
        title: const Text(
          'Monthly Maintenace',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 120,
            width: double.maxFinite,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monthly Maintenace',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    (Text(
                      'Donations for Monthly Maintenance',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Text('₹ 23456',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffff7940),
                            fontWeight: FontWeight.w600)),
                  ]),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 16, right: 16, bottom: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Donation Details',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      maxLines: 4,
                      maxLength: 1000,
                      cursorColor: Color(0xffb52b65),
                      decoration: InputDecoration(
                        hintText: 'Enter Note',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          width: 1,
                          color: Color(0xffb52b65),
                        )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        )),
                      ),
                    ),
                  ]),
            ),
          )
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: const Text('Donation'),
                content: const Text(
                    'You have chosen recurring payment.The donation amount will be auto debited every month.Are you sure you want to continue?'),
                actions: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: const Text(
                          'No',
                          style: TextStyle(
                            color: Color(0xff621055),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ReviewBooking()),
                          );
                        },
                        child: const Text(
                          'Yes',
                          style: TextStyle(
                            color: Color(0xff621055),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xffff7940)),
          child: const Text(
            'Donate',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
