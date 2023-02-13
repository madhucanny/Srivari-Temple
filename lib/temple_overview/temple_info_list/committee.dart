import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import '../../controller/dashboard_controller.dart';

class Committee extends StatelessWidget {
  const Committee({super.key});

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
          'Committee',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => GestureDetector(
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: ((context) => const PriestDetailPage())));
          // },
          child: Card(
            elevation: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        dashboardController.committeeModel.value
                                ?.elementAt(index)
                                .image ??
                            'no data',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dashboardController.committeeModel.value
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
                        dashboardController.committeeModel.value
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
                      Row(
                        children: [
                          Text(
                            dashboardController.committeeModel.value
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 96, right: 24),
                      child: GestureDetector(
                        onTap: () async {
                          await FlutterPhoneDirectCaller.callNumber(
                              dashboardController.committeeModel.value
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
