import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/IntentViewModel.dart';

class IntentScreen extends StatelessWidget {
  final String address = '1600 Amphitheatre Parkway, Mountain View, CA';
  final String phoneNumber = '+1234567890';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => IntentViewModel(),
      child: Scaffold(
        appBar: AppBar(title: Text('Android Intents')),
        body: Center(
          child: Consumer<IntentViewModel>(
            builder: (context, viewModel, _) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => viewModel.openMap(address),
                    child: Text('Open Map'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => viewModel.openDialer(phoneNumber),
                    child: Text('Open Dialer'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
