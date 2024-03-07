import 'package:app/core/providers/dio_provider.dart';
import 'package:app/features/{{name.snakeCase()}}/repository/{{name.snakeCase()}}_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '{{name.snakeCase()}}_repository_impl.g.dart';

class {{name.pascalCase()}}RepositoryImpl extends {{name.pascalCase()}}Repository {
  {{name.pascalCase()}}RepositoryImpl({required this.dio});
  final Dio dio;

  // TODO: Replace with your implementation that probably fetch data from the API

  Future<String> getData() async {
    return 'Hello from {{name.pascalCase()}}RepositoryImpl';
  }

}

@riverpod
{{name.pascalCase()}}Repository {{name.camelCase()}}Repository({{name.pascalCase()}}RepositoryRef ref) =>
    {{name.pascalCase()}}RepositoryImpl(dio: ref.watch(dioProvider));
