import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/blocs/app_theme_cubit.dart';
import 'common/blocs/bloc_observer.dart';
import 'config/theme/app_theme.dart';
import 'routes/app_router.dart';

void main() {
  runZonedGuarded(() => runApp(MyApp()), (error, stack) {});
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Bloc.observer = Observer();
    return MultiRepositoryProvider(
      providers: const [],
      child: MultiBlocProvider(
        providers: const [],
        child: BlocBuilder<AppThemeCubit, AppTheme>(
          builder: (context, theme) {
            return MaterialApp.router(
              routerConfig: _appRouter.config(),
              // theme: ThemeData(
              //   scaffoldBackgroundColor: theme.appColors.scaffoldBackgroundColor,
              //   textTheme: const TextTheme().apply(
              //     bodyColor: theme.appColors.textPrimaryColor,
              //     displayColor: theme.appColors.textPrimaryColor,
              //   ),
              // ),
              title: 'Exchange App',
            );
          },
        ),
      ),
    );
  }
}
