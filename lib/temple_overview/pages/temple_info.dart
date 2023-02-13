// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:login/temple_overview/temple_info_list/committee.dart';
import 'package:login/temple_overview/temple_info_list/contact.dart';
import 'package:login/temple_overview/temple_info_list/priests.dart';
import 'package:login/temple_overview/temple_info_list/temple_history.dart';
import 'package:login/temple_overview/temple_info_list/temple_timing.dart';
import 'package:login/temple_overview/temple_info_list/trustee.dart';

class TempleInfo extends StatelessWidget {
  TempleInfo({super.key});
  List title = [
    "Temple History",
    "Temple Timings",
    "Trustees",
    "Priests",
    "Committee",
    "Contact"
  ];
  List image = [
    'assets/images/paper.png',
    'assets/images/clock.png',
    'assets/images/shield.png',
    'assets/images/guru.png',
    'assets/images/users.png',
    'assets/images/phone.png',
  ];

  List page = [
    const TempleHistory(),
    const TempleTiming(),
    const Trustee(),
    const Priests(),
    const Committee(),
    Contact(),
  ];

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
          'Temple Info',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: title.length,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => page[index])));
              },
              child: Card(
                elevation: 0,
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: const Color(0xffffddbf),
                          child: Image.asset(
                            image[index],
                            scale: 2.6,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
