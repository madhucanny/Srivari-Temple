import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dashboard_controller.dart';

class TempleTiming extends StatelessWidget {
  const TempleTiming({super.key});

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
          'Temple Timings',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              color: const Color(0xffffddbf),
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.only(left: 34, top: 10),
                  child: Text(
                    'Temple\nWorking Hours',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/calender.png',
                  scale: 3,
                )
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24),
              child: Text(
                dashboardController.templeTimingModel.value
                        ?.elementAt(0)
                        .title ??
                    '',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16, top: 24),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xffffddbf),
                      child: Image.asset(
                        'assets/images/sunrise.png',
                        scale: 2.6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dashboardController.templeTimingModel.value
                                    ?.elementAt(0)
                                    .timings?[index]
                                    .subTitle ??
                                '',
                            style: TextStyle(
                                color: Color(0xffb52b65), fontSize: 10),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '${dashboardController.templeTimingModel.value?.elementAt(0).timings?[index].startTime ?? ''} to ${dashboardController.templeTimingModel.value?.elementAt(0).timings?[index].endTime ?? ''}',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 52,
              ),
              child: Text(
                'Weekends & Holidays',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    color: const Color(0xffffddbf),
                    child: Image.asset(
                      'assets/images/sun.png',
                      scale: 2.6,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dashboardController.templeTimingModel.value
                                  ?.elementAt(1)
                                  .timings?[0]
                                  .subTitle ??
                              '',
                          style:
                              TextStyle(color: Color(0xffb52b65), fontSize: 10),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '${dashboardController.templeTimingModel.value?.elementAt(1).timings?[0].startTime ?? ''} to ${dashboardController.templeTimingModel.value?.elementAt(1).timings?[0].endTime ?? ''}',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
