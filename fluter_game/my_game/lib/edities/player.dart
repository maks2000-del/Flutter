import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_game/edities/entity.dart';

class Player extends Entity {
  Player() : super("player") {
    x = 50.0;
    y = 50.0;
  }

  @override
  Widget build() {
    return Positioned(
        top: y, left: x, child: visible ? sprites.first : SizedBox());
  }

  @override
  void move() {
    x++;
    if (x > 500) {
      x = 50;
    }
  }

  @override
  void update() {
    move();
  }
}
