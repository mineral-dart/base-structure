import 'package:mineral/core/extras.dart';
import 'package:mineral/framework.dart';
import 'package:mineral/core/events.dart';

class RulesAccepts extends MineralEvent<AcceptRulesEvent> with MineralContext {
  Future<void> handle (event) async {
    if (event.member.isBot) {
      return;
    }

    final roleId = environment.get('ROLE_MEMBER');
    await event.member.roles.add(roleId);
  }
}