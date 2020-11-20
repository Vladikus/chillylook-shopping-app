import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chilly_look_shopping/screens/auth_screen.dart';

void main() {
  testWidgets('Log in Page has the main label', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: AuthScreen(),));

    final textToFind = 'ChillyLook';
    expect(find.text(textToFind), findsOneWidget);
  });

  testWidgets('Signin/Sign Up page contains two input fields and two buttons ',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: AuthCard(),
    ));
    final inputFieldsCount = find.byType(TextFormField);
    expect(inputFieldsCount, findsNWidgets(2));

    final raisedButtonCount = find.byType(RaisedButton);
    final flatButtonCount = find.byType(FlatButton);

    expect(raisedButtonCount, findsNWidgets(1));
    expect(flatButtonCount, findsNWidgets(1));
  });
}
