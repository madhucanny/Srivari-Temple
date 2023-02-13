import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/controller/dashboard_controller.dart';
import 'package:login/dashboard/pages/home.dart';
import 'package:login/dashboard/pages/profile.dart';
import 'package:login/dashboard/pages/services.dart';

class DashboardPage extends StatelessWidget {
  final dashboardController = Get.put(DashboardController());

  DashboardPage({super.key});

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Services(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: _widgetOptions.elementAt(dashboardController.selectedindex.value),
        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  //color: Colors.black,
                ),
                label: 'Home',
                // backgroundColor: Color(0xffff7940),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings_outlined,
                    size: 30,
                    // color: Colors.black,
                  ),
                  label: 'Services'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    //color: Colors.black,
                  ),
                  label: 'Profile'),
            ],
            currentIndex: dashboardController.selectedindex.value,
            selectedItemColor: const Color(0xffb52b65),
            iconSize: 40,
            onTap: (index) {
              dashboardController.selectedindex.value = index;
            },
            elevation: 5),
      );
    });
  }
}
