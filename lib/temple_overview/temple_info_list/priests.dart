import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login/temple_overview/detail_page/prist_detailpage.dart';

import '../../controller/dashboard_controller.dart';

class Priests extends StatelessWidget {
  const Priests({super.key});

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
          'Priests',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const PriestDetailPage())));
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
                        dashboardController.priestsModel.value
                                ?.elementAt(index)
                                .image ??
                            '',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 24, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dashboardController.priestsModel.value
                                ?.elementAt(index)
                                .designation ??
                            'no data',
                        style:
                            TextStyle(color: Color(0xffb52b65), fontSize: 10),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        dashboardController.priestsModel.value
                                ?.elementAt(index)
                                .name ??
                            'no data',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'info@ourtemple.com',
                        style: TextStyle(fontSize: 10),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            dashboardController.priestsModel.value
                                    ?.elementAt(index)
                                    .mobile ??
                                'no data',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 96, right: 24),
                      child: GestureDetector(
                        onTap: () async {
                          await FlutterPhoneDirectCaller.callNumber(
                              dashboardController.priestsModel.value
                                      ?.elementAt(index)
                                      .mobile ??
                                  '');
                        },
                        child: const CircleAvatar(
                          maxRadius: 15,
                          backgroundColor: Color(0xffffddbf),
                          child: Icon(
                            Icons.call_outlined,
                            color: Color(0xffff7940),
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
