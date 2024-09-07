import 'package:flutter/material.dart';
import 'package:flutter_learning/features/channel_card/channel_card.dart';

extension ChannelCardThemeContextExtension on BuildContext {
  ChannelCardThemeColors get channelCardColors =>
      Theme.of(this).extension<ChannelCardThemeColors>()!;
}