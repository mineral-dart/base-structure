import 'package:mineral/core.dart';

void main () async {
  Kernel kernel = Kernel()
    ..intents.defined(all: true)
    ..commands.register([])
    ..events.register([])
    ..modules.register([])
    ..contextMenus.register([]);

  await kernel.init();
}
