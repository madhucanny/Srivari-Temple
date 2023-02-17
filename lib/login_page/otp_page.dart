import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/controller/login_controller.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class OtpPage extends StatelessWidget {
  OtpPage({super.key});

  final logInController = Get.put(LoginController());

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
          ),
        ),
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset(
                'assets/images/otp.png',
                height: 94,
                width: 94,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Please enter the verification code',
                  maxLines: 2,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'sent to ${logInController.logInTextField.value.text}',
              maxLines: 2,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: PinInputTextField(
                pinLength: 6,
                controller: logInController.otpController.value,
                keyboardType: TextInputType.number,
                enabled: true,
                decoration: BoxLooseDecoration(
                  bgColorBuilder: FixedColorBuilder(
                    Color(0xffffddbf),
                  ),
                  strokeColorBuilder: FixedColorBuilder(
                    Color(0xffffddbf),
                  ),
                  textStyle: TextStyle(fontSize: 20, color: Colors.black),
                ),
                autoFocus: true,
                enableInteractiveSelection: false,
                cursor: Cursor(
                  width: 2,
                  color: Color(0xffff7940),
                  radius: Radius.circular(1),
                  enabled: true,
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            logInController.start.value == 0
                ? GestureDetector(
                    onTap: () async {
                      logInController.verifyNumber(
                          context, logInController.verificationId.value);
                      logInController.start.value = 30;
                      logInController.startTimer();
                    },
                    child: const Text(
                      'Resend OTP',
                      style: TextStyle(
                          color: Color(0xffb52b65),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )
                : Text(
                    'resend code in ${logInController.start.value} seconds',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 44,
              child: TextButton(
                onPressed: () {
                  if (logInController.otpController.value.text.length == 6) {
                    logInController.verifyCode(
                        context, logInController.verificationId.value);
                  } else {
                    () {};
                  }
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
          ]),
        );
      }),
    );
  }
}
