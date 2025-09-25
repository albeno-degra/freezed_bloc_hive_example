part of 'routes.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData with _$HomeRoute {
  const HomeRoute() : super();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage(
      title: '@freezed with flutter_bloc and Hive example',
    );
  }
}
