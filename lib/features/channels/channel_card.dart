import 'package:flutter/cupertino.dart';
import 'package:flutter_learning/entities/channels/channels.dart';

class ChannelCard extends StatelessWidget {
  const ChannelCard({
    required this.channel
  });
  final ChannelDetails channel;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                 Text(channel.name),
                 Text(channel.description)
               ],
             )
           )
         ],
      ),
    );
  }
}