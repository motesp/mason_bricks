import 'package:app/core/theme/buildcontext_extension.dart';
import 'package:app/features/{{name.snakeCase()}}/widgets/{{name.snakeCase()}}_widget.dart';
import 'package:flutter/material.dart';

class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: context.colorScheme.background,
          title: const Text('{{name.pascalCase()}}'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: const SafeArea(
          child: {{name.pascalCase()}}Widget(),
        ),
      );
  }
}

/*

TODO:

Requirements
------------

* Run: dart run build_runner watch --delete-conflicting-outputs --verbose

Optional
--------

* Add {{name.pascalCase()}}Widget to main_dashbook.dart
* Add a static string in route_names.dart:

    static const String {{name.pascalCase()}} = '{{name.snakeCase()}}';

* Add a route in app.dart or corresponding route-file:

    GoRoute(
      path: '/{{name.snakeCase()}}',
      name: AppRoutes.{{name.pascalCase()}},
      pageBuilder: (context, state) => const MaterialPage(
        child: {{name.pascalCase()}}View(),
      ),
    ),

* Add code for navigating to the view, for example in debug_bottomsheet.dart:

    ListTile(
      leading: const Icon(Icons.agriculture),
      title: const Text('{{name.pascalCase()}}'),
      onTap: () => {
        context.pushNamed(AppRoutes.{{name.pascalCase()}}),
      },
    ),

*/
