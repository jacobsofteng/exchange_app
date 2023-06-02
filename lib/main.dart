import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/blocs/app_theme_cubit.dart';
import 'common/blocs/bloc_observer.dart';
import 'config/theme/app_theme.dart';
import 'features/exchange_rates/bloc/exchange_rates_bloc.dart';
import 'features/exchange_rates/repositories/currencies_repository.dart';
import 'features/exchange_rates/repositories/i_currencies_repository.dart';
import 'firebase_options.dart';
import 'routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Bloc.observer = Observer();
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AppThemeCubit(),
        ),
        RepositoryProvider<ICurrenciesRepository>(
          create: (context) => CurrenciesRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ExchangeRatesBloc(currenciesRepository: context.read())
              ..add(
                const ExchangeRatesEvent.fetchCurrencies(),
              ),
          ),
        ],
        child: BlocBuilder<AppThemeCubit, AppTheme>(
          builder: (context, theme) {
            return MaterialApp.router(
              routerConfig: _appRouter.config(),
              theme: ThemeData(
                scaffoldBackgroundColor: theme.appColors.scaffoldBackgroundColor,
                textTheme: const TextTheme().apply(
                  bodyColor: theme.appColors.textPrimaryColor,
                  displayColor: theme.appColors.textPrimaryColor,
                ),
              ),
              title: 'Exchange App',
            );
          },
        ),
      ),
    );
  }
}
