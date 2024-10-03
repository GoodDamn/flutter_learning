import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/channel_details/ui/widget.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:flutter_learning/pages/pages.dart';
import './di.dart';

final GlobalKey<NavigatorState> _rootNavigationKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  observers: [TalkerRouteObserver(talker)],
  initialLocation: '/channels',
  navigatorKey: _rootNavigationKey,
  routes: <RouteBase>[
    GoRoute(
      path: '/channels',
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const HomePage(),
        );
      },
    ),
    GoRoute(
      path: '/channels/:id',
      pageBuilder: (context, state){
        return NoTransitionPage(
          child: ChannelDetailsPage()
        );
      }
    )

  ],
);