import 'package:flutter/material.dart';
import 'package:login/donation/general_donation.dart';

class TempleDonation extends StatelessWidget {
  const TempleDonation({super.key});

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
          'Temple Donations',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const GeneralDonation())));
            },
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                    maxRadius: 28,
                    backgroundColor: const Color(0xffffddbf),
                    child: Icon(
                      Icons.volunteer_activism,
                      color: Colors.orange,
                    )),
                title: Text(
                  'General Donation',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('All common Donations for Temple'),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                  size: 16,
                ),
              ),
            )),
      ),
    );
  }
}
