import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pick_app/routes/routes.dart';
import 'package:uuid/uuid.dart';

class LocationController extends GetxController {
  var predictionList = <dynamic>[].obs;
  var isLoading = false.obs;

  late TextEditingController searchController;

  var uuid = const Uuid();
  String _sessionToken = '123456';
  // TODO: REPLACE THIS WITH YOUR ACTUAL API KEY
  final String _googleApiKey = "AIzaSyBHCvfuITDTbiNlpKh6mN75mt2o_eqTYow";

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();

    searchController.addListener(() {
      _onSearchChanged();
    });
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  Timer? _debounce;

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (searchController.text.length > 2) {
        getPlacePredictions(searchController.text);
      } else {
        predictionList.clear();
      }
    });
  }

  Future<void> getPlacePredictions(String query) async {
    if (_sessionToken.isEmpty) {
      _sessionToken = uuid.v4();
    }

    final String url =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=$_googleApiKey&sessiontoken=$_sessionToken&components=country:ng|country:tg";

    try {
      isLoading.value = true;
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        if (json['status'] == 'OK') {
          predictionList.value = json['predictions'];
        } else {
          predictionList.clear();
          print("Error Message: ${json['error_message']}");
          print("Status: ${json['status']}");
        }
      }
    } catch (e,s) {
      print("Error fetching maps data: $e,$s");
    } finally {
      isLoading.value = false;
    }
  }

  void onPlaceSelected(String placeDescription, String placeId) {
    searchController.text = placeDescription;

    predictionList.clear();

    _sessionToken = uuid.v4();

    print("User selected Place ID: $placeId");
    Get.toNamed(AppRoutes.durationScreen);
  }
}