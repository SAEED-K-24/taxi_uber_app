import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taxi_app/features/auth/auth.dart';
import 'package:taxi_app/features/auth/presentation/pages/sign_in_page.dart';
import 'package:taxi_app/features/map/map.dart';
import 'package:taxi_app/features/notifications/notifications.dart';
import 'package:taxi_app/features/splash_screen/splash_screen.dart';
import 'package:taxi_app/features/travel_history/presentation/pages/travel_history_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
final router = GoRouter(
  initialLocation: '/',
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
        routes: [
          GoRoute(
            name: 'login',
            path: 'auth/login',
            builder: (context, state) => const SignInPage(),
            routes: [
              GoRoute(
                name: 'signup',
                path: 'signup',
                builder: (context, state) => const SignUserPage(),
              ),
            ],
          ),
          GoRoute(
            name: 'mappage',
            path: 'map/mappage',
            builder: (context, state) => MapPage(),
            routes: [
              GoRoute(
                name: 'searchloc',
                path: 'map/searchloc',
                builder: (context, state) => const SeacrhLocationPage(),
              ),
              GoRoute(
                name: 'notification',
                path: 'notifications/notification',
                builder: (context, state) => const NotificationsPage(),
              ),
              GoRoute(
                name: 'travel',
                path: 'travel/travel',
                builder: (context, state) => const TravelHistoryPage(),
              ),
            ],
          ),
        ]),
  ],
);
