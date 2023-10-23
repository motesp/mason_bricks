import 'package:flutter_test/flutter_test.dart';

void main() {
  // SETUP: Initialize callback variables, etc.
  // String? selectedItem;

  // Widget
  // no lint here Warning is this line changed you have parse error
  //  final testWidget = {{fileName.pascalCase()}}(); parser needs oneline!
  final testWidget = {{fileName.pascalCase()}}();

  testWidgets(
    'Test for Widget {{fileName.pascalCase()}}',
    (WidgetTester tester) async {
      screenSizeTester(
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
