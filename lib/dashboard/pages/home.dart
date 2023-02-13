import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/controller/dashboard_controller.dart';
import 'package:login/controller/login_controller.dart';
import 'package:login/dashboard/wigets/event_card.dart';
import 'package:login/dashboard/wigets/upcomming_events_detail_page.dart';
import 'package:login/donation/temple_donation.dart';
import 'package:login/temple_overview/pages/album.dart';
import 'package:login/temple_overview/pages/deities.dart';
import 'package:login/temple_overview/pages/temple_info.dart';

class Home extends StatelessWidget {
  Home({this.title, super.key});
  final String? title;
  List image = [
    'assets/images/temple.png',
    'assets/images/shiva.png',
    'assets/images/picture.png'
  ];

  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashboardController());
    final logInController = Get.put(LoginController());
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              logInController.templename.value,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.white),
        body: dashboardController.isLoading.value
            ? Center(
                child: CircularProgressIndicator(
                color: Color(0xffb52b65),
              ))
            : SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 150,
                        width: double.infinity,
                        child: CarouselSlider(
                            items: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width * 1.5,
                                    width:
                                        MediaQuery.of(context).size.width * 2,
                                    color: Color(0xffffddbf),
                                    child: Image.network(
                                      'https://c.ndtvimg.com/2021-09/g3kjs028_tirupati-afp-650_625x300_21_September_21.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width * 1.5,
                                    width:
                                        MediaQuery.of(context).size.width * 2,
                                    color: Color(0xffffddbf),
                                    child: Image.network(
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Tirumala_090615.jpg/1200px-Tirumala_090615.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width * 1.5,
                                    width:
                                        MediaQuery.of(context).size.width * 2,
                                    color: Color(0xffffddbf),
                                    child: Image.network(
                                      'https://www.tirumala.org/NewImages/HomeBannerNov2020/2.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width * 1.5,
                                    width:
                                        MediaQuery.of(context).size.width * 2,
                                    color: Color(0xffffddbf),
                                    child: Image.network(
                                      'https://aertrip.com/blog/wp-content/uploads/2022/09/tirupati3.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            options: CarouselOptions(
                                autoPlay: true,
                                onPageChanged: (index, reason) =>
                                    dashboardController.homeindex.value
                                        .obs(index = 3),
                                autoPlayInterval: const Duration(seconds: 2))),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 110,
                      color: const Color(0xffffddbf),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, top: 16, right: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      text: 'Help our community \nto achieve ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Big Dreams',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 34,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xffb52b65),
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6))),
                                    child: TextButton(
                                      child: const Text(
                                        '  Donate  ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffb52b65)),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    const TempleDonation())));
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/images/money.png',
                                scale: 12,
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 14, left: 16, right: 16),
                      child: Row(
                        children: [
                          const Text(
                            'Upcoming Events',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const UpcommingEventDetailPage())));
                            },
                            child: const Text(
                              'See All  ',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 4,
                        left: 16,
                      ),
                      child: Text(
                        'Discover all upcoming events',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const EventCard(),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'Temple Overview',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16, top: 4),
                      child: Text(
                        'Explore more about your temple',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: double.maxFinite,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: GestureDetector(
                                  onTap: () {
                                    print(
                                        '##########${dashboardController.templeHistoryModel.value?.name}');
                                    print(
                                        '########${logInController.templename.value}');
                                    if (logInController.templename.value ==
                                        dashboardController
                                            .templeHistoryModel.value?.name) {
                                      dashboardController.templehistory.value =
                                          dashboardController.templeHistoryModel
                                                  .value?.history ??
                                              '';
                                    } else {
                                      dashboardController.templehistory.value =
                                          '';
                                    }

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TempleInfo()),
                                    );
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    color: const Color(0xffffddbf),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/temple.png',
                                          scale: 2.8,
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        const Text(
                                          'Temple Info',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Deities()),
                                    );
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    color: const Color(0xffffddbf),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/shiva.png',
                                          scale: 2.8,
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        const Text(
                                          'Deities',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                const Album())));
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    color: const Color(0xffffddbf),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/picture.png',
                                          scale: 2.8,
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        const Text(
                                          'Album',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
      );
    });
  }
}
