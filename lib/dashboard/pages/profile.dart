import 'package:flutter/material.dart';
import 'package:login/my_profile/invite_friends/invite_friends.dart';
import 'package:login/my_profile/my_family/my_family_listpage.dart';
import 'package:login/my_profile/my_profile_page/profile_detailpage.dart';
import 'package:login/my_profile/terms_and_condition/terms_and_condition.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'My Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
          backgroundColor: const Color(0xff621055),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.notifications),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfile()));
              },
              child: SizedBox(
                height: 150,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Hero(
                          tag: 'profile',
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/13092861/pexels-photo-13092861.jpeg?auto=compress&cs=tinysrgb&w=400',
                            ),
                            backgroundColor: Colors.grey,
                            maxRadius: 45,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Rakesh Sharma',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'View personal info',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffb52b65),
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const MyFamilyListPage())));
              },
              child: Card(
                elevation: 0,
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: const Color(0xffffddbf),
                          child: Image.asset(
                            'assets/images/users.png',
                            scale: 2.6,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'My Family',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const InviteFriends())));
              },
              child: Card(
                elevation: 0,
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: const Color(0xffffddbf),
                          child: Image.asset(
                            'assets/images/userplus.png',
                            scale: 2.6,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Invite Friend',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _launchURL();
              },
              child: Card(
                elevation: 0,
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: const Color(0xffffddbf),
                          child: Image.asset(
                            'assets/images/award.png',
                            scale: 2.6,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'About Developer',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Share.share(
                    'https://play.google.com/store/apps/details?id=com.cannydigit.srivari');
              },
              child: Card(
                elevation: 0,
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: const Color(0xffffddbf),
                          child: Image.asset(
                            'assets/images/share.png',
                            scale: 2.6,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Share App',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const TermsAndCondition())));
              },
              child: Card(
                elevation: 0,
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: const Color(0xffffddbf),
                          child: Image.asset(
                            'assets/images/file.png',
                            scale: 2.6,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Column(children: [
              const Text("Version 1.0.71"),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 44,
                child: TextButton(
                  onPressed: () {
                    while (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
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
              const SizedBox(
                height: 24,
              ),
            ])
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://www.cannydigit.com/';
    final uri = Uri.parse(url);
    await launchUrl(uri);
    throw 'Could not launch $url';
  }
}
