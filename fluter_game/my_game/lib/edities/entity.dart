import 'package:flutter/cupertino.dart';

abstract class Entity {
  late double x;
  late double y;
  String spritename;
  bool visible = true;
  List sprites = [];

  Entity(this.spritename) {
    for (int i = 0; i < 4; i++) {
      sprites.add(Image.asset("assets/$spritename$i.png"));
    }
  }

  void update();
  void move();

  Widget build();
}
