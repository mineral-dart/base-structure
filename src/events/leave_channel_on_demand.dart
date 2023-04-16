import 'package:mineral/core/extras.dart';
import 'package:mineral/framework.dart';
import 'package:mineral/core/events.dart';

class LeaveChannelOnDemand extends MineralEvent<VoiceLeaveEvent> with MineralContext {
  Future<void> handle (event) async {
    if (event.channel.id == environment.get('CHANNEL_VOICE_ON_DEMAND')) {
      return;
    }

    final hasMembers = event.channel.members.length > 0;
    final isTemporaryChannel = event.channel.parent?.id == environment.get('CATEGORY_VOICE_ON_DEMAND');

    if (isTemporaryChannel && !hasMembers) {
      await event.channel.delete();
    }
  }
}