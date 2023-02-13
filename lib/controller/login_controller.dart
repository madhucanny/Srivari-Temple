import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/api/api.dart';
import 'package:login/login_page/temple_list.dart';
import 'package:login/model/temple_list_model.dart';
import '../login_page/otp_page.dart';

class LoginController extends GetxController {
  final Rx<String> verificationId = ''.obs;
  final TempleApi api = TempleApi();
  final Rx<TextEditingController> logInTextField = TextEditingController().obs;
  final Rx<TextEditingController> otpController = TextEditingController().obs;
  Rx<List<TempleListModel>?> templeListModel = Rxn();
  FirebaseAuth auth = FirebaseAuth.instance;
  Timer? timer;
  Rx<int> start = 30.obs;
  var templeList = <TempleListModel>[].obs;
  var isLoading = true.obs;
  final Rx<String> templename = ''.obs;
  Rx<String> countryCode = "".obs;

  Future<List<TempleListModel>?> getTempleList() async {
    templeListModel.value = await api.fetchTempleList();
    return templeListModel.value;
  }

  void startTimer() {
    print('timer started');
    const oneSec = const Duration(seconds: 1);
    timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start.value == 0) {
          timer.cancel();
        } else {
          start.value--;
        }
      },
    );
  }

  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void onInit() {
    super.onInit();
    getTempleList();
    startTimer();
  }

  void verifyNumber(BuildContext context, String verificationIDReceived) {
    final phoneNo = '+$countryCode${logInTextField.value.text}';
    print('phoneNo$phoneNo');
    auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: ((PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) {});
        }),
        verificationFailed: (FirebaseAuthException exception) {
          debugPrint(exception.message);
        },
        codeSent: (String id, int? resendToken) {
          verificationId.value = id;
          if (verificationId.value.isNotEmpty) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OtpPage(),
              ),
            );
          }
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
  }

  void verifyCode(BuildContext context, String otpCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: otpCode, smsCode: otpController.value.text);
    print('@@@@@$otpCode');
    print('@@@@@${otpController.value.text}');
    await auth.signInWithCredential(credential).then(
          (value) => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TempleList()),
          ),
        );
  }
}
