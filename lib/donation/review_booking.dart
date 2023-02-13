import 'package:flutter/material.dart';
import 'package:login/donation/make_payment.dart';

class ReviewBooking extends StatelessWidget {
  const ReviewBooking({super.key});

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
          'Review Booking',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Container(
                  width: double.infinity,
                  color: const Color(0xffffddbf),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.info_outline),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 2),
                                child: Text(
                                  'Booking Information',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Thank you for your generous donation. You truly make the different for us, and we are extremely greatful.',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wed Jan 25,2023',
                      style: TextStyle(
                          color: Color(0xffb52b65),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Srivari Sri Balaji - Loan Payoff',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xffffddbf),
                          radius: 30,
                          child: Image.asset(
                            'assets/images/clock.png',
                            scale: 2.5,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Donation Type'),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'One Time Donation',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Srivari Sri Balaji - Loan Payoff',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        Text(
                          '₹ 23456',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Normal',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Divider(thickness: 1),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SubTotal(excl tax)',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        Text(
                          '₹ 23456',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tax(0%)',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey.shade600),
                        ),
                        Text(
                          '₹ 0',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Divider(thickness: 1),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Grand Total',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '₹ 23456',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800),
                        )
                      ],
                    )
                  ],
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
              MaterialPageRoute(builder: (context) => const MakePayment()),
            );
          },
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xffff7940)),
          child: const Text(
            'Proceed To Pay',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
