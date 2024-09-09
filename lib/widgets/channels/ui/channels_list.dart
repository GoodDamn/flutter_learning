import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/entities/channels/channel_details.dart';
import 'package:flutter_learning/features/channel_card/channel_card.dart';

class ChannelsList extends StatefulWidget {
  const ChannelsList({
    required this.channels,
    super.key
  });

  final List<ChannelDetails> channels;

  @override
  State<ChannelsList> createState() => ChannelsListState();
}

class ChannelsListState extends State<ChannelsList> {
  @override


  Widget build(BuildContext context) {
    var children =  widget.channels.map((channel){
      return ChannelCard(channel: channel);
    }).toList();

    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        itemCount: children.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: children[index]);
        },
      ),
    );
  }
}