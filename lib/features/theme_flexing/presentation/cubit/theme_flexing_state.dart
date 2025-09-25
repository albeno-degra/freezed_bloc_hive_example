part of 'theme_flexing_cubit.dart';

@freezed
class ThemeFlexingState with _$ThemeFlexingState {
  const ThemeFlexingState._();
  const factory ThemeFlexingState.initial() = _Initial;
  const factory ThemeFlexingState.light({ThemeData? themeData}) = _Light;
  const factory ThemeFlexingState.dark({required ThemeData? themeData}) = _Dark;

  bool? get isLight => maybeWhen(
    light: (_) => true,
    dark: (_) => false,
    orElse: () => null,
  );
}
