import 'package:flutter_test/flutter_test.dart';
import 'package:fridequeast_mobile/main.dart';

void main() {
  testWidgets('shows the FridgeQuest welcome screen', (tester) async {
    await tester.pumpWidget(const FridgeQuestApp());

    expect(find.text('FridgeQuest'), findsOneWidget);
    expect(find.text('Your food has a story.'), findsOneWidget);
  });
}
