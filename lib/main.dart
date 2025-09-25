import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_bloc_example/app/common/presentation/pages/splash_page.dart';
import 'package:freezed_bloc_example/app/di/get_it.dart';
import 'package:freezed_bloc_example/app/router/router.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/repositories/theme_repo.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/usecases/load_theme.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/usecases/set_theme.dart';
import 'package:freezed_bloc_example/features/theme_flexing/presentation/cubit/theme_flexing_cubit.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeRepo = GetIt.instance.get<ThemeRepo>();
    return BlocProvider(
      create: (context) => ThemeFlexingCubit(
        loadTheme: LoadTheme(source: themeRepo),
        setTheme: SetTheme(source: themeRepo),
      )..init(),
      child: BlocBuilder<ThemeFlexingCubit, ThemeFlexingState>(
        buildWhen: (p, c) => p.isLight != c.isLight,
        builder: (context, state) {
          final isInitial = state.maybeWhen(
            initial: () => true,
            orElse: () => false,
          );
          if (isInitial) {
            return const SplashPage();
          }
          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: state.maybeWhen(
              light: (themeData) => themeData,
              dark: (themeData) => themeData,
              orElse: () => null,
            ),
            routerConfig: router,
          );
        },
      ),
    );
  }
}
