import 'package:flutter/material.dart';
import 'app/app.dart';

void main() async {
  await setupLocatorAsync();

  FlutterError.onError = (details) => talker.handle(
    details.exception,
    details.stack,
  );

  runApp(const DamnTvApp());
}
