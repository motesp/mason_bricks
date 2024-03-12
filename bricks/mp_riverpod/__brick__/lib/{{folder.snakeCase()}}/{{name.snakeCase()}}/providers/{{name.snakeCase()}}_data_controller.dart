import 'package:app/features/{{name.snakeCase()}}/repository/{{name.snakeCase()}}_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '{{name.snakeCase()}}_data_controller.g.dart';

@riverpod
class {{name.pascalCase()}}DataController extends _${{name.pascalCase()}}DataController {
  @override
  Future<String> build() async {
    final provider = ref.read({{name.camelCase()}}RepositoryProvider);
    return provider.getData();
  }
}
