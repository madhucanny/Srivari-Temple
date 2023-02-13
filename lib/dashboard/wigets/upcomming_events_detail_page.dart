import 'package:flutter/material.dart';

class UpcommingEventDetailPage extends StatelessWidget {
  const UpcommingEventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Upcoming Events',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => GestureDetector(
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: ((context) => const PriestDetailPage())));
          // },
          child: Card(
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
                      child: Image.network(
                        'https://www.w3schools.com/css/img_forest.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 24, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Friday, December 12, 2019',
                        style:
                            TextStyle(color: Color(0xffb52b65), fontSize: 14),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'Sayana Utsavam',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'Cradling of the deity befo…',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: const [
                          Text(
                            '\$51',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     top: 76,
                //   ),
                //   child: GestureDetector(
                //      onTap: () async {
                //        await FlutterPhoneDirectCaller.callNumber(callno);
                //     },
                //     child: const CircleAvatar(
                //       maxRadius: 15,
                //       backgroundColor: Color(0xffffddbf),
                //       child: Icon(
                //         Icons.call_outlined,
                //         color: Color(0xffff7940),
                //         size: 16,
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
