import 'package:flutter/material.dart';
import 'package:login/donation/review_booking.dart';

class OneTimeDonationDetailPage extends StatefulWidget {
  const OneTimeDonationDetailPage({super.key});

  @override
  State<OneTimeDonationDetailPage> createState() =>
      _OneTimeDonationDetailPageState();
}

class _OneTimeDonationDetailPageState extends State<OneTimeDonationDetailPage> {
  bool isReadmore = false;
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
          'Srivari Sri Balaji _Loan Payoff',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Srivari Sri Balaji _Loan Payoff',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buildText(
                        'Thanking your donors for their previous contributions and letting them know how grateful you are is a key element of successful church donation letters. This helps your church members feel valued and involved in the work your church is doing. Further, this helps you maintain a strong relationship with your congregation and increase the potential for future donations.'),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // toggle the bool variable true or false
                          isReadmore = !isReadmore;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              isReadmore ? 'Less Detail' : 'More Detail',
                              style: TextStyle(
                                  color: Color(0xffb52b65),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
                    TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 8,
                      cursorColor: Color(0xffb52b65),
                      decoration: InputDecoration(
                        hintText: '₹ Amount',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          width: 1,
                          color: Color(0xffb52b65),
                        )),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey)),
                      ),
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
          ),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReviewBooking()),
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

  Widget buildText(String text) {
    final lines = isReadmore ? null : 3;
    return Text(
      text,
      style: TextStyle(fontSize: 16),
      maxLines: lines,
      overflow: isReadmore ? TextOverflow.visible : TextOverflow.ellipsis,
    );
  }
}
