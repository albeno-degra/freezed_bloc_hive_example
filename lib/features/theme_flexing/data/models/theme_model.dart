import 'package:freezed_bloc_example/app/common/data/hive/hive_types.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'theme_model.g.dart';

enum ThemeModeType { light, dark }

@HiveType(typeId: HiveTypes.themeId)
class ThemeModel {
  const ThemeModel({required this.themeMode});
  @HiveField(0, defaultValue: ThemeModeType.light)
  final ThemeModeType themeMode;
}

class ThemeModeTypeAdapter extends TypeAdapter<ThemeModeType> {
  @override
  final typeId = 1;

  @override
  ThemeModeType read(BinaryReader reader) {
    final value = reader.readByte();
    return ThemeModeType.values[value];
  }

  @override
  void write(BinaryWriter writer, ThemeModeType obj) {
    writer.writeByte(obj.index);
  }
}
