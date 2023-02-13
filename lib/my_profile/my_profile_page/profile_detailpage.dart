import 'package:flutter/material.dart';

import 'package:login/main.dart';
import 'package:login/my_profile/invite_friends/invite_friends.dart';
import 'package:login/my_profile/my_family/my_family_listpage.dart';
import 'package:login/my_profile/terms_and_condition/terms_and_condition.dart';

class MyProfile extends StatelessWidget {
  MyProfile({super.key});

  List image = [
    'assets/images/users.png',
    'assets/images/userplus.png',
    'assets/images/award.png',
    'assets/images/share.png',
    'assets/images/file.png'
  ];
  List text = [
    'MyFamily',
    'Invite Friend',
    'About Developer',
    'Share App',
    'Terms & Conditions'
  ];
  List page = [
    const MyFamilyListPage(),
    const InviteFriends(),
    const InviteFriends(),
    const InviteFriends(),
    const TermsAndCondition()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff621055),
        elevation: 0,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            SizedBox(
              height: 150,
              width: double.maxFinite,
              child: Image.asset(
                'assets/images/background.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.38,
                top: 100,
              ),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Hero(
                  tag: 'profile',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://images.pexels.com/photos/13092861/pexels-photo-13092861.jpeg?auto=compress&cs=tinysrgb&w=400',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Rakesh Sharma',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'View personal info',
            style: TextStyle(
                fontSize: 12,
                color: Color(0xffb52b65),
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 56,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 26, right: 16),
          SizedBox(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 5,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 2, childAspectRatio: 1),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => page[index])));
                        },
                        child: CircleAvatar(
                            maxRadius: 30,
                            backgroundColor: const Color(0xffffddbf),
                            child: Image.asset(
                              image[index],
                              scale: 2.6,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        text[index],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Temple()),
            );
          },
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xffff7940)),
          child: const Text(
            'Logout',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
