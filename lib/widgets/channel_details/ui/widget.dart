import 'package:flutter/cupertino.dart';
import 'package:flutter_learning/entities/channels/channel_details.dart';

class ChannelDetailsWidget extends StatelessWidget {
  final ChannelDetails channelDetails;

  const ChannelDetailsWidget({
    required this.channelDetails,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            channelDetails.name
        ),
        SizedBox(
          width: 400,
          height: 400,
          child: Image.network(channelDetails.imageUrl),
        ),
        const Text(
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
          "Описание"
        ),
        Text(channelDetails.description),
      ],
    );
  }

}