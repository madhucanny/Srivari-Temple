import 'package:flutter/material.dart';
import 'package:login/temple_services/pooja/book_pooja.dart';

class TemplePoojas extends StatelessWidget {
  const TemplePoojas({super.key});

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
          'Temple Poojas',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => BookPooja())));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: Row(children: [
              Container(
                height: 100,
                width: 80,
                color: Colors.grey,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sahasranama Aarchana',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Special Sahasranama Aarchana on Request',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Amount at Temple',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffb52b65),
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '₹50',
                            style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xffff7940),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
