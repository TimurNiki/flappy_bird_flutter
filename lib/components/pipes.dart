import 'package:flame/components.dart';
import 'package:flappy_bird/components/pipe.dart';
import 'package:flappy_bird/core/constants/game_config.dart';
import 'package:flappy_bird/core/enums/enums.dart';
import 'package:flappy_bird/game/flappy_bird_game.dart';

class Pipes extends PositionComponent with HasGameRef<FlappyBirdGame> {
  Pipes();

  @override
  Future<void> onLoad() async {
    position.x = gameRef.size.x;
    addAll([
      Pipe(height: 100, pipePosition: PipePosition.top),
      Pipe(height: 100, pipePosition: PipePosition.bottom),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x == GameConfig.gameSpeed * dt;
  }
}
