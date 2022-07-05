import 'package:mineral/api.dart';
import 'package:mineral/core.dart';

void main () async {
  Kernel kernel = Kernel()
    ..intents = [Intent.all];

  await kernel.init();
}
