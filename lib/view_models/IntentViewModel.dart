import 'package:flutter/material.dart';

import '../di/setupLocator.dart';
import '../services/IntentService.dart';

class IntentViewModel extends ChangeNotifier {
  final IntentService _intentService = getIt<IntentService>();

  Future<void> openMap(String address) async {
    await _intentService.openMap(address);
  }

  Future<void> openDialer(String phoneNumber) async {
    await _intentService.openDialer(phoneNumber);
  }
}
