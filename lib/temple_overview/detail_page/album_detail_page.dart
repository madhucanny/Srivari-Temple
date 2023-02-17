import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/controller/dashboard_controller.dart';
import 'package:login/temple_overview/detail_page/audioplayer.dart';
import 'package:login/temple_overview/detail_page/videoplayer.dart';

class AlbumDetailPage extends StatelessWidget {
  AlbumDetailPage({super.key});
  final dashboardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    List image = [
      'https://img.jagranjosh.com/images/2021/October/22102021/titumala%20tirupati%20devasthanam.png',
      'https://assets.thehansindia.com/h-upload/2021/02/07/1029605-balaji-temple.webp',
      'https://static.theprint.in/wp-content/uploads/2020/06/Tirupati-e1597050074221.jpg?compress=true&quality=80&w=376&dpr=2.6',
      'https://mediaim.expedia.com/destination/1/05f10fe609d00c9151caa347c2e3f085.jpg'
    ];
    List videoURL = [
      'https://www.youtube.com/watch?v=YhfSnqd23eU',
      'https://www.youtube.com/watch?v=J8QCip-CHxc&list=RDJ8QCip-CHxc&start_radio=1',
      'https://www.youtube.com/watch?v=t9UfkNDC_0c&list=RDJ8QCip-CHxc&index=3',
      'https://www.youtube.com/watch?v=ym4o5F8ncY0&list=RDJ8QCip-CHxc&index=10'
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Color(0xffb52b65),
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.label,
            automaticIndicatorColorAdjustment: true,
            tabs: [
              Tab(
                text: 'Image',
              ),
              Tab(
                text: 'Video',
              ),
              Tab(
                text: 'Audio',
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff621055),
          elevation: 0,
          leading: GestureDetector(
            onTap: Navigator.of(context).pop,
            child: const Icon(Icons.keyboard_backspace),
          ),
          title: const Text(
            'Adhyayana Utsavam 2019',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: .8),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                  child: Column(
                    children: [
                      GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: ((context) => page[index])));
                          // },
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Container(
                            height: 110,
                            width: 90,
                            color: Color(0xffffddbf),
                            child: Image.network(
                              image[index],
                              fit: BoxFit.cover,
                            )),
                      )),
                    ],
                  ),
                );
              },
            ),
            ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => VideoPlayerScreen(
                      videoURL: videoURL[index],
                    )),
            // AudioPlayerCard(),
          ],
        ),
      ),
    );
  }
}

//..................
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:login/controller/dashboard_controller.dart';
// import 'package:login/temple_overview/detail_page/audioplayer.dart';
// import 'package:login/temple_overview/detail_page/videoplayer.dart';

// class AlbumDetailPage extends StatelessWidget {
//   AlbumDetailPage({super.key});
//   final dashboardController = Get.put(DashboardController());

//   @override
//   Widget build(BuildContext context) {
//     List image = [
//       'https://img.jagranjosh.com/images/2021/October/22102021/titumala%20tirupati%20devasthanam.png',
//       'https://assets.thehansindia.com/h-upload/2021/02/07/1029605-balaji-temple.webp',
//       'https://static.theprint.in/wp-content/uploads/2020/06/Tirupati-e1597050074221.jpg?compress=true&quality=80&w=376&dpr=2.6',
//       'https://mediaim.expedia.com/destination/1/05f10fe609d00c9151caa347c2e3f085.jpg'
//     ];
//     List videoURL = [
//       'https://www.youtube.com/watch?v=YhfSnqd23eU',
//       'https://www.youtube.com/watch?v=J8QCip-CHxc&list=RDJ8QCip-CHxc&start_radio=1',
//       'https://www.youtube.com/watch?v=t9UfkNDC_0c&list=RDJ8QCip-CHxc&index=3',
//       'https://www.youtube.com/watch?v=ym4o5F8ncY0&list=RDJ8QCip-CHxc&index=10'
//     ];
//     return DefaultTabController(
//       length: 3,

//       // appBar: AppBar(
//       //   bottom: const TabBar(
//       //     indicatorColor: Color(0xffb52b65),
//       //     indicatorWeight: 4,
//       //     indicatorSize: TabBarIndicatorSize.label,
//       //     automaticIndicatorColorAdjustment: true,
//       //     tabs: [
//       //       Tab(
//       //         text: 'Image',
//       //       ),
//       //       Tab(
//       //         text: 'Video',
//       //       ),
//       //       Tab(
//       //         text: 'Audio',
//       //       ),
//       //     ],
//       //   ),
//       //   centerTitle: true,
//       //   backgroundColor: const Color(0xff621055),
//       //   elevation: 0,
//       //   leading: GestureDetector(
//       //     onTap: Navigator.of(context).pop,
//       //     child: const Icon(Icons.keyboard_backspace),
//       //   ),
//       //   title: const Text(
//       //     'Adhyayana Utsavam 2019',
//       //     style: TextStyle(
//       //         fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
//       //   ),
//       // ),
//       child: Scaffold(
//         body: SafeArea(
//           child: CustomScrollView(
//             slivers: [
//               SliverAppBar(
//                 flexibleSpace: FlexibleSpaceBar(
//                   centerTitle: true,
//                   title: Text(
//                     'Adhyayana Utsavam 2019',
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white),
//                   ),

//                   // TabBar(
//                   //   indicatorColor: Color(0xffb52b65),
//                   //   indicatorWeight: 4,
//                   //   indicatorSize: TabBarIndicatorSize.label,
//                   //   automaticIndicatorColorAdjustment: true,
//                   //   tabs: [
//                   //     Tab(
//                   //       text: 'Image',
//                   //     ),
//                   //     Tab(
//                   //       text: 'Video',
//                   //     ),
//                   //     Tab(
//                   //       text: 'Audio',
//                   //     ),
//                   //   ],
//                   // ),
//                 ),
//                 leading: GestureDetector(
//                     onTap: Navigator.of(context).pop,
//                     child: const Icon(Icons.keyboard_backspace)),
//                 backgroundColor: Color(0xff621055),
//               ),
//               SliverList(
//                   delegate: SliverChildBuilderDelegate(
//                 (context, index) => TabBarView(
//                   children: [
//                     GridView.builder(
//                       shrinkWrap: true,
//                       itemCount: 4,
//                       primary: false,
//                       gridDelegate:
//                           const SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 3, childAspectRatio: .8),
//                       itemBuilder: (BuildContext context, int index) {
//                         return Padding(
//                           padding: const EdgeInsets.only(
//                               left: 24, right: 24, top: 24),
//                           child: Column(
//                             children: [
//                               GestureDetector(
//                                   // onTap: () {
//                                   //   Navigator.push(
//                                   //       context,
//                                   //       MaterialPageRoute(
//                                   //           builder: ((context) => page[index])));
//                                   // },
//                                   child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(4),
//                                 child: Container(
//                                     height: 110,
//                                     width: 90,
//                                     color: Color(0xffffddbf),
//                                     child: Image.network(
//                                       image[index],
//                                       fit: BoxFit.cover,
//                                     )),
//                               )),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                     ListView.builder(
//                         itemCount: 4,
//                         itemBuilder: (context, index) => VideoPlayerScreen(
//                               videoURL: videoURL[index],
//                             )),
//                     Audio(),
//                   ],
//                 ),
//               ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
