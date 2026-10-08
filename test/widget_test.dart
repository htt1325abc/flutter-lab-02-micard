import 'package:flutter_test/flutter_test.dart';

import 'package:lab02_micard/main.dart';

void main() {
  testWidgets('hiển thị đầy đủ thông tin danh thiếp', (tester) async {
    await tester.pumpWidget(const MiCardApp());

    expect(find.text(fullName), findsOneWidget);
    expect(find.text(role), findsOneWidget);
    expect(find.text(phone), findsOneWidget);
    expect(find.text(email), findsOneWidget);
  });
}
