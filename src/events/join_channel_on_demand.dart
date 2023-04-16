import 'package:mineral/core/api.dart';
import 'package:mineral/core/builders.dart';
import 'package:mineral/core/extras.dart';
import 'package:mineral/framework.dart';
import 'package:mineral/core/events.dart';

class JoinChannelOnDemand extends MineralEvent<VoiceJoinEvent> with MineralContext {
  Future<void> handle (event) async {
    if (event.after.id == environment.get('CHANNEL_VOICE_ON_DEMAND')) {
      await event.after.guild.channels.create(ChannelBuilder.fromVoiceChannel(
        label: '${event.member.nickname} channel',
        permissions: [
          PermissionOverwrite(id: event.member.id, type: PermissionOverwriteType.role, deny: [ClientPermission.administrator]),
          PermissionOverwrite(id: event.member.id, type: PermissionOverwriteType.member, deny: [ClientPermission.administrator]),
        ],
        parentId: environment.get('CATEGORY_VOICE_ON_DEMAND')
      ));
    }
  }
}