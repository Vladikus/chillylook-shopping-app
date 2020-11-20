import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chilly_look_shopping/widgets/app_drawer.dart';
import 'package:mockito/mockito.dart';

// import 'package:flutter_driver/flutter_driver.dart';
// import 'package:flutter_driver/driver_extension.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

final scaffoldKey = GlobalKey<ScaffoldState>();
void main() {
  testWidgets('Opening Drawer', (WidgetTester tester) async {
    // final scaffoldKey = GlobalKey<ScaffoldState>();
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
      key: scaffoldKey,
      drawer: AppDrawer(),
    )));

    scaffoldKey.currentState.openDrawer();
    await tester.pump();

    expect(find.byType(AppDrawer), findsOneWidget);
  });

  testWidgets('4 menus available', (WidgetTester tester) async {
    // final scaffoldKey = GlobalKey<ScaffoldState>();
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
      key: scaffoldKey,
      drawer: AppDrawer(),
    )));

    scaffoldKey.currentState.openDrawer();
    await tester.pump();
    expect(find.byType(ListTile), findsNWidgets(4));
    // expect(find.text('Shop'), findsOneWidget);
    // expect(find.text('Orders'), findsOneWidget);
    // expect(find.text('Manage Products'), findsOneWidget);
    // expect(find.text('Logout'), findsOneWidget);
  });

  testWidgets('Navigates to Products Overview page when Shop menu tapped',
      (WidgetTester tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final mockObserver = MockNavigatorObserver();
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        drawer: AppDrawer(),
      ),
      navigatorObservers: [mockObserver],
    ));
    scaffoldKey.currentState.openDrawer();
    await tester.pump();

    final shopMenu = find.byType(ListTile).at(0);

    final ordersMenu = find.byType(ListTile).at(1);
    expect(shopMenu, findsOneWidget);
    await tester.tap(shopMenu);
    // expect(ordersMenu, findsOneWidget);
    // await tester.tap(ordersMenu);
    scaffoldKey.currentState.openEndDrawer();
    expect(scaffoldKey.currentState.isDrawerOpen, false);
    await tester.pumpAndSettle(); //

    verify(mockObserver.didPush(any, any)); // Verify that a push event happened
    // verify(mockObserver.didPush(captureAny, any)).captured.single;
    // verify(mockObserver.didReplace(oldRoute: any, newRoute: any));

    // expect(find.byType(ProductsOverviewScreen), findsOneWidget);

    // var detailsFinder = find.byType(ProductsOverviewScreen);
    // var strictMatch =
    //     find.descendant(of: detailsFinder, matching: find.text('Shopping'));
    // expect(strictMatch, findsOneWidget);
  });
}
