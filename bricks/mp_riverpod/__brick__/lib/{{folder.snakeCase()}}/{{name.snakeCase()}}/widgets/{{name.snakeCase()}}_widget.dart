import 'package:app/core/constants/sizes.dart';
import 'package:app/core/theme/buildcontext_extension.dart';
import 'package:app/core/widgets/mp_button.dart';
import 'package:app/core/widgets/utils.dart';
import 'package:app/features/{{name.snakeCase()}}/providers/{{name.snakeCase()}}_data_controller.dart';
import 'package:app/features/{{name.snakeCase()}}/providers/{{name.snakeCase()}}_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class {{name.pascalCase()}}Widget extends ConsumerWidget {
  const {{name.pascalCase()}}Widget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch({{name.camelCase()}}DataControllerProvider);
    final state = ref.watch({{name.camelCase()}}StateControllerProvider);
    
    if (data.hasError) {
      return Text(data.error.toString());
    }

    if (data.isLoading) {
      return const CircularProgressIndicator();
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p16),
        child: Column(
          children: [
            Text(
              data.value ?? 'N/A',
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium?.apply(
                color: context.colorScheme.onSurface,
              ),
            ),
            gapH16,
            Text(
              'State: $state',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium?.apply(
                color: context.colorScheme.onSurface,
              ),
            ),
            gapH16,
            MpButton(
              label: 'Increment state',
              onPress: () {
                ref.read({{name.camelCase()}}StateControllerProvider.notifier).counter++;
              },
            ),
          ],
        ),
      ),
    );
  }
}
