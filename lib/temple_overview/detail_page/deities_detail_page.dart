import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/controller/dashboard_controller.dart';

class DeitiesDetailPage extends StatelessWidget {
  const DeitiesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashboardController());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: AppBar(
          elevation: 0,
          flexibleSpace: SizedBox(
              width: double.infinity,
              child: Image.network(
                dashboardController.deitiesModel.value?.elementAt(1).image ??
                    '',
                fit: BoxFit.cover,
              )),
          leading: GestureDetector(
              onTap: Navigator.of(context).pop,
              child: const Icon(Icons.keyboard_backspace)),
        ),
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16, left: 16),
                child: Text(
                  dashboardController.deitiesName.value,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(top: 22, left: 16, right: 16, bottom: 16),
                  child: Text(
                    dashboardController.deitiesDetails.value,
                  )),
            ],
          ),
        );
      }),
    );
  }
}
