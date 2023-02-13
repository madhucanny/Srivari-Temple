import 'package:flutter/material.dart';
import 'package:login/dashboard/wigets/upcomming_events_detail_page.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.maxFinite,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          const UpcommingEventDetailPage())));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 110,
                      width: 146,
                      color: Color(0xffffddbf),
                      child: Image.network(
                        'https://www.w3schools.com/css/img_forest.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Friday, December 12, 2019',
                    style: TextStyle(
                        color: Color(
                          0xffb52b65,
                        ),
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Sayana Utsavam',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text('Cradling of the deity befo…',
                      style: TextStyle(
                        fontSize: 12,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    '\$51',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffff7940),
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
