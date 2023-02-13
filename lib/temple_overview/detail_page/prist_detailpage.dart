import 'package:flutter/material.dart';

class PriestDetailPage extends StatelessWidget {
  const PriestDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: AppBar(
          flexibleSpace: SizedBox(
            width: double.infinity,
            child: Image.network(
              'https://media.istockphoto.com/id/1286818541/photo/ethnic-wear-outdoor-portrait-of-an-indian-religious-man.jpg?s=612x612&w=0&k=20&c=olhO11sFKah8Ze197Qec-xo5Uj495sqBzzkLkONnPps=',
              fit: BoxFit.cover,
            ),
          ),
          leading: GestureDetector(
              onTap: Navigator.of(context).pop,
              child: const Icon(Icons.keyboard_backspace)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 324, left: 16),
              child: Text(
                'Sri Vijayaraghavan poondi',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 22, left: 16),
              child: Text(
                  'Praesent molestie velit sit amet diam egestas posuere sed nec justo. Quisque a tincidunt orci. In ex nibh, condimentum eu tincidunt ut, lacinia quis odio. In vulputate est sit amet nunc varius consectetur. Nullam lorem mauris, ultrices in erat nec, tincidunt maximus orci. Praesent at nisi in tortor tristique viverra. Quisque eget sem neque.Nulla magna erat, auctor vel accumsan in, interdum non elit. Duis eu enim euismod, molestie massa consectetur, ultricies elit. Praesent dictum justo egestas augue laoreet vehicula. Duis vulputate odio et finibus imperdiet. Duis sapien quam, efficitur quis semper sit amet, euismod id erat. Nulla at ex dictum, consequat est in, faucibus quam. Fusce porttitor eget purus et sollicitudin.\nIn auctor tortor eu tortor elementum, et luctus dui auctor. Integer blandit, lorem ut elementum fermentum, erat felis viverra nisl, dapibus auctor tellus massa ut lacus. Morbi vitae dapibus neque. Proin at neque mi. Nullam at est augue. Mauris a urna imperdiet, rhoncus ex iaculis, condimentum ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at risus dictum, gravida felis vel, elementum arcu. Nullam pulvinar lectus at tellus commodo, ac semper mauris sollicitudin. Sed libero tortor, imperdiet volutpat ligula sed, feugiat tempus ex. Mauris nec vehicula enim, in suscipit dui.Mauris nec ipsum ultricies, molestie arcu non, finibus tellus. Sed scelerisque rhoncus nisl sit amet hendrerit. Pellentesque vehicula pretium libero, at porta lectus lobortis eleifend.\nPraesent nec leo bibendum, dictum sapien in, malesuada sapien. Quisque aliquam finibus mauris ut ultrices. Mauris volutpat ultrices risus, id dictum lacus lobortis sit amet. Fusce auctor imperdiet lobortis.'),
            ),
          ],
        ),
      ),
    );
  }
}
