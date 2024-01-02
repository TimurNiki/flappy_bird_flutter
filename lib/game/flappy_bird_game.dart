// ignore_for_file: no_logic_in_create_state
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flappy_bird/components/components.dart';
import 'package:flappy_bird/core/constants/game_config.dart';

class FlappyBirdGame extends FlameGame {
  late Bird bird;
  Timer interval = Timer(GameConfig.pipeInterval, repeat: true);
  @override
  Future<void> onLoad() async {
    addAll([Background(), Ground(), bird = Bird(), Pipes()]);
    interval.onTick = () => add(Pipes());
  }

  @override
  void update(double dt) {
    super.update(dt);
    interval.update(dt);
  }
}


// class FlappyBirdGame <T extends Game> extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     throw UnimplementedError();
//   }

// }
