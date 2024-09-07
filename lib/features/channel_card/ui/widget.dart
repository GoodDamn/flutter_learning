import 'package:flutter/cupertino.dart';
import 'package:flutter_learning/app/theme/theme_data.dart';
import 'package:flutter_learning/entities/channels/channels.dart';
import 'package:flutter_learning/features/channel_card/channel_card.dart';

class ChannelCard extends StatelessWidget {
  const ChannelCard({
    required this.channel,
    super.key
  });
  final ChannelDetails channel;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: context.channelCardColors.background,
        child: Row(
        children: [
          Container(
           width: 100,
           height: 100,
           child: Image.network(channel.imageUrl),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  overflow: TextOverflow.clip,
                  channel.name
                ),
                Text(
                  overflow: TextOverflow.clip,
                  channel.description
                )
              ],
            )
          )
        ],
      )
    );
  }
}