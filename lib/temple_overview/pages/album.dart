import 'package:flutter/material.dart';
import 'package:login/temple_overview/detail_page/album_detail_page.dart';

class Album extends StatelessWidget {
  const Album({super.key});

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
            'Album',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlbumDetailPage(),
                        ));
                  },
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    color: Color(0xffffddbf),
                    child: Image.network(
                      'https://oneday.travel/wp-content/uploads/one-day-tirupati-local-sightseeing-trip-by-car.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Adhyayana Utsavam 2019',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Friday, December 12, 2019',
                style: TextStyle(
                  fontSize: 10,
                ),
              )
            ]),
          ),
        ));
  }
}
