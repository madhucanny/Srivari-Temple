import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:login/temple_services/pooja/booking_successful.dart';

class BookPooja extends StatefulWidget {
  const BookPooja({super.key});

  @override
  State<BookPooja> createState() => _BookPoojaState();
}

class _BookPoojaState extends State<BookPooja> {
  TextEditingController _controller = TextEditingController();

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
          'Book Pooja',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Sahasranama Aarchana',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Special Sahasranama Aarchana on Request',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Pooja At',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 180,
              decoration: BoxDecoration(
                  color: Color(0xffffddbf),
                  border: Border.all(color: Colors.orange),
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xffffa372),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Temple',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '₹50',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Select Date',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.none,
              cursorColor: Color(0xffb52b65),
              decoration: InputDecoration(
                hintText: 'Date',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffb52b65),
                )),
                prefixIcon: Icon(
                  Icons.calendar_month,
                  size: 30,
                  color: Colors.orange,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey)),
              ),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: new DateTime.now(),
                    firstDate: new DateTime(2015, 8),
                    lastDate: new DateTime(2101));
                if (pickedDate != null) {
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  setState(() {
                    _controller.text = formattedDate;
                    print('@@@@@@@@@@@@@@@@${formattedDate}');
                  });
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 4,
              keyboardType: TextInputType.none,
              cursorColor: Color(0xffb52b65),
              decoration: InputDecoration(
                hintText: 'Notes (Optional)',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffb52b65),
                )),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Payment Type ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: DropdownButtonFormField(
                items: [
                  DropdownMenuItem<String>(
                    child: Text('Pay Via App'),
                    value: 'Item 1',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Cheque (In Person)'),
                    value: 'Item 2',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Cash (In Person)'),
                    value: 'Item 3',
                  ),
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffb52b65)),
                  ),
                ),
                onChanged: (value) {
                  print('Selected: $value');
                },
                hint: Text('Choose Payment Type'),
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const BookingSuccessful()),
            );
          },
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xffff7940)),
          child: const Text(
            'Proceed',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
