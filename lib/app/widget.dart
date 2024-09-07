import 'package:flutter/material.dart';
import './theme/theme_data.dart';
import './router.dart';

class DamnTvApp extends StatelessWidget {
  const DamnTvApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'News Brief',
      theme: AppTheme.lightTheme,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}

