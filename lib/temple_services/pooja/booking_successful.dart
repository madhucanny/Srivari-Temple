import 'package:flutter/material.dart';

class BookingSuccessful extends StatelessWidget {
  const BookingSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.network(
          'https://static.theprint.in/wp-content/uploads/2020/06/Tirupati-e1597050074221.jpg?compress=true&quality=80&w=376&dpr=2.6',
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        toolbarHeight: 300,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: Navigator.of(context).pop,
                child: const Icon(
                  Icons.keyboard_backspace,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            'Successful',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xffb52b65)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Your payment method was successfully completed.Your payment method was successfully completed.',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ]),
      ),
    );
  }
}
