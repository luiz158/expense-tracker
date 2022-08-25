import 'package:expense_tracker/features/settings/presentation/pages/currency_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/setting_screen.dart';
import 'package:expense_tracker/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/settings/presentation/pages/language_screen.dart';
import '../features/settings/presentation/pages/notification_screen.dart';
import '../features/settings/presentation/pages/security_screen.dart';
import '../features/settings/presentation/pages/theme_screen.dart';
import 'app_scaffold.dart';
import 'fade_transistion_page.dart';

const ValueKey<String> _scaffoldKey = ValueKey<String>('App scaffold');

final router = GoRouter(
  routes: <GoRoute>[
    GoRoute(path: '/', redirect: (_) => '/home'),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => FadeTransitionPage(
        child: const AppScaffold(
          selectedTab: ScaffoldTab.home,
          child: HomeScreen(),
        ),
        key: _scaffoldKey,
      ),
    ),
    GoRoute(
      path: '/transaction',
      pageBuilder: (context, state) => FadeTransitionPage(
        child: const AppScaffold(
          selectedTab: ScaffoldTab.transaction,
          child: HomeScreen(),
        ),
        key: _scaffoldKey,
      ),
    ),
    GoRoute(
      path: '/budget',
      pageBuilder: (context, state) => FadeTransitionPage(
        child: const AppScaffold(
          selectedTab: ScaffoldTab.budget,
          child: HomeScreen(),
        ),
        key: _scaffoldKey,
      ),
    ),
    GoRoute(
      path: '/profile',
      redirect: (state) => '/setting',
    ),
    GoRoute(
      path: '/setting',
      pageBuilder: (context, state) => FadeTransitionPage(
        key: _scaffoldKey,
        child: const AppScaffold(
          selectedTab: ScaffoldTab.profile,
          child: SettingScreen(),
        ),
      ),
      routes: [
        GoRoute(
          path: 'currency',
          builder: (context, state) => const CurrencyScreen(),
        ),
        GoRoute(
          path: 'language',
          builder: (context, state) => const LanguageScreen(),
        ),
        GoRoute(
          path: 'theme',
          builder: (context, state) => const ThemeScreen(),
        ),
        GoRoute(
          path: 'security',
          builder: (context, state) => const SecurityScreen(),
        ),
        GoRoute(
          path: 'notification',
          builder: (context, state) => const NotificationScreen(),
        ),
      ],
    ),
  ],
  debugLogDiagnostics: true,
);