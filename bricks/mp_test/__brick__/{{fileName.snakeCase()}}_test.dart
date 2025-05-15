import 'package:app/{{{relativeFilePath}}}';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils/default_provider_scope_widget.dart';
import '../../../utils/font_loader.dart';
import '../../../utils/screen_size_tester.dart';

void main() {
  setUpAll(() async {
    //autoUpdateGoldenFiles = true;
    await loadTestFonts();
  });

  testWidgets(
    'Test for Widget {{fileName.pascalCase()}}',
    (WidgetTester tester) async {
      // SETUP: Initialize callback variables, etc.
      // String? selectedItem;
    
      // Widget
      final testWidget = DefaultProviderScopeWidget(child: {{fileName.pascalCase()}}());
            
      await screenSizeTester(
        tester,
        testWidget,
        action: () async {
          // // FIND
          // expect(find.text('Test Title'), findsOneWidget);
          // expect(find.text('Test Subtitle'), findsOneWidget);

          // //ACT
          // await tester.tap(find.byType({{fileName.pascalCase()}}));
          // await tester.pump();

          //  // ASSERT
          // expect(selectedItem, 'Test Value');

          // // RESET
          // selectedItem = null;
        },
      );
    },
  );

  // Cleanup after tests are done
  tearDown(() {});
}
