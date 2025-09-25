import 'package:freezed_bloc_example/app/common/data/db_client.dart';
import 'package:freezed_bloc_example/app/common/data/hive/hive_client.dart';
import 'package:freezed_bloc_example/features/theme_flexing/data/datasource/local.dart';
import 'package:freezed_bloc_example/features/theme_flexing/data/repositories/theme_repo_impl.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/repositories/theme_repo.dart';
import 'package:get_it/get_it.dart';

Future<void> setupGetIt() async {
  final getIt = GetIt.instance;
  final dbClient = await _initDbClient();
  _setupThemeFeature(getIt, dbClient);
}

Future<DbClient> _initDbClient() async {
  final hiveClient = HiveClient();
  await hiveClient.init();
  return hiveClient;
}

void _setupThemeFeature(GetIt getIt, DbClient dbClient) {
  final themeRepo = ThemeRepoImpl(
    local: ThemeLocalDataImpl(dbClient: dbClient),
  );
  getIt.registerLazySingleton<ThemeRepo>(() => themeRepo);
}
