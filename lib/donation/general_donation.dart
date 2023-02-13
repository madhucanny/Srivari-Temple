import 'package:flutter/material.dart';
import 'package:login/donation/monthly_maintenance.dart';
import 'package:login/donation/onetime_donation_detailpage.dart';

class GeneralDonation extends StatelessWidget {
  const GeneralDonation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff621055),
          elevation: 0,
          leading: GestureDetector(
            onTap: Navigator.of(context).pop,
            child: const Icon(Icons.keyboard_backspace),
          ),
          title: const Text(
            'General Donations',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          bottom: TabBar(
            indicatorColor: Color(0xffb52b65),
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.label,
            automaticIndicatorColorAdjustment: true,
            tabs: [
              Tab(child: Text('One Time Donation')),
              Tab(child: Text('Recurring Donation')),
            ],
          ),
        ),
        body: TabBarView(children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const OneTimeDonationDetailPage())));
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
                  title: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Srivari Sir Balaji - Loan Payoff',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Srivari Balaji has a loan off ₹1000.00'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('₹ 3000'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: 10,
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const MonthlyMaintenace())));
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
                  title: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Monthly Maintenance',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text('Donation for Monthly Maintenance'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('₹ 10,000'),
                            Text(
                              'Every Month',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
