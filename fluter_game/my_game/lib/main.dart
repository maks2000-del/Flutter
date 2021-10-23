import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_game/game_core/main_loop.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .whenComplete(() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Text('data'),
      ),
    ));
  });
}
