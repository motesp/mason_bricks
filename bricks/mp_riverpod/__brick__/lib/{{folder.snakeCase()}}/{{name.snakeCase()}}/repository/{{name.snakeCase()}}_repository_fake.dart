import '{{name.snakeCase()}}_repository.dart';

class {{name.pascalCase()}}RepositoryFake extends {{name.pascalCase()}}Repository {
  
  // TODO: Replace with your fake methods

  @override
  Future<String> getData() => Future.value('');
}
