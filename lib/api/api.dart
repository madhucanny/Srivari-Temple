import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:login/model/committee_model.dart';
import 'package:login/model/deities_model.dart';
import 'package:login/model/trustee_model.dart';
import '../model/priests_model.dart';
import '../model/temple_history_model.dart';
import '../model/temple_list_model.dart';
import '../model/temple_timing_model.dart';

class TempleApi {
  Future<List<TempleListModel>> fetchTempleList() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/84941f2f-acbb-467d-a19a-22c138ef6ca4'));
    // print(response.body);
    // print(response.statusCode);
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return Future.value(parsed
          .map<TempleListModel>((json) => TempleListModel.fromJson(json))
          .toList());
    } else {
      throw Get.snackbar('Error Loading Data!',
          'server responded:${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }

  Future<TempleHistoryModel> fetchTempleHistory() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/80b4c6c0-e40c-4e59-ae11-0cba4d03b706'));
    // print("responseBody:${response.body}");
    // print(response.statusCode);
    if (response.statusCode == 200) {
      return TempleHistoryModel.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw Get.snackbar('Error Loading Data!',
          'server responded:${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }

  Future<List<TempleTimingModel>> fetchTempleTiming() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/3bd6420f-0020-4d46-811b-39be266d57f2'));
    // print("responseBody:${response.body}");
    // print(response.statusCode);
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return Future.value(parsed
          .map<TempleTimingModel>((json) => TempleTimingModel.fromJson(json))
          .toList());
    } else {
      throw Get.snackbar('Error Loading Data!',
          'server responded:${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }

  Future<List<TrusteeModel>> fetchTrustee() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/8077bc7f-e7db-4616-97c8-f389d1d9b3b9'));
    // print("responseBody:${response.body}");
    // print(response.statusCode);
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return Future.value(parsed
          .map<TrusteeModel>((json) => TrusteeModel.fromJson(json))
          .toList());
    } else {
      throw Get.snackbar('Error Loading Data!',
          'server responded:${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }

  Future<List<PriestsModel>> fetchPriests() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/0e20f88b-78f3-408f-856e-86f44c9651ce'));
    // print("responseBody:${response.body}");
    // print(response.statusCode);
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return Future.value(parsed
          .map<PriestsModel>((json) => PriestsModel.fromJson(json))
          .toList());
    } else {
      throw Get.snackbar('Error Loading Data!',
          'server responded:${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }

  Future<List<CommitteeModel>> fetchCommittee() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/ef2c28b2-9356-40b3-9070-8b0995fc9aa2'));
    // print("responseBody:${response.body}");
    // print(response.statusCode);
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return Future.value(parsed
          .map<CommitteeModel>((json) => CommitteeModel.fromJson(json))
          .toList());
    } else {
      throw Get.snackbar('Error Loading Data!',
          'server responded:${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }

  Future<List<DeitiesModel>> fetchDeities() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/2893c96e-1a88-4d22-8eca-10744315690b'));
    print("responseBody:${response.body}");
    print(response.statusCode);
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return Future.value(parsed
          .map<DeitiesModel>((json) => DeitiesModel.fromJson(json))
          .toList());
    } else {
      throw Get.snackbar('Error Loading Data!',
          'server responded:${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }
}
