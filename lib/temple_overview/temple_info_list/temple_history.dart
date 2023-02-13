import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/controller/dashboard_controller.dart';

class TempleHistory extends StatelessWidget {
  const TempleHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashboardController());
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: false,
          pinned: true,
          floating: false,
          flexibleSpace: FlexibleSpaceBar(
            background: CarouselSlider(
              items: [
                Container(
                  width: double.infinity,
                  child: Image.network(
                    'https://thumbs.dreamstime.com/b/hindu-temple-exterior-hindu-temple-lemont-illinois-usa-159623112.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    'https://thumbs.dreamstime.com/z/vertical-shot-hindu-temple-prem-mandir-india-vertical-shot-hindu-temple-prem-mandir-india-173290897.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    'https://as1.ftcdn.net/v2/jpg/03/88/07/18/1000_F_388071889_vdcySntZNFsdWw6iis6epigXzpmSBlMx.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
              options: CarouselOptions(
                aspectRatio: 1,
                viewportFraction: 1,
                autoPlay: true,
                disableCenter: false,
                autoPlayInterval: const Duration(seconds: 4),
              ),
            ), //Images.network
          ), //FlexibleSpaceBar
          expandedHeight: 230,
          backgroundColor: Color(0xff621055),
          leading: GestureDetector(
              onTap: Navigator.of(context).pop,
              child: const Icon(Icons.keyboard_backspace)),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 16),
                  child: Text(
                    'Our Temple History',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 22, left: 16, right: 16, bottom: 20),
                  child: Text(dashboardController.templehistory.value),
                ),
              ],
            ),
            childCount: 1,
          ),
        )
      ],
    ));
  }
}
