import 'package:mineral/core.dart';
import 'package:mineral/core/services.dart';

void main () async {
  final kernel = Kernel(
    intents: IntentService(all: true),
    events: EventService([]),
  );

  await kernel.init();
}
