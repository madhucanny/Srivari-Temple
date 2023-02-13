import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:login/controller/login_controller.dart';
import 'package:login/login_page/temple_list.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Temple());
}

class Temple extends StatelessWidget {
  const Temple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  final logInController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset(
            'assets/images/login.png',
            height: 94,
            width: 94,
          ),
          const SizedBox(
            height: 75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 16,
              ),
              Text(
                'Login',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 16,
              ),
              Text(
                'Mobile',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: IntlPhoneField(
              onCountryChanged: (code) {
                print(code.dialCode);
                logInController.countryCode.value = code.dialCode;
              },
              controller: logInController.logInTextField.value,
              decoration: InputDecoration(
                prefixIconColor: Color(0xffb52b65),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffb52b65))),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffb52b65))),
                hintText: 'Phone Number',
              ),
              cursorColor: Color(0xffb52b65),
              showCountryFlag: false,
              initialCountryCode: 'IN',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 44,
            child: TextButton(
              onPressed: () async {
                if (logInController.logInTextField.value.text.length < 15) {
                  logInController.verifyNumber(
                      context, logInController.verificationId.value);
                } else {
                  "please enter a mobile number";
                }
              },
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xffff7940)),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TempleList(),
                    ),
                  );
                },
                child: const Text(
                  'Skip Login',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const Icon(
                Icons.navigate_next,
                size: 20,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
