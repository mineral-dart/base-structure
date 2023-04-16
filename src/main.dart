import 'package:mineral/core.dart';
import 'package:mineral/core/services.dart';

import 'events/join_channel_on_demand.dart';
import 'events/leave_channel_on_demand.dart';
import 'events/rules_accepts.dart';

void main () async {
  final kernel = Kernel(
    intents: IntentService(all: true),
    events: EventService([
      RulesAccepts(),
      JoinChannelOnDemand(),
      LeaveChannelOnDemand()
    ]),
  );

  await kernel.init();
}
