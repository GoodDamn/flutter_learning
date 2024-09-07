import 'package:flutter/material.dart';
import 'package:flutter_learning/shared/theme/theme.dart';

class ChannelCardThemeColors extends ThemeExtension<ChannelCardThemeColors> {
  final Color background;

  const ChannelCardThemeColors({
    required this.background
  });

  static get light => const ChannelCardThemeColors(
    background: ThemeColor.secondaryWhite
  );

  @override
  ThemeExtension<ChannelCardThemeColors> copyWith({
    Color? background
  }) {
    return ChannelCardThemeColors(
        background: background ?? this.background
    );
  }

  @override
  ThemeExtension<ChannelCardThemeColors> lerp(
    covariant ThemeExtension<ChannelCardThemeColors>? other,
    double t
  ) {

    if (other is! ChannelCardThemeColors) {
      return this;
    }

    return ChannelCardThemeColors(
      background: Color.lerp(
        background,
        other.background,
        t
      )!
    );
  }

}