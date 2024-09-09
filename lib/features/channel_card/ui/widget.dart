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
    return Container(
      color: context.channelCardColors.background,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 50,
                maxWidth: 100,
                minHeight: 50,
                maxHeight: 100
              ),
              child: Image.network(channel.imageUrl),
          )),
          Expanded (
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    channel.name
                  ),
                  Text(
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    channel.description
                  )
                ]
              )
            )
          )
        ],
      )
    );
  }
}