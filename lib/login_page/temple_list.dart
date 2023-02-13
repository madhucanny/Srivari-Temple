import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/dashboard/pages/dashboard.dart';

import '../controller/login_controller.dart';

class TempleList extends StatelessWidget {
  const TempleList({super.key});

  @override
  Widget build(BuildContext context) {
    final logInController = Get.put(LoginController());

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: const Text(
            'Temple List',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => Column(
            children: [
              GestureDetector(
                onTap: () {
                  logInController.templename.value = logInController
                          .templeListModel.value
                          ?.elementAt(index)
                          .name ??
                      'no data';

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => DashboardPage())));
                },
                child: Card(
                  elevation: 0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 24, bottom: 24),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            height: 100,
                            width: 80,
                            color: Color(0xffffddbf),
                            child: Image.network(
                                logInController.templeListModel.value
                                        ?.elementAt(index)
                                        .image ??
                                    'no data',
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 24, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              logInController.templeListModel.value
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
                              'Moolavar',
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            SizedBox(
                              width: 250,
                              child: Text(
                                logInController.templeListModel.value
                                        ?.elementAt(index)
                                        .details ??
                                    'no data',
                                maxLines: 3,
                                style: TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
