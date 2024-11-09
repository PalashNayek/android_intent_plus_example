import 'package:android_intent_plus/android_intent.dart';

class IntentService {
  Future<void> openMap(String address) async {
    final intent = AndroidIntent(
      action: 'action_view',
      data: Uri.encodeFull('geo:0,0?q=$address'),
      package: 'com.google.android.apps.maps',
    );
    await intent.launch();
  }

  Future<void> openDialer(String phoneNumber) async {
    final intent = AndroidIntent(
      action: 'action_dial',
      data: 'tel:$phoneNumber',
    );
    await intent.launch();
  }
}
