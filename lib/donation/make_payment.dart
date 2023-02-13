import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MakePayment extends StatelessWidget {
  const MakePayment({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
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
          'Make Payment',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.68,
                  child: Text('Sriveri Sri Balaji- Loan Payoff',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                ),
                Column(
                  children: [
                    Text('₹ 23456',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffff7940),
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 4,
                    ),
                    Text('incl. tax'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.68,
              child: Text(
                'Srivari Balaji has a Loan off ₹759,778.Samporkshnam is scheduled on june',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Payment Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Card Number - valid To - CCV',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: textController,
              cursorColor: Color(0xffb52b65),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                )),
                prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.credit_card,
                      color: Colors.grey,
                      size: 36,
                    )),
                border: const OutlineInputBorder(),
                hintText: 'XXXX XXXX XXXX XXXX',
              ),
              style: TextStyle(color: Color(0xffb52b65), letterSpacing: 4),
              maxLength: 19,
              onChanged: (value) {},
            ),
            TextFormField(
              keyboardType: TextInputType.datetime,
              maxLength: 7,
              cursorColor: Color(0xffb52b65),
              decoration: InputDecoration(
                hintText: 'MM/YYYY',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey,
                )),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey)),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 4,
              cursorColor: Color(0xffb52b65),
              decoration: InputDecoration(
                hintText: 'CCV',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey,
                )),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey)),
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        child: TextButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const MakePayment()),
            // );
          },
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xffff7940)),
          child: const Text(
            'Pay Now',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
