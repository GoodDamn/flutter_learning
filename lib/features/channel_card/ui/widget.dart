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
      decoration: BoxDecoration(
        color: context.channelCardColors.background,
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child: Padding(
        padding:  const EdgeInsets.all(20),
        child: Row(
          children: [
            ConstrainedBox (
              constraints: const BoxConstraints(
                minWidth: 50,
                maxWidth: 80,
                minHeight: 50,
                maxHeight: 80
              ),
              child: Image.network(channel.imageUrl),
            ),
            Expanded (
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      style: const TextStyle(fontWeight: FontWeight.bold),
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
      )
    );
  }
}