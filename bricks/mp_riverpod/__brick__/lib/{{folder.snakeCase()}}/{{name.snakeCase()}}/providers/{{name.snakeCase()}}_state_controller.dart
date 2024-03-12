import 'package:riverpod_annotation/riverpod_annotation.dart';

part '{{name.snakeCase()}}_state_controller.g.dart';

@riverpod
class {{name.pascalCase()}}StateController extends _${{name.pascalCase()}}StateController {
  @override
  int build() => 1;

  int get counter => state;
  set counter(int step) {
    state = step;
  }
}
