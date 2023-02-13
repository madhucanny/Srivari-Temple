import 'package:flutter/material.dart';
import 'package:login/temple_services/pooja/temple_poojas.dart';

class Services extends StatelessWidget {
  Services({super.key});

  List title = ["Pooja", "Auditorium", "Rooms"];

  List subtitle = [
    "Book your pooja",
    "Book hall for your family celebrations",
    "Book your stay"
  ];

  List image = [
    'assets/images/candle.png',
    'assets/images/room.png',
    'assets/images/bed.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Temple Services',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
          backgroundColor: const Color(0xff621055),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.notifications),
            ),
          ]),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: title.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TemplePoojas()),
                );
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
                            const SizedBox(height: 4),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Text(
                                subtitle[index],
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
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
        ],
      ),
    );
  }
}
