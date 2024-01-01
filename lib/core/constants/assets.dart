import 'package:flutter/material.dart';

/// Class containing asset paths for the game.
@immutable
class Assets {
  const Assets._();
  // Background images
  static const String background = 'assets/images/background.png';
  static const String ground = 'assets/images/ground.png';
  static const String clouds = 'assets/images/clouds.png';

  // Pipe images
  static const String pipe = 'assets/images/pipe.png';
  static const String pipeRotated = 'assets/images/pipe_rotated.png';

  // Bird images
  static const String birdMidFlap = 'assets/images/bird_midflap.png';
  static const String birdUpFlap = 'assets/images/bird_upflap.png';
  static const String birdDownFlap = 'assets/images/bird_downflap.png';

// Game UI elements
  static const String gameOver = 'assets/images/gameover.png';
  static const String menu = 'assets/images/menu.jpg';
  static const String message = 'assets/images/message.png';

  // Sound effects
  static const String flying = 'fly.wav';
  static const String collision = 'collision.wav';
  static const String point = 'point.wav';
}
