import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/controller/dashboard_controller.dart';
import 'package:login/temple_overview/detail_page/deities_detail_page.dart';

class Deities extends StatelessWidget {
  const Deities({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Deities',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            dashboardController.deitiesDetails.value = dashboardController
                    .deitiesModel.value
                    ?.elementAt(index)
                    .description ??
                '';
            dashboardController.deitiesName.value =
                dashboardController.deitiesModel.value?.elementAt(index).name ??
                    '';
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DeitiesDetailPage()));
          },
          child: Card(
            elevation: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      height: 100,
                      width: 80,
                      color: Color(0xffffddbf),
                      child: Image.network(
                        dashboardController.deitiesModel.value
                                ?.elementAt(1)
                                .image ??
                            'no data',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 24, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dashboardController.deitiesModel.value
                                ?.elementAt(index)
                                .name ??
                            'no data',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        dashboardController.deitiesModel.value
                                ?.elementAt(index)
                                .title ??
                            'no data',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          dashboardController.deitiesModel.value
                                  ?.elementAt(index)
                                  .description ??
                              'no data',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
