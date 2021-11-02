import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:my_game/edities/player.dart';
import 'package:my_game/game_core/main_loop.dart';
import 'package:my_game/utilits/common_vars.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  double x = 100;
  double y = 200;
  late ReceivePort _receivePort;
  late Isolate _isolateLoop;
  late Player player;

  void startIsolateLoop() async {
    _receivePort = ReceivePort();
    _isolateLoop = await Isolate.spawn(mainLoop, _receivePort.sendPort);
    _receivePort.listen((message) {
      setState(() {});
      x++;
      if (x > 500) {
        x = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isFirstStartGame) {
      startIsolateLoop();
      isFirstStartGame = false;
      player = Player();
    }

    player.update();
    return Stack(
      children: [player.build()],
    );
  }
}
