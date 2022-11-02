import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/settings/theme/theme_controller.dart';
import 'package:expense_tracker/firebase_options_dev.dart'
    as firebase_option_dev;
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

import 'di/injector.dart';
import 'features/app/presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: firebase_option_dev.DefaultFirebaseOptions.currentPlatform,
  );

  await configureInjection(Environment.dev);
  // Bloc.observer = AppBlocObserver();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeController(getIt<ILocalCache>()),
        ),
        ChangeNotifierProvider(
          create: (_) => LocaleController(getIt<ILocalCache>()),
        ),
        BlocProvider.value(value: getIt<AppBloc>()),
      ],
      child: App(
        router: getIt<GoRouter>(),
        appName: getIt<AppConfigurations>().appName,
      ),
    ),
  );
}
