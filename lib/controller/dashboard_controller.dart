import 'package:chewie/chewie.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:login/model/committee_model.dart';
import 'package:login/model/deities_model.dart';
import 'package:login/model/priests_model.dart';
import 'package:login/model/temple_history_model.dart';
import 'package:login/model/temple_timing_model.dart';
import 'package:video_player/video_player.dart';

import '../api/api.dart';
import '../model/trustee_model.dart';

class DashboardController extends GetxController {
  final Rx<int> selectedindex = 0.obs;
  final Rx<int> homeindex = 0.obs;
  final Rx<bool> isLoading = true.obs;
  late GoogleMapController mapController;
  final RxSet<Marker> markers = Set<Marker>().obs;
  final api = TempleApi();
  Rx<TempleHistoryModel?> templeHistoryModel = Rxn();
  final Rx<String> templehistory = ''.obs;
  Rx<List<TempleTimingModel>?> templeTimingModel = Rxn();
  Rx<List<TrusteeModel>?> trusteeModel = Rxn();
  Rx<List<PriestsModel>?> priestsModel = Rxn();
  Rx<List<CommitteeModel>?> committeeModel = Rxn();
  Rx<List<DeitiesModel>?> deitiesModel = Rxn();
  final Rx<String> deitiesName = ''.obs;
  final Rx<String> deitiesDetails = ''.obs;
  late Rx<String> latitude;
  late Rx<String> longtitude;
  final Rx<LatLng> showLocation = Rx(LatLng(13.6833, 79.3474));

  Future<TempleHistoryModel?> getTempleHistory() async {
    templeHistoryModel.value = await api.fetchTempleHistory();
    print("from controller${templeHistoryModel.value?.history}");

    return templeHistoryModel.value;
  }

  Future<List<TempleTimingModel>?> getTempleTiming() async {
    templeTimingModel.value = await api.fetchTempleTiming();
    return templeTimingModel.value;
  }

  Future<List<TrusteeModel>?> getTrustee() async {
    trusteeModel.value = await api.fetchTrustee();
    return trusteeModel.value;
  }

  Future<List<PriestsModel>?> getPrisits() async {
    priestsModel.value = await api.fetchPriests();
    return priestsModel.value;
  }

  Future<List<CommitteeModel>?> getCommittee() async {
    committeeModel.value = await api.fetchCommittee();
    return committeeModel.value;
  }

  Future<List<DeitiesModel>?> getDeities() async {
    deitiesModel.value = await api.fetchDeities();
    return deitiesModel.value;
  }

  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void onInit() async {
    super.onInit();

    Future.delayed(
      Duration(seconds: 1),
      () => isLoading.value = false,
    );
    getTempleHistory();
    getTempleTiming();
    getTrustee();
    getPrisits();
    getCommittee();
    getDeities();
    // initializePlayer();
    latitude.value = templeHistoryModel.value?.latitude ?? '';
    longtitude.value = templeHistoryModel.value?.longitude ?? '';
    showLocation.value =
        LatLng(double.parse(latitude.value), double.parse(longtitude.value));
  }

  Set<Marker> marker() {
    markers.add(Marker(
      markerId: MarkerId(showLocation.value.toString()),
      position: showLocation.value,
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueAzure,
      ),
    ));
    return markers;
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
  }
}
