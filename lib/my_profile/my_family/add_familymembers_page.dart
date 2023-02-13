import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddFamilyMemberPage extends StatelessWidget {
  const AddFamilyMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController dateInputController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff621055),
        elevation: 0,
        centerTitle: true,
        title: const Text('Add Family Members'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Member Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Name',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 6,
            ),
            const TextField(
              cursorColor: Color(0xffb52b65),
              maxLength: 30,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                  focusColor: Color(0xffb52b65),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1))),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              'DOB (optional)',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 6,
            ),
            TextField(
                // controller: _controller,
                keyboardType: TextInputType.none,
                cursorColor: Color(0xffb52b65),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                    color: Color(0xffb52b65),
                  )),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                ),
                controller: dateInputController,
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2050),
                    builder: (context, child) {
                      return Theme(
                          data: Theme.of(context).copyWith(
                              colorScheme: ColorScheme.light(
                                  primary: Color(0xffb52b65))),
                          child: child!);
                    },
                  );

                  if (pickedDate != null) {
                    dateInputController.text =
                        DateFormat('dd MMMM yyyy').format(pickedDate);
                  }
                }),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Relation to you',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: DropdownButtonFormField(
                items: [
                  DropdownMenuItem<String>(
                    child: Text('Father'),
                    value: 'Item 1',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Mother'),
                    value: 'Item 2',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Brother'),
                    value: 'Item 3',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Sister'),
                    value: 'Item 4',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Grand Mom'),
                    value: 'Item 5',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Grand Dad'),
                    value: 'Item 6',
                  ),
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffb52b65)),
                  ),
                ),
                onChanged: (value) {
                  print('Selected: $value');
                },
                hint: Text('Relation Type'),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text('Member Horoscope',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Zodiac',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: DropdownButtonFormField(
                items: [
                  DropdownMenuItem<String>(
                    child: Text('Aries'),
                    value: 'Item 1',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Taurus'),
                    value: 'Item 2',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Gemini'),
                    value: 'Item 3',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Cancer'),
                    value: 'Item 4',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Leo'),
                    value: 'Item 5',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Virgo'),
                    value: 'Item 6',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Libra'),
                    value: 'Item 7',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Scorpio'),
                    value: 'Item 8',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Sagittarius'),
                    value: 'Item 9',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Capricorn'),
                    value: 'Item 10',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Aquarius'),
                    value: 'Item 11',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Pisces'),
                    value: 'Item 12',
                  ),
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffb52b65)),
                  ),
                ),
                onChanged: (value) {
                  print('Selected: $value');
                },
                hint: Text('Select Zodiac'),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Star',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 6,
            ),
            const TextField(
              maxLength: 20,
              cursorColor: Color(0xffb52b65),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  hintText: 'Select Star',
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Maritial Status',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Icon(Icons.toggle_off_outlined)
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xffff7940)),
          child: const Text(
            'Save',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
