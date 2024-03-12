import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_model.freezed.dart';
part '{{name.snakeCase()}}_model.g.dart';

@freezed
class {{name.pascalCase()}} with _${{name.pascalCase()}} {
  const factory {{name.pascalCase()}}({
    String? id,
    String? name,
    int? age,
  }) = _{{name.pascalCase()}};

  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}FromJson(json);
  factory {{name.pascalCase()}}.fromString(String? str) => str == null || str.isEmpty
      ? const {{name.pascalCase()}}()
      : {{name.pascalCase()}}.fromJson(json.decode(str) as Map<String, dynamic>);
}
