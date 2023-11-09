import 'package:flutter_test/flutter_test.dart';

void main() {


  testWidgets(
    'Test for Widget {{fileName.pascalCase()}}',
    (WidgetTester tester) async {
      // SETUP: Initialize callback variables, etc.
      // String? selectedItem;
    
      // Widget
      final testWidget =  {{fileName.pascalCase()}}();
        
    
      screenSizeTester(
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
