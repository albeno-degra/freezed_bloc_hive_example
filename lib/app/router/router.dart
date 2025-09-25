import 'package:freezed_bloc_example/app/router/routes/routes.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: $appRoutes,
  initialLocation: const HomeRoute().location,
);
