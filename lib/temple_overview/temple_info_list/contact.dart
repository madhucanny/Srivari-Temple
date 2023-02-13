import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:login/temple_overview/temple_info_list/widget/map.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/dashboard_controller.dart';

class Contact extends StatelessWidget {
  Contact({super.key});

  @override
  Widget build(BuildContext context) {
    String callno = '9876543210';

    // void launchMap() async {
    //   final url = Uri.parse(
    //       "https://maps.google.com/maps/search/?api=$API_KEY&query=13.6288,79.4192");
    //   if (await canLaunchUrl(url)) {
    //     print("Can launch");

    //     await launchUrl(url);
    //   } else {
    //     print("Could not launch");
    //     throw 'Could not launch Maps';
    //   }
    // }
    final dashboardController = Get.put(DashboardController());
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
          'Contact Us',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              color: const Color(0xffffddbf),
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.only(left: 34, top: 10),
                  child: Text(
                    'We are here\nto Help You',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/contact.png',
                  scale: 3,
                ),
                const SizedBox(
                  width: 16,
                )
              ]),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 24),
              child: Text(
                'Reach Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: GestureDetector(
                onTap: () async {
                  await FlutterPhoneDirectCaller.callNumber(callno);
                },
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xffffddbf),
                      child: Image.asset(
                        'assets/images/phone.png',
                        scale: 2.6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone',
                            style: TextStyle(
                                color: Color(0xffb52b65), fontSize: 10),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            dashboardController
                                    .templeHistoryModel.value?.phone ??
                                'No data',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: GestureDetector(
                onTap: () async {
                  String email = Uri.encodeComponent(
                    dashboardController.templeHistoryModel.value?.email ??
                        'No data',
                  );
                  String subject = Uri.encodeComponent("Ask Your Questions");
                  String body = Uri.encodeComponent("In Temple");
                  print(subject);
                  Uri mail =
                      Uri.parse("mailto:$email?subject=$subject&body=$body");
                  if (await launchUrl(mail)) {
                  } else {}
                },
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xffffddbf),
                      child: Image.asset(
                        'assets/images/mail.png',
                        scale: 2.6,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                color: Color(0xffb52b65), fontSize: 10),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            dashboardController
                                    .templeHistoryModel.value?.email ??
                                'No data',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: GestureDetector(
                onTap: () {
                  _launchweb();
                },
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xffffddbf),
                      child: Image.asset(
                        'assets/images/globe.png',
                        scale: 2.6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'website',
                            style: TextStyle(
                                color: Color(0xffb52b65), fontSize: 10),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          SizedBox(
                            width: 250,
                            child: Text(
                              dashboardController
                                      .templeHistoryModel.value?.website ??
                                  'No data',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 56),
              child: Text(
                'Address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Map())));
                },
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xffffddbf),
                      child: Image.asset(
                        'assets/images/map.png',
                        scale: 2.6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 250,
                            child: Text(
                              dashboardController
                                      .templeHistoryModel.value?.address ??
                                  'No data',
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  _launchweb() async {
    const url = 'https://www.tirumala.org/';
    final uri = Uri.parse(url);
    await launchUrl(uri);
    throw 'Could not launch $url';
  }
}
