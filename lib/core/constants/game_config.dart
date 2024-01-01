import 'package:flutter/material.dart';

@immutable
class GameConfig {
  const GameConfig._();

  static const double groundHeight = 110.0;
  static const double gameSpeed = 200.0;
  static const double pipeInterval = 1.5;
  static const double birdVelocity = 210;
  static const double gravity = -100.0;
  static const double cloudsHeight = 70.0;
}
