import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_bloc_example/app/common/domain/use_case.dart';
import 'package:freezed_bloc_example/features/theme_flexing/data/models/theme_model.dart';
import 'package:freezed_bloc_example/features/theme_flexing/domain/repositories/theme_repo.dart';

part 'set_theme.freezed.dart';

class SetTheme extends UseCase<void, SetThemeParams> {
  SetTheme({required ThemeRepo source}) : _source = source;

  final ThemeRepo _source;

  @override
  Future<void> call(SetThemeParams params) => _source.saveTheme(
    params.themeMode == ThemeModeType.dark
        ? const ThemeModel(themeMode: ThemeModeType.dark)
        : const ThemeModel(themeMode: ThemeModeType.light),
  );
}

@freezed
class SetThemeParams with _$SetThemeParams {
  const factory SetThemeParams({required ThemeModeType themeMode}) =
      _SetThemeParams;
}
