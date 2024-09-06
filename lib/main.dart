import 'package:flutter/material.dart';
import 'package:flutter_learning/shared/theme/theme_color.dart';
import 'app/app.dart';

void main() async {
  await setupLocatorAsync();
  FlutterError.onError = (details) => talker.handle(
    details.exception,
    details.stack,
  );

  runApp(const MyApp());
}
