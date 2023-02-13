import 'package:flutter/material.dart';

class MyFamilyDetailPage extends StatelessWidget {
  const MyFamilyDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff621055),
        elevation: 0,
        title: const Text(
          'My Family',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.edit_note),
          )
        ],
      ),
      body: Column(children: [
        Card(
          child: SizedBox(
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Vinoth',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Son',
                      style: TextStyle(fontSize: 14),
                    )
                  ]),
            ),
          ),
        ),
        Card(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Horoscope Details',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            const CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: Color(0xffffddbf),
                              child: Icon(
                                Icons.filter_vintage,
                                color: Color(0xffff7940),
                                size: 40,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Zodiac'),
                                SizedBox(height: 4),
                                Text(
                                  'Mithunam',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: Color(0xffffddbf),
                              child: Icon(
                                Icons.star_outline,
                                color: Color(0xffff7940),
                                size: 40,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Star'),
                                SizedBox(height: 4),
                                Text(
                                  'Mirugaseersham',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
        Card(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Horoscope Details',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    Column(children: [
                      const SizedBox(height: 24),
                      Row(children: [
                        const CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: Color(0xffffddbf),
                          child: Icon(
                            Icons.filter_vintage,
                            color: Color(0xffff7940),
                            size: 40,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Zodiac'),
                              SizedBox(height: 4),
                              Text(
                                'Mithunam',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ])
                      ]),
                      const SizedBox(
                        height: 24,
                      )
                    ]),
                  ]),
            ),
          ),
        )
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              side: const BorderSide(color: Colors.black)
              // backgroundColor: const Color(0xffff7940)
              ),
          child: const Text(
            'Delete Memeber',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
